<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>David-모의고사</title>
    <script src="./jquery-3.6.0.js"></script>
</head>
<body>

<div style="font-weight:bold;margin-bottom:20px;">[찍어서 많이 맞춘 수포자 찾기]</div>
<div id="result"></div>



<script>
$(function(){
    // 총 20문항
    var answer_type1 = [1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5];
    var answer_type2 = [4,3,1,5,2,1,3,2,4,5,4,3,1,5,2,1,3,2,4,5];
    solution(answer_type1);
});

function solution(answers) {
    var answer = [];

    var user_1 = {
        supo : 1, 
        ans : [1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5],
        solcount : 0
    }

    var user_2 = {
        supo : 2, 
        ans : [2,1,2,3,2,4,2,5,2,1,2,3,2,4,2,5,2,1,2,3],
        solcount : 0
    }

    var user_3 = {
        supo : 3, 
        ans : [3,3,1,1,2,2,4,4,5,5,3,3,1,1,2,2,4,4,5,5],
        solcount : 0
    }

    user_1.solcount = countRightAnswer(user_1.ans, answers);
    user_2.solcount = countRightAnswer(user_2.ans, answers);
    user_3.solcount = countRightAnswer(user_3.ans, answers);

    // 오름차순 정렬
    var tempArr = [user_1.solcount, user_2.solcount, user_3.solcount].sort(function(a, b)  {
                    if(a > b) return 1;
                    if(a === b) return 0;
                    if(a < b) return -1;
                });    

    for(var t=0;t<tempArr.length;t++){
        for(var u=1;u<=tempArr.length;u++){
            var res = eval("user_"+u);
            // var res = (new Function ('user_'+u))();
            // var res = window["user_" + u];

            if(res.solcount == tempArr[t]) {
                $("#result").append("<div>수포자 "+res.supo+"은 "+res.solcount+"문제를 맞췄습니다.</div>");

                if(t == tempArr.length-1){
                    $("#result").append("<div style='margin-top:10px;color:blue'>따라서 가장 문제를 많이 맞힌 사람은 수포자 "+res.supo+" 입니다.</div>");
                }
            }
        }
    }

    return answer;
}

// 정답 맞춘 개수 반환 함수
function countRightAnswer(user_answer, test_answer){
    var cnt = 0;

    for(var i=0;i<user_answer.length;i++){
        if(user_answer[i] == test_answer[i]) cnt++;
    }

    return cnt;
}

</script>

</body>
</html>