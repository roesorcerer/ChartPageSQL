# README for ChartPage.aspx

## Introduction
This README provides an overview of the code and functionality implemented in the `ChartPage.aspx` file. The code presented here is an ASP.NET web page that displays a bar chart using data from a SQL database. The chart is rendered using the ASP.NET Chart control and is bound to a SQL data source.

## Code Description
The code in `ChartPage.aspx` is written in C# and uses ASP.NET Web Forms for building web applications. Below is a breakdown of the key components and their functionalities:

### Page Directive
```asp
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChartPage.aspx.cs" Inherits="COP2664CWinter2021.ChartPage" %>
```
- This directive specifies important information about the web page, including its code-behind file, class name, and master page for layout.

### Content Placeholder
```asp
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
```
- This element defines a content section within the master page where the main content of this page will be placed.

### Chart Control
```asp
<asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="374px" Palette="SeaGreen" Width="533px">
```
- This section defines an ASP.NET Chart control named `Chart1` that will be used to display the chart.
- The chart is bound to a data source specified by `DataSourceID`.
- It has a specific height, width, and color palette.

### Chart Series
```asp
<asp:Series ChartType="Bar" Name="Series1" XValueMember="Color" YValueMembers="Total">
</asp:Series>
```
- This element defines a series within the chart. It is configured as a bar chart (`ChartType="Bar"`).
- The `XValueMember` and `YValueMembers` properties specify which database columns to use as the X and Y values for the chart.

### Chart Area
```asp
<asp:ChartArea Name="ChartArea1">
</asp:ChartArea>
```
- This section defines a chart area within the chart control. In this case, it is named `ChartArea1`.

### SQL Data Source
```asp
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:COP2664CWinter2021ConnectionString %>" SelectCommand="SELECT [Color], count( [Color] ) as Total
FROM [Mod6_SalesDetail]
GROUP BY [Color]
ORDER BY Total DESC">
</asp:SqlDataSource>
```
- This element sets up a SQL data source named `SqlDataSource1` that connects to a database using the specified connection string.
- The `SelectCommand` property contains a SQL query that retrieves data from the database.

## Usage
To use this web page, make sure that you have a compatible ASP.NET environment set up, including a valid connection string to your SQL database. The chart will display the data as specified in the SQL query within the `<asp:SqlDataSource>` element.

## Conclusion
This `ChartPage.aspx` file is a simple example of how to create a bar chart in an ASP.NET web application using the ASP.NET Chart control and bind it to a SQL database. You can customize the appearance and data source as needed for your specific application.
