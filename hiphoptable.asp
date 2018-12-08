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
dim songs(2,4)
dim i
 
songs(0,0)="River"
songs(1,0)="Eminem "
songs(0,1)="Changes"
songs(1,1)="Tupac "
songs(0,2)="Renegade"
songs(1,2)="Jay Z "
songs(0,3)="No Problem"
songs(1,3)="Chance the Rapper "
songs(0,4)="Sing About Me"
songs(1,4)="Kendrick Lamar"

for i = 0 to Ubound(songs, 2)
    %><tr>
	<td><%response.write(songs(0, i) & "<br />")%></td>
	<td><%response.write(songs(1, i) & "<br />")%></td>
	<td><audio controls controlsList="nodownload">
	<source src="hiphopsongs/<%=songs(0, i)%>.mp3" type="audio/mpeg">
	</audio>
	</td>
	</tr>
<%next%>
</table>
</body>
</html>