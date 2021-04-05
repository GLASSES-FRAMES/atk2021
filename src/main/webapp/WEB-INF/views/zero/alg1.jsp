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
        //console.log(alg.add(1));
        //console.log(alg.addThruCall(1));
    });

var alg = {
    getData : function(){
        let arr1 = ["mislav", "stanko", "ana" ,"zero"];
        let arr2 = ["stanko", "ana", "mislav"];
        let obj = new Object();
        obj.arr1 = arr1;
        obj.arr2 = arr2;
        return obj;
    },
    setProblem : function(){
        let participant =  this.getData().arr1.sort();
        let completion =  this.getData().arr2.sort();

        var answer = '';
        for(let i = 0 ; i < participant.length ; i++){
           if(participant[i] != completion[i]){
                answer = participant[i];
                break;
            }
        }
        $(".algView1").text(answer);
    },
    base : 2,
    add : function(a){
        var f = v => v + this.base;
        return f(a);
    },
    addThruCall : function(a){
        var f = (v,c) => v + c + this.base;
        var b = 5;

        return f(b, a);
    }
}

function solution(participant, completion) {
    var answer = '';
   participant = participant.sort();
   completion = completion.sort();
    for(let i = 0 ; i < participant.length ; i++){
        if(participant[i] != completion[i]){
            answer = participant[i];
            break;
        }
    }
    return answer;
}

function solution1(participant, completion) {
    var answer = '';
    completion.forEach(function(item){
        let i = participant.indexOf(item);
        if(i > -1) participant.splice(i, 1);
    });
    answer = participant.join();
    return answer;
}
</script>
</head>
<body>
결과 : <div class="algView1"></div>
</body>
</html>