<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<head>
    <title>Admin Panel</title>
</head>
<body>
    <h1>Admin Panel</h1>
    <form action="/admin/updateVotes" method="post" id="adminForm">
        <table>
            <tr th:each="vote : ${votes}">
                <td th:text="${vote.partyName}"></td>
                <td><input type="number" name="newVoteCount" th:value="${vote.voteCount}"></td>
            </tr>
        </table>
        <button type="submit">Update Votes</button>
    </form>
    <a href="/">Back to Voting</a>
</body>
</html>