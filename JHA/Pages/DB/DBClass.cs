using MySql.Data.MySqlClient;

namespace JHA.Pages.DB
{
    public class DBClass
    {
        // Connection Object at the class level
        public static MySqlConnection connection = new MySqlConnection();

        public static MySqlDataReader dataQuery(string queryString) 
        {
            string connstring = "server=localhost;uid=root;pwd=password;database=jha";
            MySqlConnection connection = new MySqlConnection();
            connection.ConnectionString = connstring;
            connection.Open();
            MySqlCommand command = new MySqlCommand(queryString, connection);
            MySqlDataReader reader = command.ExecuteReader();
            return reader;
        }

        public static void dataInsert(string queryString)
        {
            string connstring = "server=localhost;uid=root;pwd=password;database=jha";
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
