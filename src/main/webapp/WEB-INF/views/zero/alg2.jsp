<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<script src="/js/jquery-3.6.0.js"></script>
<script>
    $(document).ready(function(){
        //alg.setProblem();
        //console.log(alg.add(1));
        //console.log(alg.addThruCall(1));
        solution([2,3,2,1]);
    });

var alg = {
    getData : function(){
        let arr1 = [1, 2, 3, 4, 5];
        let arr2 = [2, 1, 2, 3, 2, 4, 2, 5];
        let arr3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5];
        let obj = new Object();
        obj.arr1 = arr1;
        obj.arr2 = arr2;
        obj.arr3 = arr3;
        return obj;
    },
    setProblem : function(){
        let data = alg.getData();
        let answer = [2,3,2,1];
        let n1 = 0, n2 = 0, n3 = 0;
        for(let i = 0 ; i < answer.length ; i++){
            let num1 = i%data.arr1.length;
            let num2 = i%data.arr2.length;
            let num3 = i%data.arr3.length;
            if(answer[i] === data.arr1[num1]) n1++;
            if(answer[i] === data.arr2[num2]) n2++;
            if(answer[i] === data.arr3[num3]) n3++;
        }
        let tl = [n1, n2, n3];
        let max = Math.max(...tl);
        let res = [];
        tl.forEach((item, index) => item === max ? res.push(index+1): null);
        console.log(res);
        $(".algView1").html(res.toString());
    }
}

function solution(answers) {
    let arr1 = [1, 2, 3, 4, 5];
    let arr2 = [2, 1, 2, 3, 2, 4, 2, 5];
    let arr3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5];
    let tl = [0, 0, 0];
    for(let i = 0 ; i < answers.length ; i++){
        let num1 = i%arr1.length;
        let num2 = i%arr2.length;
        let num3 = i%arr3.length;
        if(answers[i] === arr1[num1]) tl[0]++;
        if(answers[i] === arr2[num2]) tl[1]++;
        if(answers[i] === arr3[num3]) tl[2]++;
    }
    let max = Math.max(...tl);
    let answer = [];
    tl.forEach((item, index) => item === max ? answer.push(index+1): null);
    return answer;
}

</script>
</head>
<body>
결과 : <div class="algView1"></div>
</body>
</html>