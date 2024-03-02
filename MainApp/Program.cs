using Domain.Models;
using Infrastructure.Services;

StudentService studentService = new StudentService();
// foreach (var item in studentService.GetStudentsByGroup(1))
// {
//     System.Console.WriteLine("Id: " + item.Id);
//     System.Console.WriteLine("FullName: " + item.FullName);
//     System.Console.WriteLine("Age: " + item.Age);
//     System.Console.WriteLine("------------------------------------------------");
// }


// var groupStudents = studentService.GetGroups();
// foreach (var item in groupStudents)
// {
//     System.Console.WriteLine(item.Group.Name);
//     item.Listtudents.ForEach(p => Console.Write($"{p.Id} {p.FullName}, {p.Age} "));
//     Console.WriteLine();
//     Console.WriteLine(new string('-', 50));
// }

GroupService groupService = new GroupService();

// var courseGroups = groupService.GetCourses;
// foreach (var item in courseGroups())
// {
//     System.Console.WriteLine(item.Course.CourseName);
//     item.Groups.ForEach(p => Console.Write($"{p.Id} {p.Name} "));
// }

studentService.DeleteStudent(1);


