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
        solution(5,[1,2,3],[2,3,4]);
    });

var alg = {
    result : new Array(),
    getData : function(){
        let n = 5;
        let lost = [1,2,3];
        let reserve = [2,3,4];
        let obj = new Object();
        obj.n = n;
        obj.lost = lost;
        obj.reserve = reserve;
        return obj;
    },
    setProblem : function(){
        var answer = 0;
        let data = alg.getData();
        let result = new Array();
        let lo_arr = data.lost.sort();
        let re_arr = data.reserve.sort();

        lo_arr = lo_arr.filter(val => !data.reserve.includes(val));
        re_arr = re_arr.filter(val => !data.lost.includes(val));

        //총 학생수 - (잃어버리고 빌리지 못하는 사람)
        let lostCnt = 0;
       
        for(let i = 0 ; i < lo_arr.length ; i++){
            let crr = lo_arr[i];
            let rep = re_arr.indexOf(crr-1);
            let ren = re_arr.indexOf(crr+1);
            if(rep == -1 && ren == -1){
                lostCnt++;
            }else if(rep > -1){
                re_arr.splice(rep,1);
            }else if(ren > -1){
                re_arr.splice(ren,1);
            }
        }
        console.log(data.n - lostCnt);

    },

}

function solution(n, lost, reserve) {
    var answer = 0;
    var lostCnt = 0;
    lost = lost.sort();
    reserve = reserve.sort();
    var lo_arr = lost;
    var re_arr = reserve;
    lo_arr = lo_arr.filter(ele => !reserve.includes(ele));
    re_arr = re_arr.filter(ele => !lost.includes(ele));

    for(let i = 0 ; i < lo_arr.length ; i++){
        var crr = lo_arr[i];
        var rev = re_arr.indexOf(crr);
        var rep = re_arr.indexOf(crr-1);
        var ren = re_arr.indexOf(crr+1);
        if(rev == -1){//여벌과 잃어버린 사람이 같은경우를 제외
            if(rep == -1 && ren == -1){
                lostCnt++;
            }else if(rep > -1){
                re_arr.splice(rep,1);
            }else if(ren > -1){
                re_arr.splice(ren,1);
            }
        }
    }
    answer = n - lostCnt;
    return answer;
}

function solution_1(n, lost, reserve) {
    var answer = 0;
    let result = new Array();
    for(let i = 1 ; i <= n ; i++){
        let i_p = i-1;
        let i_n = i+1;

        let l = lost.indexOf(i);
        let lp = lost.indexOf(i_p);
        let ln = lost.indexOf(i_n);

        let r = reserve.indexOf(i);
        let rp = reserve.indexOf(i_p);
        let rn = reserve.indexOf(i_n);

        if( (l == -1 && r == -1) || (l > -1 && r > -1) ){
            result.push(i);
        }else if(l > -1){    
            if(rp > -1){
                if(result.indexOf(i) == -1) {
                    result.push(i);
                    lost.splice(l,1);
                    reserve.splice(rp,1);
                }
            }else if(rn > -1){
                if(result.indexOf(i) == -1){
                    result.push(i);
                    lost.splice(l,1);
                    reserve.splice(rn,1);
                } 
            }
        }else if(r > -1){
            if(lp > -1){
                if(result.indexOf(i) == -1) {
                    result.push(i);
                    reserve.splice(r,1);
                    lost.splice(lp,1);
                }
            }else if(ln > -1){
                if(result.indexOf(i) == -1){
                    result.push(i);
                    reserve.splice(r,1);
                    lost.splice(ln,1);
                } 
            }else{
                if(result.indexOf(i) == -1){
                    result.push(i);
                }
            }
        }
    }
    answer = result.length;
    return answer;
}

</script>
</head>
<body>
결과 : <div class="algView1"></div>
</body>
</html>