<%@page import="servletex.Database"%>
<%@page import="java.sql.*"%>
<BODY>

	<%
	try {
		Class.forName(Database.driverClass);
		Connection connection = DriverManager.getConnection(Database.connectionURL, Database.userName, Database.password);

		Statement statement = connection.createStatement();

		ResultSet resultset = statement.executeQuery("select * from new");
	%>
	<h1>Drop down box or select element</h1>
	<select name="country" style="align-items: center; margin: auto;">
		<%
		while (resultset.next()) {
		%>
		<option><%=resultset.getString(2)%></option>
		<%
		}
		%>
	</select>


	<%
	} catch (Exception e) {
	out.println("wrong entry" + e);
	}
	%>

</BODY>
</HTML>