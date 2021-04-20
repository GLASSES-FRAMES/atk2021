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
/*******************************************
1. 가져오지 않은 학생기준으로 반복
2. 앞사람이 있으면 빌리기 (ans++)
3. 앞사람이 없으면 뒷 사람에게 빌리기 (ans++)
4. 뒷 사람에게 빌리고 뒷사람 배열에서 제거 >> 다음 루프 돌때 사용되면 안되니까
5. 증가된 ans에 가져온 사람 length 추가

* 가져온 사람중에 도난당한 사람은? 어짜지?
--> 음.. 위에 2번 시작하기 전에 필터하고 돌리면 될듯?
*******************************************/

function solution(n, lost, reserve) {
    let answer = reserve.length;
    let ansWerTemp = 0;
    let reserveTemp = reserve;

    for(i=0; i<lost.length; i++){
        if(reserveTemp.indexOf(lost[i]-1) != -1){
            ansWerTemp++;
        }else if(reserveTemp.indexOf(lost[i]+1) != -1){
            ansWerTemp++;

            const tmp = reserveTemp.indexOf(lost[i]+1);
            reserveTemp.splice(tmp, 1);
        }
    }

    answer = answer+ansWerTemp;
    // console.log(answer);
    return answer;
}
</script>

</body>
</html>