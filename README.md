<h3 align="center">Benjamin Trang 2024 Innovative Coding Challenge</h3>

  <p align="center">
    This is a readme to help the people evaluting my technical submission get started.
    <br />
</div>

<!-- ABOUT THE PROJECT -->
## About The Project

<img src="./JHA/wwwroot/images/readme/display.PNG" />

Hello, hope you are doing well today! This is my submission for the technical challenge presented to me from Innovative Refrigeration Systems.
I was given five days to complete this assessment and it was a fun and challenging scenario to complete. This web application was written in C# in ASP.NET Core
using CSS library Bootstrap and jQuery.

<br />
While I did enjoy working on the project there is a few edge cases and issues I came across that I could not get to with my short time frame. 
Those issues will be outlined below as well as any relevant information that needs to be passed along. 


<b>Bugs and Issues:<b>
* If the user while creating a new task adds line breaks within the text area the information will not display on the right column,
  this is due to how "particular" javascript and HTML interacts with ASP.NET. The data still is created within the database, it just does not show in the application
* Originally, I had a script that would allow the data to populate and display all the textfields within the editing modal upon selecting a task, this ended up only allowing the ability to
  edit the first entry. For the sake of function over form, I reversed it to empty text boxes so that it works flawlessly.


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

<a href="https://visualstudio.microsoft.com/downloads/">Visual Studio 2022 Community Edition</a>
<br />
<a href="https://dev.mysql.com/downloads/">MySql</a>

### Installation

_The instructions below will help you get fully set up._

1. Download Microsoft Visual Studio and install "ASP.NET and web developement", ".NET desktop developement", and "Data storage and processing" options.
2. Download and Install MySqlServer when prompted for a password for your localhost type "password".
3. Download the entire zipped file from GitHub.
   <br />
   <br />
   <img src=./JHA/wwwroot/images/readme/download1.PNG />
   <br />
   <br />
4. Open MySqlServer open the local instance and enter the password you created for root in setup.
   <br />
   <br />
   <img src=./JHA/wwwroot/images/readme/SQL1.PNG />
   <br />
   <br />
5. Once in your instance click on server on the toolbar at the top and click "Data Import".
6. In the Data Import screen click on "Import from self contained file" and then click on the three dots to locate the "jha_hazard.sql" file provided with the .zip.
   Then click start import, once it is complete, refresh the schema bar to check if it is correctly imported. If 'jha' appears the local host server is set up!
7. Then click on the jha.sln solution, this should open the codebase for inspection as well as allow you to run the application in the IDE.
8. Finally, click on the start button at the top to start the environment and you should be all set!
   <br />
   <br />
   <img src=./JHA/wwwroot/images/readme/start.PNG />
   <br />
   <br />
   
<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTACT -->
## Contact

Benjamin Trang - [LinkedIn](https://www.linkedin.com/in/benjamin-trang/) - Trangbenjamin@gmail.com

Project Link: [Link to the Repo](https://github.com/BT-Compile/JHA)

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

Thank you so much for the opportunity to do this project and interact with you all!
<br />
I look forward to hearing from you!

<p align="right">(<a href="#readme-top">back to top</a>)</p>
