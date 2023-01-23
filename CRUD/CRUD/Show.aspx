<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="CRUD.Show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 26px;
        }

        .auto-style3 {
            width: 340px;
        }

        .auto-style4 {
            height: 26px;
            width: 340px;
        }
    </style>
</head>
<body>
    <header>


        <ul class="nav justify-content-center" style="background-color: whitesmoke">

            <li class="nav-item">
                <a class="nav-link" href="Task.aspx">Admin</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Show.aspx">Show</a>
            </li>

        </ul>
        <br />
    </header>
    <form id="form1" runat="server">
        <div class="container">
            <div style="display:flex;flex-direction:row;justify-content:space-around;">
            <div class="card text-bg-primary mb-3" style="max-width: 18rem;">
                <div class="card-header">Number of customers :</div>
                <div class="card-body">

                    <p class="card-text">
                        <asp:Label ID="lblNum" runat="server"></asp:Label></p>
                </div>
            </div>
            <div class="card text-bg-primary mb-3" style="max-width: 18rem;">
                <div class="card-header">Average of age :</div>
                <div class="card-body">
                    <p class="card-text">
                        <asp:Label ID="lblAvg" runat="server"></asp:Label></p>
                </div>
            </div>
            <div class="card text-bg-primary mb-3" style="max-width: 18rem;">
                <div class="card-header">Maximum of age :</div>
                <div class="card-body">
                    <p class="card-text">
                        <asp:Label ID="lblMax" runat="server"></asp:Label></p>
                </div>
            </div>
          
                </div>
            <hr />
            <h1 style="color:blue">All Users </h1>
              <table class="auto-style1">

                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtSearch" runat="server"> </asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" class="btn btn-secondary" />
                    </td>
                </tr>
            </table>
            <asp:GridView ID="allUser" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">

                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                <Columns>
                    <asp:BoundField DataField="customerName" HeaderText="Customer Name" />
                    <asp:BoundField DataField="Age" HeaderText="Age" />
                    <asp:BoundField DataField="cityName" HeaderText="City" />
                    <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo">
                        <ControlStyle Height="100px" Width="100px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Phone" HeaderText="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                </Columns>
                
                
            </asp:GridView>
            <br />
            <br />
        </div>
      
    </form>
</body>
</html>
