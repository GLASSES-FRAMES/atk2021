<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>David-포켓몬</title>
    <script src="./jquery-3.6.0.js"></script>
</head>
<body>
<script>
let num1 = [3,1,2,3]; // 2
let num2 = [3,3,3,2,2,4]; // 3
let num3 = [3,3,3,2,2,2]; // 2
let num4 = [1,2,3,4,5,6,7,8]; // 4
let num5 = [4,4,2,2,2,3,3,3]; // 3


function solution(num){
    let answer = 0;
    let maxLen = num.length/2; // 최대길이 구하기
    let afterFilter = new Set(num); // 중복제거한 객체로 만들기
    let resArr = [...afterFilter]; // 중복제거한 객체를 배열로 변환
    let setLen = resArr.length; // 변환된 배열의 길이

    if(resArr.length > maxLen) setLen = maxLen; // N/2 를 넘지 못하도록 예외처리
    
    answer = setLen; // 길이값 리턴

    return answer;
}

solution(num);
</script>
</body>
</html>