using JHA.Pages.DataClasses;
using JHA.Pages.DB;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using MySql.Data.MySqlClient;

namespace JHA.Pages
{
    public class IndexModel : PageModel
    {
        [BindProperty]
        public Data newHazard { get; set; }

        public List<Data> hazards { get; set; }

        public IndexModel()
        {
            hazards = new List<Data>();
            newHazard = new Data();
        }

        public IActionResult OnGet()
        {
            // Query and function call to request data from hazard database
            string queryString = "SELECT * FROM hazard";
            MySqlDataReader data = DBClass.dataQuery(queryString);

            // Takes read data and adds to hazards arraylist
            while (data.Read())
            {
                hazards.Add(new Data
                {
                    ID = data.GetInt32("id"),
                    Author = data.GetString("author"),
                    Name = data.GetString("name"),
                    Steps = data.GetString("steps"),
                    Consequences = data.GetString("consequences"),
                    Controls = data.GetString("controls"),
                    Training = data.GetString("training"),
                    Equipment = data.GetString("equipment")
                });
            }

            // Close the connection and display the page
            DBClass.connection.Close();
            return Page();
        }

        public IActionResult OnPostCreate()
        {
            // Query to add new task and corresponding data into database
            string queryString = $"INSERT INTO hazard (author, name, steps, consequences, controls, training, equipment) " +
                                 $"VALUES ('{newHazard.Author}', '{newHazard.Name}', '{newHazard.Steps}', '{newHazard.Consequences}', " +
                                 $"'{newHazard.Controls}', '{newHazard.Training}', '{newHazard.Equipment}')";

            // Execute the INSERT query
            DBClass.dataInsert(queryString);

            // Close the connection and display the page with updated information
            DBClass.connection.Close();
            return RedirectToPage("./Index");
        }

        public IActionResult OnPostEdit()
        {
            // Query to update all data left in the text fields within the editing modal
            // *Note* that if the user does not change anything it will overwrite the data with the same information
            string queryString = $"UPDATE hazard SET author = '{newHazard.Author}', name = '{newHazard.Name}', steps = '{newHazard.Steps}', consequences = '{newHazard.Consequences}'," +
                                 $" controls = '{newHazard.Controls}', training = '{newHazard.Training}', " +
                                 $" equipment = '{newHazard.Equipment}' WHERE id = {newHazard.ID}";

            // Execute the UPDATE query
            DBClass.dataInsert(queryString);

            // Close the connection and display the page with updated information
            DBClass.connection.Close();
            return RedirectToPage("./Index");
        }

        public IActionResult OnPostRemove()
        {
            // Query to remove the data associated with the task name selected, by returning the ID number tied to the task name
            string queryString = $"DELETE FROM hazard WHERE id = {newHazard.ID}";

            // Execute the UPDATE query
            DBClass.dataInsert(queryString);

            // Close the connection and display the page with updated information
            DBClass.connection.Close();
            return RedirectToPage("./Index");
        }
    }
}