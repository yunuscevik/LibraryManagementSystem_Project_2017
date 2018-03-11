<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="member_book.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 5px;
            height: 300px;
        }
        .style12
        {
            width: 524px;
            height: 300px;
        }
        .style13
        {
            height: 300px;
        }
        .style14
        {
            width: 1000px;
            height: 181px;
        }
        .scroll
        {
            width: 1000px;
            height: 194px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table cellpadding="0" cellspacing="0"
    style="width: 1000px; height: 421px; text-align: center; margin-bottom: 0px;" >
    <tr>

        <td style="text-align: center" class="style12">
            <b>
            <h1 style="text-decoration: underline">Choose Book</h1></b>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:Label ID="Label2" runat="server" Text="Book Id*:" Font-Bold="True" 
                Font-Size="20pt"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" 
                BorderColor="Black" Height="28px" style="margin-left: 0px" Width="143px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                ID="Button3" runat="server" 
                BackColor="#999999" BorderStyle="Ridge" Font-Bold="True" Font-Size="15pt" 
                Height="40px" style="margin-right: 5px; position: relative;" Text="Show" 
                Width="134px" onclick="Button3_Click" BorderColor="Black" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                ID="Button1" runat="server" Height="40px"  
                Text="Get Book" Width="134px" BorderColor="Black" Font-Bold="True" 
                BackColor="#999999" Font-Size="15pt" style="position: relative" 
                onclick="Button1_Click2" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td bgcolor="Black" class="style11">
            </td>

            <td class="style13">
            <b style="position: relative">
            <h1 style="text-decoration: underline">Receive Book</h1></b>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:Label ID="Label5" runat="server" Text="Book Id*:" Font-Bold="True" 
                Font-Size="20pt"></asp:Label>
            &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox5" runat="server" BorderColor="Black" 
                    style="margin-left: 0px" Height="28px" Width="143px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                    ID="Button4" runat="server" BackColor="#999999" BorderStyle="Ridge" 
                    Font-Bold="True" Font-Size="15pt" Height="40px" Text="Show" Width="134px" 
                    style="position: relative; top: 0px; left: 0px" onclick="Button4_Click" 
                    BorderColor="Black" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" 
                    runat="server" Height="40px"  
                Text="Deliver Book" Width="134px" BorderColor="Black" Font-Bold="True" 
                BackColor="#999999" Font-Size="15pt" Left-Margin = "20px" 
                    style="position: relative; top: 0px; left: 32px" onclick="Button2_Click"/>
                &nbsp;&nbsp;&nbsp;&nbsp;            
            </td>
      
    </tr>

</table>

<table>
    <style>
				div.scroll {
					/*background-color: #a8d0e8;*/
					
					width: 1000px;
					height: 200px;
					overflow: scroll;
					
				}
    </style>
    <tr>
        <td class="style14">
                <center>
                <asp:Panel ID="Panel1" runat="server" Height="200px" BackColor="White" 
                    BorderColor="Black" BorderStyle="Groove" Width="1000px" >
                    <center>
                    <div class="scroll" >
                        

                        <asp:GridView ID="GridView1" runat="server" Height="200px" Width="1000px" 
                            style="margin-left: 2px; margin-top: 0px" BackColor="#DEBA84" 
                            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                            CellSpacing="2">
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>
                        

                    </div>
                    </center>
                    </asp:Panel>
                </center>
        </td>
    </tr>
</table>
</asp:Content>

