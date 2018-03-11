<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="add_book.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 894px;
        }
    </style>
    <style>
				div.scroll {
					/*background-color: #a8d0e8;*/
					
					width: 997px;
					height: 295px;
					overflow: scroll;
            margin-left: 0px;
        }
        .style11
        {
            width: 894px;
            height: 500px;
        }
    .style12
    {
        width: 894px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table cellpadding="0" cellspacing="0"
    style="width: 1000px; height: 677px; text-align: center" >
    <tr>

        <td style="text-align: center" class="style11">


             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" 
                 runat="server" Height="45px" Width="249px" 
                 style="position: relative; top: 0px; left: 0px"></asp:TextBox>
             <asp:Button ID="Button4" runat="server" Height="45px" Text="Search Book" 
                 BackColor="#999999" BorderColor="Black" Font-Bold="True" 
                    Font-Size="15pt" onclick="Button4_Click" 
                 
                 
                 style="position: relative; top: 1px; left: 47px; width: 153px; height: 44px; margin-bottom: 0px;" 
                 Width="140px"/>
             <asp:Button ID="Button3" runat="server" Height="45px" Text="Delete Book" 
                    Width="140px" BackColor="#999999" BorderColor="Black" Font-Bold="True" 
                    Font-Size="15pt" onclick="Button3_Click" 
                 style="position: relative; top: 0px; left: 89px" />
             <br />
            <br />


            <asp:Label ID="LabelBookID" runat="server" Text="Book ID*:" Font-Bold="True" 
                Font-Size="20pt" Font-Strikeout="False" BorderStyle="None" 
                Font-Underline="False"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBoxBookID" runat="server" BorderColor="Black"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label3" runat="server" Text="Author Birthdate:" Font-Bold="True" 
                Font-Size="20pt"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Book Name*:" Font-Bold="True" 
                Font-Size="20pt" Font-Strikeout="False" BorderStyle="None" 
                Font-Underline="False"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             <asp:Label ID="Label4" runat="server" Text="Publish Name*:" Font-Bold="True" 
                Font-Size="20pt"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" 
                BorderColor="Black"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Author*:" Font-Bold="True" 
                Font-Size="20pt"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" BorderColor="Black"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label5" runat="server" Text="Publish Year:" Font-Bold="True" 
                Font-Size="20pt"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             <asp:TextBox 
                ID="TextBox5" runat="server" 
                BorderColor="Black"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:Label ID="Label8" runat="server" Text="Publish Address:" Font-Bold="True" 
                Font-Size="20pt" style="position: relative"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<asp:TextBox 
                ID="TextBox6" runat="server" Height="32px" TextMode="MultiLine" 
                Width="165px" BorderColor="Black" style="position: relative"></asp:TextBox>
            <br />
            <br />
             <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="20pt" 
                 Font-Strikeout="False" ForeColor="Black" style="position: relative" 
                 Text="Label" BorderStyle="Inset"></asp:Label>
            <br />
            &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="49px"  
                Text="Save Book" Width="140px" BorderColor="Black" Font-Bold="True" 
                BackColor="#999999" Font-Size="15pt" onclick="Button1_Click1" />
            &nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button2" runat="server" BackColor="#999999" BorderColor="Black" 
                Font-Bold="True" Font-Size="15pt" Height="49px" Text="Update Book" 
                 onclick="Button2_Click" 
                 style="position: relative; top: 0px; left: 26px; width: 136px" 
                 Width="140px" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <center>
                <asp:Panel ID="Panel1" runat="server" Height="300px" BackColor="White" 
                    BorderColor="Black" Width="1000px" align="left" >
                    <div class="scroll" >
                        

                        <asp:GridView ID="GridView1" runat="server" Height="298px" Width="1000px" 
                            BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" 
                            CellPadding="3" BorderStyle="None" CellSpacing="2">
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" 
                                HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>
                        

                    </div>
                    </asp:Panel>
                    </center>
            </td>


    </tr>
    <tr>

        <td style="text-align: center" class="style12">
            &nbsp;</td>


    </tr>
</table>

</asp:Content>

