<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<script src="/js/jquery-3.6.0.js"></script>
<script src="https://d3js.org/d3.v6.min.js"></script>
<script>
    $(document).ready(function(){
        /*
            const data = [80, 53, 125, 200, 28, 97];
            let svg = d3.select('body').append('svg');
            data.forEach((d, i) => {
                svg.append('rect').attr('height', data[i]).attr('width', 40).attr('x', 50 * i).attr('y', 100 - data[i]);
            });
            d3.select("body").style("background-color", "black");
            let d = d3.select("body").selectAll("p").data([4,8,15,16,23,42]).text(function(d){return d;});
            d.enter().append("p").text(function(d){return d;});
            d.exit().remove();
            d3.select("body").transition().style("background-color", "black");
            d3.selectAll("circle").transition().duration(750).delay(function(d, i) { return i * 10; }).attr("r", function(d) { return Math.sqrt(d * scale); });
            d3.line().x(d => x(d.date)).y(d => y(d.value));
        */
       const dataFile = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50];
       const svg = d3.select('svg');
       svg.selectAll('bar').data(dataFile).enter().append('rect')
       .attr('fill', 'green')
       .attr('height', (d, i) => { console.log("d:" + d); return d })
       .attr('width', 40).attr('x', (d, i) => {console.log("i:" + i); return 50 * i})
       .attr('y', (d, i) => { return 200 - dataFile[i]});
    });
</script>
</head>
<body>
<!-- <svg width="500" height="500"></svg> -->
<div style="display:flex; justify-content: space-between; border : 1px solid #fd945a; width: auto; height: auto; text-align: center; align-items:center">
    <div style="display:inline; border : 1px solid #61ca41; width: 50px;">HOME</div>
    <div style="display:inline; text-align: center; border : 1px solid #41cabf; width: auto;">웅진씽크빅 라운지</div>
    <div style="display: inline-block; border : 1px solid #552bb8; width: 50px;">MY PAGE</div>
</div>
<div style="border : 1px solid #fd945a; width: auto; height: 50px;">
    <div style="border : 1px solid #61ca41; width: auto;">(주)웅진씽크빅 | 대표자명 :  | 사업자 등록번호 : 141-81-09131</div>
    <div style="margin-top: 5px;"></div>
    <div style="border : 1px solid #61ca41; width: auto;">경기도 파주시 회동길 20 </div>
</div>
</body>
</html>