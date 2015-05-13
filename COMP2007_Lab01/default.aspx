<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="COMP2007_Lab01._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="inputForm" runat="server">
        <fieldset>
            <legend>Student Information</legend>
            <div>
                <asp:Label ID="lblStudentName" runat="server" Text="Student Name: "></asp:Label>
                <asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblAddress" runat="server" Text="Full Address: "></asp:Label>
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblEducation" runat="server" Text="Education Level: "></asp:Label>
                <asp:RadioButtonList ID="rdoEducation" runat="server">
                    <asp:ListItem Text="High School"></asp:ListItem>
                    <asp:ListItem Text="College"></asp:ListItem>
                    <asp:ListItem Text="Graduate"></asp:ListItem>
                    <asp:ListItem Text="Other"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <asp:Label ID="lblLaptop" runat="server" Text="Check if true: "></asp:Label>
                <asp:CheckBox ID="chkLaptop" runat="server" Text="Yes, I have a laptop" />
            </div>
            <div>
                <asp:Label ID="lblSkills" runat="server" Text="Skills (Check all that apply): "></asp:Label>
                <asp:CheckBoxList ID="cblSkillsList" runat="server">
                    <asp:ListItem Text="HTML"></asp:ListItem>
                    <asp:ListItem Text="PHP"></asp:ListItem>
                    <asp:ListItem Text="CSS"></asp:ListItem>
                    <asp:ListItem Text="C#"></asp:ListItem>
                    <asp:ListItem Text="Java"></asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <div>
                <asp:Label ID="lblProv" runat="server" Text="Province: "></asp:Label>
                <asp:DropDownList ID="ddlProv" runat="server">
                    <asp:ListItem Value="1" Text="AB"></asp:ListItem>
                    <asp:ListItem Value="2" Text="BC"></asp:ListItem>
                    <asp:ListItem Value="3" Text="ON"></asp:ListItem>
                    <asp:ListItem Value="4" Text="QC"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </div>
        </fieldset>
    </form>

    <div>
        <asp:Label ID="lblConfirmation" runat="server" Text="Confirmation" Visible="false" Font-Size="Larger"></asp:Label>
        <asp:Label ID="lblConfimStudentName" runat="server"></asp:Label>
        <asp:Label ID="lblConfimPassword" runat="server"></asp:Label>
        <asp:Label ID="lblConfirmAddress" runat="server"></asp:Label>
        <asp:Label ID="lblConfirmEducation" runat="server"></asp:Label>
        <asp:Label ID="lblConfirmLaptop" runat="server"></asp:Label>
        <asp:Label ID="lblConfirmSkills" runat="server"></asp:Label>
        <asp:Label ID="lblConfirmProvince" runat="server"></asp:Label>
    </div>
</body>
</html>
