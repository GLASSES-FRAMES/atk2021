<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>David-알고</title>
    <script src="./jquery-3.6.0.js"></script>
</head>
<body>


<script>
var arr_default = [1,5,2,6,3,7,4];
var arr_command = [[2,5,3],[4,4,1],[1,7,3]];

function solution(array, commands) {
    var answer = [];

    for(var i=0; i<commands.length; i++){
        var arrFileter = array.slice(commands[i][0]-1, commands[i][1]).sort(function(a, b){ return a - b;});
        var resArr = arrFileter[commands[i][2]-1];
        answer.push(resArr);
    }

    return answer;
}

solution(arr_default, arr_command);
</script>

</body>
</html>