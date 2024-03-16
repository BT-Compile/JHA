using MySql.Data.MySqlClient;

namespace JHA.Pages.DB
{
    public class DBClass
    {
        // Connection Object at the class level
        public static MySqlConnection connection = new MySqlConnection();
        public static string connstring = "server=localhost;uid=root;pwd=password;database=jha";

        // Method for reading data returned from a query
        public static MySqlDataReader dataQuery(string queryString) 
        {
            MySqlConnection connection = new MySqlConnection();
            connection.ConnectionString = connstring;
            connection.Open();
            MySqlCommand command = new MySqlCommand(queryString, connection);
            MySqlDataReader reader = command.ExecuteReader();
            return reader;
        }

        // Method for sending a command to the server
        public static void dataInsert(string queryString)
        {
            MySqlConnection connection = new MySqlConnection(connstring);
            try
            {
                connection.Open();
                MySqlCommand command = new MySqlCommand(queryString, connection);
                command.ExecuteNonQuery();
            }
            finally
            {
                connection.Close();
            }
        }
    }
}
