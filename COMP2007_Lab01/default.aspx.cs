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

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblConfirmation.Visible = true;
            lblConfimStudentName.Text = txtStudentName.Text;
            lblConfimPassword.Text = txtPassword.Text;
            lblConfirmAddress.Text = txtAddress.Text;
            lblConfirmEducation.Text = rdoEducation.SelectedItem.Text;
            if (chkLaptop.Checked)
            {
                lblConfirmLaptop.Text = "I have a laptop";
            }
            else if (!chkLaptop.Checked)
            {
                lblConfirmLaptop.Text = "I do not have a laptop";
            }
            foreach (ListItem skills in cblSkillsList.Items)
            {
                if (skills.Selected) 
                {
                    lblConfirmSkills.Text = skills.Text + " ";
                }
            }

            lblConfirmProvince.Text = ddlProv.SelectedItem.Text;
        }
    }
}