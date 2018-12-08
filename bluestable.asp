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

songs(0,0)="The Thrill Has Gone"
songs(1,0)="B.B. King"
songs(0,1)="Everyday I Have The Blues"
songs(1,1)="B.B. King"
songs(0,2)="Stop Breaking Down"
songs(1,2)="Rolling Stones"
songs(0,3)="Key To The Highway"
songs(1,3)="Eric Clapton"
songs(0,4)="Born Under A Bad Sign"
songs(1,4)="Albert King"

for i = 0 to Ubound(songs, 2)
    %><tr>
	<td><%response.write(songs(0, i) & "<br />")%></td>
	<td><%response.write(songs(1, i) & "<br />")%></td>
	<td><audio controls controlsList="nodownload">
	<source src="bluessongs/<%=songs(0, i)%>.mp3" type="audio/mpeg">
	</audio>
	</td>
	</tr>
<%next%>
</table>
</body>
</html>