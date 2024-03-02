using Domain.Models;

namespace Infrastructure.Services;

using Dapper;

using Infrastructure.DataContext;

public class StudentService
{
    private DataContext dataContext = new DataContext();
    public void AddStudent(Students student)
    {
        dataContext.Connection().Execute("insert into Students(FullName,Age,GroupId)values(@fullname,@age,@groupid)",student);
    }

    public void DeleteStudent(int id)
    {
        dataContext.Connection().Execute("delete from Students where Id = @id", new {Id = id});
    }

    public List<Students> GetStudents()
    {
        return dataContext.Connection().Query<Students>("select * from Students").ToList();
    }
    public List<Students> GetStudentsByGroup(int groupid)
    {
        return dataContext.Connection().Query<Students>("select * from Students where GroupId = @groupid",new {GroupId = groupid}).ToList();
    }
    public List<GroupStudent> GetGroups()
    {
        var sql0 = "select id from Groups;";
        var listId = dataContext.Connection().Query<int>(sql0).ToList();
        var sql1 = @"
               select * from Groups where Id = @id;
               select * from Students where GroupId = @id;
                ";
        var groupStudents = new List<GroupStudent>();
        foreach (var id in listId)
        {
            using (var multiple = dataContext.Connection().QueryMultiple(sql1, new { Id = id }))
            {
                var group = new GroupStudent();
                group.Group = multiple.ReadFirst<Groups>();
                group.Listtudents = multiple.Read<Students>().ToList();
                groupStudents.Add(group);
            }
        }

        return groupStudents;
    }
    public List<GroupStudent> GetGroupsWhereTheyLearnd()
    {
        var sql0 = "select id from Groups;";
        var listId = dataContext.Connection().Query<int>(sql0).ToList();
        var sql1 = @"
               select * from Groups where Id = @id;
               select * from Students where GroupId = @id;
                ";
        var groupStudents = new List<GroupStudent>();
        foreach (var id in listId)
        {
            using (var multiple = dataContext.Connection().QueryMultiple(sql1, new { Id = id }))
            {
                var group = new GroupStudent();
                group.Listtudents = multiple.Read<Students>().ToList();
                group.Group = multiple.ReadFirst<Groups>();
                groupStudents.Add(group);
            }
        }

        return groupStudents;
    }
    public void UpdateStudent(Students student)
    {
        dataContext.Connection().Execute("update Students set FullName = @fullname,Age = @age,GroupId = @groupid where Id = @id", student);
    }
    
}
