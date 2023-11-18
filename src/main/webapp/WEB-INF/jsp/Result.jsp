<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Vote Results</title>
</head>
<body>
    <h1>Vote Results</h1>
    <ul>
        <li>BJP: <span id="bjpVotes">0</span> votes</li>
        <li>Congress: <span id="congressVotes">0</span> votes</li>
        <li>TRS: <span id="trsVotes">0</span> votes</li>
    </ul>

    <a href="/Vote">Return to Voting</a>

    <script>
        // JavaScript code to fetch and display the results
        const queryString = window.location.search;
        const urlParams = new URLSearchParams(queryString);

        // Fetch and display the vote results
        const bjpVotes = document.getElementById("bjpVotes");
        const congressVotes = document.getElementById("congressVotes");
        const trsVotes = document.getElementById("trsVotes");

        bjpVotes.textContent = urlParams.get("bjpVotes");
        congressVotes.textContent = urlParams.get("congressVotes");
        trsVotes.textContent = urlParams.get("trsVotes");
        
        bjpVotes.textContent = bjpVotesCount || 0;
        congressVotes.textContent = congressVotesCount || 0;
        trsVotes.textContent = trsVotesCount || 0;
    </script>
</body>
</html>