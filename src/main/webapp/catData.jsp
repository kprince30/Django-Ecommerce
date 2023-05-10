<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.sks.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Data</title>
         <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    </head>
    <body >
			<%
			   Connection con=ConnectionProvider.getConnection();
			   try{
			   Statement st=con.createStatement();
			    ResultSet rs=st.executeQuery("SELECT * FROM categories");
			%>
			    <div class="container">
			    <table class="table table-bordered m-5" style="border: 1px ">
			        <thead class="thead-light">
			            <tr>
			                <th>cid</th>
			                <th>cName</th>
			                <th>cDesc</th>
			                <th>Action</th> <!-- add a new column for action -->
			            </tr>
			        </thead>    
			  <%
			    while(rs.next())
			    {
			    	session.setAttribute("catId",rs.getInt(1));
			        %>
			        
			        <tr>
			        <td><%out.print(rs.getInt(1)+"\t");%></td>
			        <td><%out.print(rs.getString(2)+"\t");%></td>
			        <td><%out.print(rs.getString(3));%></td>
			        <td>
			            <form action="deleteCategory.jsp" method="post"> <!-- create a form for delete action -->
			   
							
			                <button type="submit" class="btn btn-danger">Delete</button> <!-- add a delete button -->
			            </form>
			        </td>
			        </tr><%
			        
			    }%>
			    </table></div><%
			   }
			   catch(Exception e)
			   {
			       e.printStackTrace();
			   }
			
			%>
		</body>
</html>
