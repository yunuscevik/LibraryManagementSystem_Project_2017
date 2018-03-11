<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="catalog_scanning.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
				div.scroll {
					/*background-color: #a8d0e8;*/
					
					width: 900px;
					height: 200px;
					overflow: scroll;
					
				}
    </style>
    <table style="width: 1000px; height: 500px" >
    <tr>
        <td align="center">
            <h1 style="height: 40px; width: 1000px">&nbsp;Catalog Scanning</h1>

         
            <h3 style="height: 19px; width: 1000px"><u>Enter the book title (or id) you want to search </u></h3>
            <h1 style="height: 43px; width: 1000px">
                <asp:TextBox ID="TextBox1" 
                    runat="server" Height="44px" Width="368px" BorderColor="Black"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" BackColor="#999999" 
                    BorderColor="#666666" Font-Bold="True" Font-Size="15pt" Height="42px" 
                    Text="Scan" Width="80px" onclick="Button2_Click" />
            </h1>
            <h1 style="height: 43px; width: 1000px">
                &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Large" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;
                </h1>
            <asp:Panel ID="Panel1" runat="server" Height="200px" Width="900px" 
                BorderWidth="3px" BackColor="White">
                <div class="scroll" >
                    <asp:GridView ID="GridView1" runat="server" Height="200px" Width="900px" 
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
        </td>
    </tr>
</table>
</asp:Content>

