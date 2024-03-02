namespace Infrastructure.Services;
using Dapper;
using System.Collections.Generic;
using Domain.Models;

using Infrastructure.DataContext;
public class CourseService
{
    private DataContext dataContext = new DataContext();
    public void AddCourse(Courses course)
    {
        dataContext.Connection().Execute("insert into Courses(CourseName,Fee)values(@coursename,@fee)",course);
    }
}
