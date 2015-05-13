using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2007_Lab01
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblConfirmSkills.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblConfirmation.Visible = true;
            lblConfimStudentName.Text = "Student Name: " + txtStudentName.Text;
            lblConfimPassword.Text = "Password: " + txtPassword.Text;
            lblConfirmAddress.Text = "Address: " + txtAddress.Text;
            lblConfirmEducation.Text = "Education Level: " + rdoEducation.SelectedItem.Text;

            // Check if checkbox is checked
            if (chkLaptop.Checked)
            {
                lblConfirmLaptop.Text = "I have a laptop";
            }
            else if (!chkLaptop.Checked)
            {
                lblConfirmLaptop.Text = "I do not have a laptop";
            }

            // Loop through skills list, add each one that is checked to label
            lblConfirmSkills.Text = "Skills: ";
            foreach (ListItem skills in cblSkillsList.Items)
            {
                if (skills.Selected) 
                {
                    lblConfirmSkills.Text += skills.Text + " ";
                }
            }

            lblConfirmProvince.Text = "Province: " + ddlProv.SelectedItem.Text;
        }
    }
}