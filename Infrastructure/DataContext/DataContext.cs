namespace Infrastructure.DataContext;
using Npgsql;
public class DataContext
{
    private readonly string _connectionString =
    "Host=localhost;Port=5432;Database=.NetExam;User Id=postgres;Password=20080820;";

    public NpgsqlConnection Connection()
    {
        return new NpgsqlConnection(_connectionString);
    }
}
