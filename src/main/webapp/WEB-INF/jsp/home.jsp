<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Online Voting System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;

        }

        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 1rem;
        }

        nav {
            background-color: #555;
            color: #fff;
            text-align: center;
            padding: 0.5rem;
        }

        nav ul {
            list-style: none;
            padding: 0;
            display: flex; /* Display items horizontally */
            justify-content: center; /* Center items horizontally */
        }

        nav ul li {
            margin: 0 1rem;
        }

        nav a {
            text-decoration: none;
            color: #fff;
        }

        main {
            margin: 2rem;
            padding: 2rem;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 2rem;
        }

        h2 {
            font-size: 1.5rem;
        }

        .button {
            display: inline-block;
            padding: 0.5rem 1rem;
            background-color: #333;
            color: #fff;
            text-decoration: none;
            margin: 1rem;
        }

        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 1rem;
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to the Online Voting System</h1>
    </header>
    <nav>
        <ul>
            <li>
                <form method="POST" action="/Signin">
                    <input type="submit" value="Login" class="button" />
                </form>
            </li>
            <li>
                <form method="POST" action="/register">
                    <input type="submit" value="Register" class="button" />
                </form>
            </li>
            <li>
                <form method="POST" action="/aboutus">
                    <input type="submit" value="Voter Education" class="button" />
                </form>
            </li>
        </ul>
    </nav>
    
   

<!-- Slide Show -->
<section>
  <img class="mySlides" src="https://wallpaperaccess.com/full/3969153.jpg"
  style="width:100%">
  <img class="mySlides" src="https://wallpaperaccess.com/full/2845165.jpg"
  style="width:100%">
  <img class="mySlides" src="https://wallpaperaccess.com/full/654616.jpg"
  style="width:100%">
</section>

<!-- Band Description -->
<section class="w3-container w3-center w3-content" >
</section>
<script>
// Automatic Slideshow - change image every 3 seconds
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}
  x[myIndex-1].style.display = "block";
  setTimeout(carousel, 3000);
}
</script>

    <main>
        <section id="description">
        
            <h2>About the System</h2>
            <p>
                Welcome to the Online Voting System, a platform where you can cast your vote securely and conveniently from the comfort of your home. Your vote matters!
            </p>
        </section>
    </main>
    <footer>
        <p>&copy; 2023 Online Voting System</p>
    </footer>
</body>
</html>
