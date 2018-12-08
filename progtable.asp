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

songs(0,0)="Lightbulb Sun"
songs(1,0)="Porcupine Tree"
songs(0,1)="Coming Back To Life"
songs(1,1)="Pink Floyd"
songs(0,2)="Lateralus"
songs(1,2)="Tool"
songs(0,3)="Nocturne"
songs(1,3)="TesseracT"
songs(0,4)="Disillusioned"
songs(1,4)="A Perfect Circle"

for i = 0 to Ubound(songs, 2)
    %><tr>
	<td><%response.write(songs(0, i) & "<br />")%></td>
	<td><%response.write(songs(1, i) & "<br />")%></td>
	<td><audio controls controlsList="nodownload">
	<source src="progsongs/<%=songs(0, i)%>.mp3" type="audio/mpeg">
	</audio>
	</td>
	</tr>
<%next%>
</table>
</body>
</html>