using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeSpiesCSharp
{
    public partial class Spies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                previousCal.SelectedDate = DateTime.Now.Date;
                newCal.SelectedDate = DateTime.Now.AddDays(value: 14);

                endCal.SelectedDate = DateTime.Now.AddDays(value: 21);
            }
            
                
            
        }

        protected void assignSpyButton_Click(object sender, EventArgs e)
        {
            //spies cost $500 a day
            TimeSpan totalDurationOfAssignment = newCal.SelectedDate.Subtract(previousCal.SelectedDate);
            double totalCost = totalDurationOfAssignment.TotalDays * 500;

            //If assingment is greater than 21 days add $1000

            if(totalDurationOfAssignment.TotalDays > 21)
            {
                totalCost += 1000.0; 
            }

            //Assignment authorized

            resultLabel.Text = String.Format(format: "Assignment of {0} to assigment code name: {1} has been authorized. Budget total: {2:C}", 
                arg0: assignmentNameTB.Text, 
                arg1: codeNameTB.Text, 
                arg2: totalCost);
                                            
                                            

            

            
            //minimum 14 days between assignments

            TimeSpan minimumDaysBetweenAssignments = newCal.SelectedDate.Subtract(previousCal.SelectedDate);
            if (minimumDaysBetweenAssignments.TotalDays < 14)
            {
                resultLabel.Text = "Error: You must allow at least two weeks between previous assignment and new assignment,";

                //if the error text shows, change dates to the minimum required

                DateTime earliestNewAssigment = newCal.SelectedDate.AddDays(value: 14);

                newCal.SelectedDate = earliestNewAssigment;
                newCal.VisibleDate = earliestNewAssigment;
                      
            }
        }
    }
}