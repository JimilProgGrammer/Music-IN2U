<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <!--<link rel="icon" href="../../favicon.ico">-->

    <title>Music In2U</title>

    <!-- Bootstrap core CSS -->
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
  <link href="carousel.css" rel="stylesheet">
  </head>

  <body>
 
    <div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">Music In2U</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li><a href="home.asp">Home</a></li>
			<li class="dropdown active" >
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Genres <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="rock.asp">Rock</a></li>
                <li><a href="hiphop.asp">Hip Hop</a></li>
                <li><a href="blues.asp">Blues</a></li>
				<li><a href="pop.asp">Pop</a></li>
				<li class="active"><a href="prog.asp">Progressive Rock</a></li>
                <li role="separator" class="divider"></li>
                
              </ul>
            </li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../navbar/">Hey <%
			if(Session("user")<>"") then
				response.write(session("user"))
			else
				response.write("Guest")
			end if
			%></a></li>
			<%
			if(Session("user")<>"") then
				response.write("<li><a href='logout.asp'>Logout</a></li>")
			else
				response.write("<li><a href='login.html'>Login</a></li>")
			end if
			%>
            
          </ul>
              </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>
	<img class="cover" src="images/rnbcarousel.jpg">
	<br>
	<br>
	
	<div class="container marketing">
	<p>Progressive rock (shortened as prog; sometimes called art rock, classical rock or symphonic rock) is a broad subgenre of rock music[7] that developed in the United Kingdom and United States throughout the mid to late 1960s. Initially termed "progressive pop", the style was an outgrowth of psychedelic bands who abandoned standard pop traditions in favour of instrumentation and compositional techniques more frequently associated with jazz, folk, or classical music. Additional elements contributed to its "progressive" label: lyrics were more poetic, technology was harnessed for new sounds, music approached the condition of "art" and the studio, rather than the stage, became the focus of musical activity, which often involved creating music for listening, not dancing.</p>
	<p>Prog is based on fusions of styles, approaches and genres, involving a continuous move between formalism and eclecticism. Due to its historical reception, prog's scope is sometimes limited to a stereotype of long solos, overlong albums, fantasy lyrics, grandiose stage sets and costumes, and an obsessive dedication to technical skill. While the genre is often cited for its merging of high culture and low culture, few artists incorporated literal classical themes in their work to any great degree, and only a handful of groups purposely emulated or referenced classical music.</p>
	<iframe class="xmltable" src="progtable.asp"></iframe>
	<br>
	<br>
	
	<!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2018 Music In2U, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
    </div><!-- /.container -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="dist/js/bootstrap.min.js"></script>
  </body>
</html>
