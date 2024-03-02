using Domain.Models;

namespace Infrastructure.Services;

using Dapper;

using Infrastructure.DataContext;

public class GroupService
{
    private DataContext dataContext = new DataContext();
    public List<CourseGroups> GetCourses()
    {
        var sql0 = "select id from Groups;";
        var listId = dataContext.Connection().Query<int>(sql0).ToList();
        var sql1 = @"
               select * from Courses where Id = @id;
               select * from Groups where CourceId = @id;
                ";
        var courseGroups = new List<CourseGroups>();
        foreach (var id in listId)
        {
            using (var multiple = dataContext.Connection().QueryMultiple(sql1, new { Id = id }))
            {
                var course = new CourseGroups();
                course.Course = multiple.ReadFirst<Courses>();
                course.Groups = multiple.Read<Groups>().ToList();
                courseGroups.Add(course);
            }
        }

        return courseGroups;
    }
}

