<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>David-같은 숫자는 싫어</title>
    <script src="./jquery-3.6.0.js"></script>
</head>
<body>
<script>
let arr1 = [1,1,3,3,0,1,1];
let arr2 = [4,4,4,3,3];


function solution(arr){
    let answer = [];

    arr.filter((x, idx, array)=>{
        if(array[idx-1] !== x) answer.push(x);
    });
    
    return answer;
}


function solution1(arr){
    let answer = [];
    let temp = null;

    temp = arr.filter((x, idx, array)=>{
        if(array[idx-1] !== x){

            answer.push(x);
            return x;
        }
    });

    console.log(`answer: ${answer}`);
    console.log("temp: " + temp); // 여기는 왜 0 이 빠지지? o,.o???
    return answer;
}

solution(arr1);

</script>
</body>
</html>