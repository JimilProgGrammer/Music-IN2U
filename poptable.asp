<html>
<head>
<title>Pop Songs</title>
<style>
  @font-face {
    font-family: "myfont";
    src:url("fonts/Montserrat.ttf");
}

body
{
	font-family: "myfont";
	
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #5a5a5a;
    color: white;
}

</style>
  </head>
<body>
<table border="1">
<tr>
<th>Title</th>
<th>Artist</th>
<th>Play</th>
</tr>
<%
dim popsongs(2,4)
dim i

popsongs(0,0)="Attention"
popsongs(1,0)="Charlie Puth"
popsongs(0,1)="24K Magic"
popsongs(1,1)="Bruno Mars"
popsongs(0,2)="Thunder"
popsongs(1,2)="Imagine Dragons"
popsongs(0,3)="Story of My Life"
popsongs(1,3)="One Direction"
popsongs(0,4)="Shape Of you"
popsongs(1,4)="Ed Sheeran"

for i = 0 to Ubound(popsongs, 2)
    %><tr>
	<td><%response.write(popsongs(0, i) & "<br />")%></td>
	<td><%response.write(popsongs(1, i) & "<br />")%></td>
	<td><audio controls controlsList="nodownload">
	<source src="popsongs/<%=popsongs(0, i)%>.mp3" type="audio/mpeg">
	</audio>
	</td>
	</tr>
<%next
%>
</table>
</body>
</html>