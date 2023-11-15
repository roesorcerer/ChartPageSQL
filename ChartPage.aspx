<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChartPage.aspx.cs" Inherits="COP2664CWinter2021.ChartPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="374px" Palette="SeaGreen" Width="533px">
        <Series>
            <asp:Series ChartType="Bar" Name="Series1" XValueMember="Color" YValueMembers="Total">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:COP2664CWinter2021ConnectionString %>" SelectCommand="SELECT [Color], count( [Color] ) as Total
FROM [Mod6_SalesDetail]
GROUP BY [Color]
ORDER BY Total DESC
"></asp:SqlDataSource>
    <p>
    </p>
</asp:Content>
