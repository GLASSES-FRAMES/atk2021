<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<script src="/js/jquery-3.6.0.js"></script>
<script>
    $(document).ready(function(){
        alg.setProblem();
        //solution([1, 5, 2, 6, 3, 7, 4],[[2, 5, 3], [4, 4, 1], [1, 7, 3]]);
        let week = ['SUN','MON','TUE','WED','THU','FRI','SAT'];
        answer = week[new Date(2016,5-1,24).getDay()];
    });

var alg = {
    result : new Array(),
    getData : function(){
        let array1 = [1, 5, 2];
        let array = [1, 5, 2, 6, 3, 7, 4];
        let commands = [[2, 5, 3], [4, 4, 1], [1, 7, 3]];
        let obj = new Object();
        obj.array1 = array1;
        obj.array = array;
        obj.commands = commands;
        return obj;
    },
    setProblem : function(){
        var answer = [];
        let data = alg.getData();
        let cmd = data.commands;
        for(let i = 0 ; i < cmd.length ; i++){
            const st = cmd[i][0];
            const ed = cmd[i][1];
            const k = cmd[i][2];
            const arr = data.array.slice(st-1, ed).sort((a,b) => a - b);
            answer.push(arr[k-1]);
        }
        console.log(answer);
        $(".algView1").text(answer.toString());
    },

}

//이게 훨씬더 잘했음
function solution_1(array, commands) {
    let answer = commands.map(command => {
        const [sPosition, ePosition, position] = command;
        const newArray = array
            .filter((value, fIndex) => fIndex >= sPosition - 1 && fIndex <= ePosition - 1)
            .sort((a,b) => a - b)    

        return newArray[position - 1]
    });
    return answer;
}

function solution(array, commands) {
    var answer = [];
    for(let i = 0 ; i < commands.length ; i++){
        const st = commands[i][0];
        const ed = commands[i][1];
        const k = commands[i][2];
        const arr = array.slice(st-1, ed).sort((a,b) => a - b);
        answer.push(arr[k-1]);
    }
    console.log(a);
    return answer;
}

</script>
</head>
<body>
결과 : <span class="algView1" style="display: inline-block; border : 1px solid black; width: 250px;"></span>
</body>
</html>