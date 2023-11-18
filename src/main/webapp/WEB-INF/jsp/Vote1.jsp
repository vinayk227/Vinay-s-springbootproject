<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Vote for a Party</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
            padding: 50px;
        }

        form {
            background-color: #fff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .Voting{
            text-align: center;
            margin-top: 15px;
        }
        h1 {
            color: #333;
        }

        label {
            display: block;
            margin: 10px 0;
            font-size: 18px;
        }

        input[type="radio"] {
            margin-right: 10px;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Vote for a Party</h1>
    <form id="votingForm" method="post">
        <label>
            <input type="radio" name="party" value="Pub"> Pub
        </label>
        <label>
            <input type="radio" name="party" value="Restaurant"> Restaurant
        </label>
        <label>
            <input type="radio" name="party" value="Chill"> Chill
        </label>
        <button type="button" id="voteButton">Vote</button>
    </form>


    </form>
    <div id="votedResult"></div>

    <script>
        // Initialize an empty object to store votes
        let selectedParty = null;
        let hasVoted = false;

        // Handle the vote button click
        document.getElementById("voteButton").addEventListener("click", function () {
        	if (hasVoted) {
                alert("You have already voted. You cannot vote again.");
            } else {
                const newSelectedParty = document.querySelector('input[name="party"]:checked');
                
                if (newSelectedParty) {
                    selectedParty = newSelectedParty.value;
                    hasVoted = true;
                    voteForParty(selectedParty);
                } else {
                    alert("Please select a party to vote for.");
                }
            }
        });

        // Display the vote counts
        function voteForParty(partyName) {
            const resultDiv = document.getElementById("votedResult");
            resultDiv.innerHTML = "<h2>Vote Results:</h2>";
            resultDiv.innerHTML += "<p>" + partyName + " has received 1 vote.</p>";
        }
    </script>

<form method="POST" action="/sender">
    <input type="submit" value="Exit" class="button" />
</form>
</body>



</html>