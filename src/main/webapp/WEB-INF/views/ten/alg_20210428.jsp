<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="Referrer" content="origin">
    <meta http-equiv="Content-Script-Type" content="text/javascript">
    <meta http-equiv="Content-Style-Type" content="text/css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>20210428_study</title>
    <style type="text/css">
        .header {
        display: flex;
        border: 1px solid #000;
    }
    .header span {
        flex: 1;
        text-align: center;
        padding: 30px 0px;
    }
    .header span:nth-child(1) {
        background-color: blue;
        color: #fff;
    }
    .header span:nth-child(2) {
        background-color: #fff;
    }
    .header span:nth-child(3) {
        background-color: red;
        color: #fff;
    }
    .footer {
        border: 1px solid #000;
    }
    .footer p {
        margin: 20px 0px;
        padding: 0px 5px;
    }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div class="header">
        <span>HOME</span>
        <span>LOGO</span>
        <span>MY PAGE</span>
    </div>
    <div class="footer">
        <p>(주)웅진씽크빅 | 대표자명 : 이재진 | 사업자 등록번호 : 141-81-09131</p>
        <p>경기도 파주시 회동길 20</p>
        <p>&nbsp;</p>
        <p>COPYLIGHT</p>
    </div>
    <script type="text/javascript">
        // alg 테스트
        $(document).ready(function(){
            //Case 1: [1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]] => [5, 6, 3] / [5, 6, 3]
            //var answer = alg([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]);

            //Case 2: [2, 4, 3, 0, 1], [[2, 2, 1], [3, 4, 2]] => [4, 3] / [4, 3]
            //var answer = alg([2, 4, 3, 0, 1], [[2, 2, 1], [3, 4, 2]]);

            //Case 3: [1, 4, 7, 6, 5, 2, 3], [[1, 6, 4], [2, 4, 4]] => [5, ] / [5, ]
            //var answer = alg([1, 4, 7, 6, 5, 2, 3], [[1, 6, 4], [2, 4, 4]]);

            //Case 4: [1, 4, 7, 16, 15, 12, 13], [[3, 6, 4], [4, 7, 3]] => [16, 15] / [16, 15]
            var answer = alg([1, 4, 7, 16, 15, 12, 13], [[3, 6, 4], [4, 7, 3]]);

            if (!answer) answer = [];
            if (answer.length > 0) console.log('answer: ' + answer);
        });

        var alg = function(array, commands){
            var answer = [];
            commands.forEach(function(cVal, cIndex){
                var list = array.reduce((accumulator, value, index, length)=> {
                    if ((index + 1) >= cVal[0] && (index + 1) <= cVal[1]) accumulator.push(value);
                    return accumulator.sort(function(a, b){
                        return a - b;
                    });
                }, []);
                answer.push(list[cVal[2] - 1]);
            });

            return answer;
        };
    </script>
</body>
</html>
