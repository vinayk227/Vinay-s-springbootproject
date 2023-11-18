<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Voter Education - Online Voting System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding:s 0;
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

        p {
            line-height: 1.6;
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
            <form method="POST" action="/home">
                <input type="submit" value="Home" class="button" />
            </form>
        </li>
            <li>
                <form method="POST" action="/aboutus">
                    <input type="submit" value="Voter Education" class="button" />
                </form>
            </li>
            <li>
                <form method="POST" action="/home">
                    <input type="submit" value="LogOut" class="button" />
                </form>
            </li>
        </ul>
    </nav>
    <main>
        <section id="voter-education">
            <h2>The Importance of Voting</h2>
            <p>
                Voting is one of the fundamental rights and responsibilities of a citizen in a democratic society. It's not just a civic duty; it's a way to actively participate in the decision-making process that shapes our nation and community.
            </p>
            <p>
                Here are a few key reasons why your vote matters:
            </p>
            <ol>
                <li>
                    <strong>Representation:</strong> Voting ensures that you have a say in who represents you in government. It's your chance to choose leaders who will advocate for your interests and values.
                </li>
                <li>
                    <strong>Accountability:</strong> Elected officials are accountable to the people who vote them into office. By voting, you hold them responsible for their actions and decisions.
                </li>
                <li>
                    <strong>Change and Progress:</strong> Voting allows you to support policies and candidates that align with your vision for a better future. It's a means of bringing about positive change.
                </li>
                <li>
                    <strong>Equality and Inclusivity:</strong> Voting is an equalizer in a democratic society. Regardless of your background, your vote counts the same as anyone else's.
                </li>
            </ol>
            <p>
                Your vote is your voice, and it has the power to shape the direction of your community, state, and nation. Make sure to exercise your right to vote and be part of the democratic process.
            </p>
        </section>
    </main>
    <footer>
        <p>&copy; 2023 Online Voting System</p>
    </footer>
</body>
</html>
