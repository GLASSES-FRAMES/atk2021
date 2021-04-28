<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>David</title>
    <script src="/js/jquery-3.6.0.js"></script>
</head>
<body>

<div>[난 통과 모대 틀렸어 먼저가]</div>
<div id="result">you go first</div>
test


<script>
$(function(){
    $("#result").text(solution(participant_case1, completion_case1));
});

let participant_case1 = ["leo", "zero", "ten", "david", "kiki"];
let completion_case1 = ["kiki", "ten", "zero", "leo"];


function solution(participant, completion) {
    const answer = participant_case1.filter(x => !completion_case1.includes(x));
    return answer;
}
</script>

</body>
</html>