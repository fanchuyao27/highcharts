<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="m" uri="/WEB-INF/sand-html.tld" %>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%@ include file="/template/basic/common_head.jsp" %>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="<c:url value='/theme/adobe/style.css'/>">

    <script type="text/javascript" src="/plugin/jquery-1.5.1.min.js"></script>
    <script type="text/javascript" src="/plugin/jquery-1.9.1.min.js"></script>
    <!--日期控件 开始-->
    <script type="text/javascript" src="<c:url value='/plugin/jquery-calendar.js'/>"></script>
    <!--日期控件 结束-->
    <!--搜索控件 开始-->
    <script type="text/javascript" src="/plugin/jquery.selectsearch-4.0/jquery.selectseach.min.js"></script>
    <!--搜索控件 结束-->
    <script type="text/javascript" src="/plugin/Highstock-2.1.3/js/highstock.js"></script>
    <script type="text/javascript" src="/plugin/Highstock-2.1.3/js/exporting.js"></script>
    <script type="text/javascript" src="/plugin/Highstock-2.1.3/js/draggable-legend.js"></script>
    <script type="text/javascript" src="/plugin/Highstock-2.1.3/js/export-excel.js"></script>
    <script type="text/javascript">
        function GetDateStr(AddDayCount) {
            var dd = new Date();
            dd.setDate(dd.getDate() + AddDayCount);//获取AddDayCount天后的日期
            var y = dd.getFullYear();
            var m = dd.getMonth() + 1;//获取当前月份的日期
            var d = dd.getDate();
            var hh = dd.getHours();
            var mm = dd.getMinutes();
            var ss = dd.getSeconds();

            if (m < 10) m = "0" + m;
            if (d < 10) d = "0" + d;
            if (hh < 10) hh = "0" + hh;
            if (mm < 10) mm = "0" + mm;
            if (ss < 10) ss = "0" + ss;
            return y + "-" + m + "-" + d + " " + hh + ":" + mm + ":" + ss;
        }

        $(function () {
            $("#nowT").click(function () {
                $("#end_date").val(GetDateStr);
            });

            var ia = 0;
            var i0 = 0;
            var ea = 0;
            var e0 = 0;
            var ua = 0;
            var u0 = 0;
            var uab = 0;
            var ula = 0;
            var ul0 = 0;
            var ulab = 0;
            var sw = 0;
            var ac = 0;
            var re = 0;
            var sc = 0;
            var zsc = 0;
            var lo = 0;
            var ona = 0;
            // var onb = 0;
            var offa = 0;
            // var offb = 0;
            var tra = 0;
            // var trb = 0;
            var forevertripa = 0;
            // var forevertripb = 0;
            var resettripa = 0;
            // var resettripb = 0;
            var ling = 0;
            var obj =${list};
            var size = ${list.size()};
            // console.log(obj);
            // alert(obj[0].objlist.length);
            for (var i = 0; i < size; i++) {
                if ((obj[i].sgs === "A相" || obj[i].sgs === "B相" || obj[i].sgs === "C相") && (obj[i].objlist.length != 0)) {
                    ia++;
                }
                if (obj[i].sgs === "3I0" && (obj[i].objlist.length != 0)) {
                    i0++;
                }
                if ((obj[i].sgs === "EA相" || obj[i].sgs === "EB相" || obj[i].sgs === "EC相") && (obj[i].objlist.length != 0)) {
                    ea++;
                }
                if (obj[i].sgs === "3E0" && (obj[i].objlist.length != 0)) {
                    e0++;
                }
                if ((obj[i].sgs === "Ua相" || obj[i].sgs === "Ub相" || obj[i].sgs === "Uc相") && (obj[i].objlist.length != 0)) {
                    ua++;
                }
                if (obj[i].sgs === "3U0" && (obj[i].objlist.length != 0)) {
                    u0++;
                }
                if ((obj[i].sgs === "Uab相" || obj[i].sgs === "Ubc相" || obj[i].sgs === "Uca相") && (obj[i].objlist.length != 0)) {
                    uab++;
                }
                if ((obj[i].sgs === "ULa相" || obj[i].sgs === "ULb相" || obj[i].sgs === "ULc相") && (obj[i].objlist.length != 0)) {
                    ula++;
                }
                if (obj[i].sgs === "UL0" && (obj[i].objlist.length != 0)) {
                    ul0++;
                }
                if ((obj[i].sgs === "ULab相" || obj[i].sgs === "ULbc相" || obj[i].sgs === "ULca相") && (obj[i].objlist.length != 0)) {
                    ulab++;
                }
                if (obj[i].sgs === "switch") {
                    sw++;
                }
                if (obj[i].sgs === "action") {
                    ac++;
                }
                if (obj[i].sgs === "reclose") {
                    re++;
                }
                if (obj[i].sgs === "sc") {
                    sc++;
                }
                if (obj[i].sgs === "zsc") {
                    zsc++;
                }
                if (obj[i].sgs === "lock") {
                    lo++;
                }
                if (obj[i].sgs === "ona") {
                    ona++;
                }
                /*if (obj[i].sgs === "onb") {
                    onb++;
                }*/
                if (obj[i].sgs === "offa") {
                    offa++;
                }
                /*if (obj[i].sgs === "offb") {
                    offb++;
                }*/
                if (obj[i].sgs === "tripa") {
                    tra++;
                }
                /*if (obj[i].sgs === "tripb") {
                    trb++;
                }*/
                if (obj[i].sgs === "forevertripa") {
                    forevertripa++;
                }
                if (obj[i].sgs === "resettripa") {
                    resettripa++;
                }
                if (obj[i].sgs === "零序电压") {
                    ling++;
                }

            }

            createChart();

            /**
             var path = "/demo/json/";
             $.each(names, function(i, name) {
		$.getJSON("/dcu.DcuActionHandler.dcuTempStock",{dcu_id:"1",sgs:'65',asn:$("#asn").val()},function(result) {
			var data = result.data;
			seriesOptions[i] = {
				name: name,
				data: data
			};
			seriesCounter++;
			if (seriesCounter == names.length) {
				createChart();
			}
		});
	});
             **/
                // create the chart when all data is loaded


            var chart;
            var chart1;
            var chart2;
            var chart3;
            var chart4;
            var chart5;
            var chart6;
            var chart_uab;
            var chart7;
            var chart8;
            var chart_ulab;
            var chart9;
            var chart20;


            function createChart() {

                Highcharts.setOptions({

                    lang: {
                        contextButtonTitle: "图表导出菜单",
                        decimalPoint: ".",
                        downloadJPEG: "下载JPEG图片",
                        downloadPDF: "下载PDF文件",
                        downloadPNG: "下载PNG文件",
                        downloadSVG: "下载SVG文件",
                        drillUpText: "返回 {series.name}",
                        rangeSelectorFrom: "从",
                        rangeSelectorTo: "至",
                        rangeSelectorZoom: "缩放",
                        loading: "加载中",
                        months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
                        noData: "没有数据",
                        printChart: "打印图表",
                        resetZoom: "恢复缩放",
                        resetZoomTitle: "恢复图表",
                        shortMonths: ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"],
                        thousandsSep: ",",
                        weekdays: ["星期天", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"]
                    }
                });

                //chart = new Highcharts.StockChart({

                //三相电流波形图
                if (ia > 0) {
                    chart = new Highcharts.Chart({
                        //$('#container').highcharts('StockChart', {
                        chart: {renderTo: 'container', type: 'spline', zoomType: 'x'},
                        colors: ["#F90", "#393", "#C00", "#04AFFF", "#00E3E3", "#EA0000"],//波形线的颜色 黄，绿，红#FF0 #0F0 #F00    #F90 #393 #C00
                        rangeSelector: {
                            enabled: false
                        },
                        rangeSelector: {
                            enabled: true,
                            inputEnabled: false,//不显示右上角的日期 from ... to ...
                            buttons: [
                                {
                                    type: 'all',
                                    text: '所有'
                                }
                            ],
                            selected: 4
                        },
                        title: {
                            text: '<c:set var="sampling_rate" value="${applicationScope.sampling_rate}"/>${obj.dcu_no} ${obj.address}<c:if test="${alarm_id==\'-1\'}">瞬时</c:if><c:if test="${alarm_id!=\'-1\'}">录波</c:if>波形   UTC时间${dateValueUTC}.<fmt:formatNumber value="${sample*1000000/sampling_rate}" minIntegerDigits="6" maxIntegerDigits="6" pattern="000000"/>',    //图表标题
                            x: -20 //center
                        },
                        xAxis: {
                            title: {
                                text: '工频周波(三相电流)'
                            },
                            categories: [<c:forEach begin="1" end="${xindex}" step="1" var="i">${i}<c:if test="${i < xindex}">, </c:if></c:forEach>],
                            tickInterval: 256,//x轴的刻度间隔
                            labels: {
                                formatter: function () {
                                    return (this.value - 1) / 256 - ${pre_cycle} +'';
                                }
                            }
                        },
                        yAxis: {
                            title: {
                                text: '幅值 (A)'
                            },
                            labels: {
                                formatter: function () {
                                    return this.value //+'A'
                                }
                                , align: 'left'
                            },
                            opposite: true,
                            plotLines: [{
                                value: 0,
                                width: 2,
                                color: 'silver'
                            }]
                        },
                        tooltip: {
                            headerFormat: "<b><small>{point.key}</small></b><br/>",
                            pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}A</b><br/>',
                            valueDecimals: '${jingdu}',
                            shared: true
                        },
                        plotOptions: {
                            series: {
                                //compare: 'percent'
                            }, line: {
                                dataLabels: {
                                    enabled: false      //是否在线上显示数值true:显示     false:不显示
                                },
                                enableMouseTracking: true //移上去是否显示数值
                            }
                        },
                        exporting: {
                            // 是否允许导出
                            enabled: true,
                            buttons: {//自定义按钮
                                contextButton: {
                                    menuItems: [
                                        {
                                            text: '导出JPEG文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'image/jpeg'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出PNG文件',
                                            onclick: function () {
                                                this.exportChart();
                                            }
                                        },
                                        {
                                            text: '导出PDF文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'application/pdf'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出Excel文件',
                                            onclick: function () {
                                                Highcharts.post('http://export.hcharts.cn/cvs.php', {
                                                    csv: chart.getCSV()
                                                });
                                            }
                                        }
                                    ]
                                }
                            }
                        },
                        /**legend: {
				enabled:true,
				layout: 'horizontal',
				backgroundColor: 'white',
				align: 'center',
				verticalAlign: 'bottom',
				borderWidth: 1
				//borderRadius: 0,//可以拖动的图例
				//title: {
				//	text: ':: 拖动我'
				//},
				//floating: true,
				//draggable: true,
				//zIndex: 20
			},**/
                        credits: {
                            enabled: false // 禁用版权信息
                        },
                        scrollbar: {
                            enabled: true//滚动条
                        },
                        navigator: {
                            enabled: false,//导航,放大缩小
                            series: {
                                type: 'areaspline',
                                color: '#4572A7',
                                fillOpacity: 0,//导航里面的阴影填充
                                dataGrouping: {
                                    smoothed: true
                                },
                                lineWidth: 0,//导航里面的波形
                                marker: {
                                    enabled: false
                                }
                            },
                            outlineColor: 'grey',//导航的边框颜色
                            outlineWidth: 1		 //导航的边框线
                        },
                        //series: seriesOptions
                        /**series: [
                         <c:forEach var="obj" items="${list}" varStatus="status">
                         {
							name: '${obj.name}',
							data: ${obj.data}
						}<c:if test="${status.index < (fn:length(list)-1)}">,</c:if>
                         </c:forEach>
                         ]**/
                        series: [
                            <c:forEach var="detail" items="${list}" varStatus="status">
                            <c:if test="${detail.sgs == 'A相' || detail.sgs == 'B相' || detail.sgs == 'C相'}">
                            {
                                name: '${detail.sgs}录波',
                                turboThreshold: 30000,
                                type: 'spline',
                                id: 'dataseries',
                                legend: {
                                    enabled: true,
                                    layout: 'horizontal',
                                    backgroundColor: 'white',
                                    align: 'center',
                                    verticalAlign: 'bottom',
                                    borderWidth: 1
                                },
                                data: [
                                    <c:forEach var="dd" items="${detail.objList}" varStatus="status2">
                                    {
                                        xindex: '${dd.xindex}',
                                        y:${dd.datas}
                                        //<c:if test="${status.index==500}">,marker: { symbol: 'url(/images/2.png)' }</c:if>
                                    }<c:if test="${status2.index < (fn:length(detail.objList)-1)}">, </c:if></c:forEach>
                                ]
                            }
                            <c:if test="${status.index < (fn:length(list)-1)}">, </c:if></c:if></c:forEach>
                        ]
                    });
                }


                if (i0 > 0) {
                    //3I0
                    chart1 = new Highcharts.Chart({
                        //$('#container').highcharts('StockChart', {
                        chart: {renderTo: 'container1', type: 'spline', zoomType: 'x'},
                        colors: ["#F90", "#393", "#C00", "#04AFFF", "#00E3E3", "#EA0000"],//波形线的颜色 黄，绿，红#FF0 #0F0 #F00    #F90 #393 #C00
                        rangeSelector: {
                            enabled: false
                        },
                        rangeSelector: {
                            enabled: true,
                            inputEnabled: false,//不显示右上角的日期 from ... to ...
                            buttons: [
                                {
                                    type: 'all',
                                    text: '所有'
                                }
                            ],
                            selected: 4
                        },
                        title: {
                            text: '<c:set var="sampling_rate" value="${applicationScope.sampling_rate}"/>${obj.dcu_no} ${obj.address}<c:if test="${alarm_id==\'-1\'}">瞬时</c:if><c:if test="${alarm_id!=\'-1\'}">录波</c:if>波形   UTC时间${dateValueUTC}.<fmt:formatNumber value="${sample*1000000/sampling_rate}" minIntegerDigits="6" maxIntegerDigits="6" pattern="000000"/>',    //图表标题
                            x: -20 //center
                        },
                        xAxis: {
                            title: {
                                text: '工频周波(3I0)'
                            },
                            categories: [<c:forEach begin="1" end="${xindex}" step="1" var="i">${i}<c:if test="${i < xindex}">, </c:if></c:forEach>],
                            tickInterval: 256,//x轴的刻度间隔
                            labels: {
                                formatter: function () {
                                    return (this.value - 1) / 256 - ${pre_cycle} +'';
                                }
                            }
                        },
                        yAxis: {
                            title: {
                                text: '幅值 (A)'
                            },
                            labels: {
                                formatter: function () {
                                    return this.value //+'A'
                                }
                                , align: 'left'
                            },
                            opposite: true,
                            plotLines: [{
                                value: 0,
                                width: 2,
                                color: 'silver'
                            }]
                        },
                        tooltip: {
                            headerFormat: "<b><small>{point.key}</small></b><br/>",
                            pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}A</b><br/>',
                            valueDecimals: '${jingdu}',
                            shared: true
                        },
                        plotOptions: {
                            series: {
                                //compare: 'percent'
                            }, line: {
                                dataLabels: {
                                    enabled: false      //是否在线上显示数值true:显示     false:不显示
                                },
                                enableMouseTracking: true //移上去是否显示数值
                            }
                        },
                        exporting: {
                            // 是否允许导出
                            enabled: true,
                            buttons: {//自定义按钮
                                contextButton: {
                                    menuItems: [
                                        {
                                            text: '导出JPEG文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'image/jpeg'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出PNG文件',
                                            onclick: function () {
                                                this.exportChart();
                                            }
                                        },
                                        {
                                            text: '导出PDF文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'application/pdf'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出Excel文件',
                                            onclick: function () {
                                                Highcharts.post('http://export.hcharts.cn/cvs.php', {
                                                    csv: chart.getCSV()
                                                });
                                            }
                                        }
                                    ]
                                }
                            }
                        },
                        credits: {
                            enabled: false // 禁用版权信息
                        },
                        scrollbar: {
                            enabled: true//滚动条
                        },
                        navigator: {
                            enabled: false,//导航,放大缩小
                            series: {
                                type: 'areaspline',
                                color: '#4572A7',
                                fillOpacity: 0,//导航里面的阴影填充
                                dataGrouping: {
                                    smoothed: true
                                },
                                lineWidth: 0,//导航里面的波形
                                marker: {
                                    enabled: false
                                }
                            },
                            outlineColor: 'grey',//导航的边框颜色
                            outlineWidth: 1		 //导航的边框线
                        },
                        //series: seriesOptions
                        /**series: [
                         <c:forEach var="obj" items="${list}" varStatus="status">
                         {
                 name: '${obj.name}',
							data: ${obj.data}
						}<c:if test="${status.index < (fn:length(list)-1)}">,</c:if>
                         </c:forEach>
                         ]**/
                        series: [
                            <c:forEach var="detail" items="${list}" varStatus="status">
                            <c:if test="${detail.sgs == '3I0'}">
                            {
                                name: '${detail.sgs}录波',
                                turboThreshold: 30000,
                                type: 'spline',
                                id: 'dataseries',
                                legend: {
                                    enabled: true,
                                    layout: 'horizontal',
                                    backgroundColor: 'white',
                                    align: 'center',
                                    verticalAlign: 'bottom',
                                    borderWidth: 1
                                },
                                data: [
                                    <c:forEach var="dd" items="${detail.objList}" varStatus="status2">
                                    {
                                        xindex: '${dd.xindex}',
                                        y:${dd.datas}
                                        //<c:if test="${status.index==500}">,marker: { symbol: 'url(/images/2.png)' }</c:if>
                                    }<c:if test="${status2.index < (fn:length(detail.objList)-1)}">, </c:if></c:forEach>
                                ]
                            }
                            <c:if test="${status.index < (fn:length(list)-1)}">, </c:if></c:if></c:forEach>
                        ]
                    });
                }

                if (ea > 0) {
                    //EA   EB    EC
                    chart2 = new Highcharts.Chart({
                        //$('#container').highcharts('StockChart', {
                        chart: {renderTo: 'container2', type: 'spline', zoomType: 'x'},
                        colors: ["#F90", "#393", "#C00", "#04AFFF", "#00E3E3", "#EA0000"],//波形线的颜色 黄，绿，红#FF0 #0F0 #F00    #F90 #393 #C00
                        rangeSelector: {
                            enabled: false
                        },
                        rangeSelector: {
                            enabled: true,
                            inputEnabled: false,//不显示右上角的日期 from ... to ...
                            buttons: [
                                {
                                    type: 'all',
                                    text: '所有'
                                }
                            ],
                            selected: 4
                        },
                        title: {
                            text: '<c:set var="sampling_rate" value="${applicationScope.sampling_rate}"/>${obj.dcu_no} ${obj.address}<c:if test="${alarm_id==\'-1\'}">瞬时</c:if><c:if test="${alarm_id!=\'-1\'}">录波</c:if>波形   UTC时间${dateValueUTC}.<fmt:formatNumber value="${sample*1000000/sampling_rate}" minIntegerDigits="6" maxIntegerDigits="6" pattern="000000"/>',    //图表标题
                            x: -20 //center
                        },
                        xAxis: {
                            title: {
                                text: '工频周波(电压)'
                            },
                            categories: [<c:forEach begin="1" end="${xindex}" step="1" var="i">${i}<c:if test="${i < xindex}">, </c:if></c:forEach>],
                            tickInterval: 256,//x轴的刻度间隔
                            labels: {
                                formatter: function () {
                                    return (this.value - 1) / 256 - ${pre_cycle} +'';
                                }
                            }
                        },
                        yAxis: {
                            title: {
                                text: '幅值 (V)'
                            },
                            labels: {
                                formatter: function () {
                                    return this.value //+'A'
                                }
                                , align: 'left'
                            },
                            opposite: true,
                            plotLines: [{
                                value: 0,
                                width: 2,
                                color: 'silver'
                            }]
                        },
                        tooltip: {
                            headerFormat: "<b><small>{point.key}</small></b><br/>",
                            pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}V</b><br/>',
                            valueDecimals: '${jingdu}',
                            shared: true
                        },
                        plotOptions: {
                            series: {
                                //compare: 'percent'
                            }, line: {
                                dataLabels: {
                                    enabled: false      //是否在线上显示数值true:显示     false:不显示
                                },
                                enableMouseTracking: true //移上去是否显示数值
                            }
                        },
                        exporting: {
                            // 是否允许导出
                            enabled: true,
                            buttons: {//自定义按钮
                                contextButton: {
                                    menuItems: [
                                        {
                                            text: '导出JPEG文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'image/jpeg'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出PNG文件',
                                            onclick: function () {
                                                this.exportChart();
                                            }
                                        },
                                        {
                                            text: '导出PDF文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'application/pdf'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出Excel文件',
                                            onclick: function () {
                                                Highcharts.post('http://export.hcharts.cn/cvs.php', {
                                                    csv: chart.getCSV()
                                                });
                                            }
                                        }
                                    ]
                                }
                            }
                        },
                        credits: {
                            enabled: false // 禁用版权信息
                        },
                        scrollbar: {
                            enabled: true//滚动条
                        },
                        navigator: {
                            enabled: false,//导航,放大缩小
                            series: {
                                type: 'areaspline',
                                color: '#4572A7',
                                fillOpacity: 0,//导航里面的阴影填充
                                dataGrouping: {
                                    smoothed: true
                                },
                                lineWidth: 0,//导航里面的波形
                                marker: {
                                    enabled: false
                                }
                            },
                            outlineColor: 'grey',//导航的边框颜色
                            outlineWidth: 1		 //导航的边框线
                        },
                        //series: seriesOptions
                        /**series: [
                         <c:forEach var="obj" items="${list}" varStatus="status">
                         {
                 name: '${obj.name}',
							data: ${obj.data}
						}<c:if test="${status.index < (fn:length(list)-1)}">,</c:if>
                         </c:forEach>
                         ]**/
                        series: [
                            <c:forEach var="detail" items="${list}" varStatus="status">
                            <c:if test="${detail.sgs == 'EA相' || detail.sgs == 'EB相' || detail.sgs == 'EC相'}">
                            {
                                name: '${detail.sgs}录波',
                                turboThreshold: 30000,
                                type: 'spline',
                                id: 'dataseries',
                                legend: {
                                    enabled: true,
                                    layout: 'horizontal',
                                    backgroundColor: 'white',
                                    align: 'center',
                                    verticalAlign: 'bottom',
                                    borderWidth: 1
                                },
                                data: [
                                    <c:forEach var="dd" items="${detail.objList}" varStatus="status2">
                                    {
                                        xindex: '${dd.xindex}',
                                        y:${dd.datas}
                                        //<c:if test="${status.index==500}">,marker: { symbol: 'url(/images/2.png)' }</c:if>
                                    }<c:if test="${status2.index < (fn:length(detail.objList)-1)}">, </c:if></c:forEach>
                                ]
                            }
                            <c:if test="${status.index < (fn:length(list)-1)}">, </c:if></c:if></c:forEach>
                        ]
                    });
                }


                if (e0 > 0) {
                    //3E0
                    chart3 = new Highcharts.Chart({
                        //$('#container').highcharts('StockChart', {
                        chart: {renderTo: 'container3', type: 'spline', zoomType: 'x'},
                        colors: ["#F90", "#393", "#C00", "#04AFFF", "#00E3E3", "#EA0000"],//波形线的颜色 黄，绿，红#FF0 #0F0 #F00    #F90 #393 #C00
                        rangeSelector: {
                            enabled: false
                        },
                        rangeSelector: {
                            enabled: true,
                            inputEnabled: false,//不显示右上角的日期 from ... to ...
                            buttons: [
                                {
                                    type: 'all',
                                    text: '所有'
                                }
                            ],
                            selected: 4
                        },
                        title: {
                            text: '<c:set var="sampling_rate" value="${applicationScope.sampling_rate}"/>${obj.dcu_no} ${obj.address}<c:if test="${alarm_id==\'-1\'}">瞬时</c:if><c:if test="${alarm_id!=\'-1\'}">录波</c:if>波形   UTC时间${dateValueUTC}.<fmt:formatNumber value="${sample*1000000/sampling_rate}" minIntegerDigits="6" maxIntegerDigits="6" pattern="000000"/>',    //图表标题
                            x: -20 //center
                        },
                        xAxis: {
                            title: {
                                text: '工频周波(3E0)'
                            },
                            categories: [<c:forEach begin="1" end="${xindex}" step="1" var="i">${i}<c:if test="${i < xindex}">, </c:if></c:forEach>],
                            tickInterval: 256,//x轴的刻度间隔
                            labels: {
                                formatter: function () {
                                    return (this.value - 1) / 256 - ${pre_cycle} +'';
                                }
                            }
                        },
                        yAxis: {
                            title: {
                                text: '幅值 (V)'
                            },
                            labels: {
                                formatter: function () {
                                    return this.value //+'A'
                                }
                                , align: 'left'
                            },
                            opposite: true,
                            plotLines: [{
                                value: 0,
                                width: 2,
                                color: 'silver'
                            }]
                        },
                        tooltip: {
                            headerFormat: "<b><small>{point.key}</small></b><br/>",
                            pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}V</b><br/>',
                            valueDecimals: '${jingdu}',
                            shared: true
                        },
                        plotOptions: {
                            series: {
                                //compare: 'percent'
                            }, line: {
                                dataLabels: {
                                    enabled: false      //是否在线上显示数值true:显示     false:不显示
                                },
                                enableMouseTracking: true //移上去是否显示数值
                            }
                        },
                        exporting: {
                            // 是否允许导出
                            enabled: true,
                            buttons: {//自定义按钮
                                contextButton: {
                                    menuItems: [
                                        {
                                            text: '导出JPEG文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'image/jpeg'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出PNG文件',
                                            onclick: function () {
                                                this.exportChart();
                                            }
                                        },
                                        {
                                            text: '导出PDF文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'application/pdf'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出Excel文件',
                                            onclick: function () {
                                                Highcharts.post('http://export.hcharts.cn/cvs.php', {
                                                    csv: chart.getCSV()
                                                });
                                            }
                                        }
                                    ]
                                }
                            }
                        },
                        /**legend: {
				enabled:true,
				layout: 'horizontal',
				backgroundColor: 'white',
				align: 'center',
				verticalAlign: 'bottom',
				borderWidth: 1
				//borderRadius: 0,//可以拖动的图例
				//title: {
				//	text: ':: 拖动我'
				//},
				//floating: true,
				//draggable: true,
				//zIndex: 20
			},**/
                        credits: {
                            enabled: false // 禁用版权信息
                        },
                        scrollbar: {
                            enabled: true//滚动条
                        },
                        navigator: {
                            enabled: false,//导航,放大缩小
                            series: {
                                type: 'areaspline',
                                color: '#4572A7',
                                fillOpacity: 0,//导航里面的阴影填充
                                dataGrouping: {
                                    smoothed: true
                                },
                                lineWidth: 0,//导航里面的波形
                                marker: {
                                    enabled: false
                                }
                            },
                            outlineColor: 'grey',//导航的边框颜色
                            outlineWidth: 1		 //导航的边框线
                        },
                        //series: seriesOptions
                        /**series: [
                         <c:forEach var="obj" items="${list}" varStatus="status">
                         {
                 name: '${obj.name}',
							data: ${obj.data}
						}<c:if test="${status.index < (fn:length(list)-1)}">,</c:if>
                         </c:forEach>
                         ]**/
                        series: [
                            <c:forEach var="detail" items="${list}" varStatus="status">
                            <c:if test="${detail.sgs == '3E0'}">
                            {
                                name: '${detail.sgs}录波',
                                turboThreshold: 30000,
                                type: 'spline',
                                id: 'dataseries',
                                legend: {
                                    enabled: true,
                                    layout: 'horizontal',
                                    backgroundColor: 'white',
                                    align: 'center',
                                    verticalAlign: 'bottom',
                                    borderWidth: 1
                                    /**borderRadius: 0,//可以拖动的图例
                                     title: {
									text: ':: 拖动我'
								},
                                     floating: true,
                                     draggable: true,
                                     zIndex: 20**/
                                },
                                data: [
                                    <c:forEach var="dd" items="${detail.objList}" varStatus="status2">
                                    {
                                        xindex: '${dd.xindex}',
                                        y:${dd.datas}
                                        //<c:if test="${status.index==500}">,marker: { symbol: 'url(/images/2.png)' }</c:if>
                                    }<c:if test="${status2.index < (fn:length(detail.objList)-1)}">, </c:if></c:forEach>
                                ]
                            }
                            <c:if test="${status.index < (fn:length(list)-1)}">, </c:if></c:if></c:forEach>
                        ]
                    });
                }

                if (ua > 0) {
                    //电源侧 UA UB  UC
                    chart4 = new Highcharts.Chart({
                        //$('#container').highcharts('StockChart', {
                        chart: {renderTo: 'container4', type: 'spline', zoomType: 'x'},
                        colors: ["#F90", "#393", "#C00", "#04AFFF", "#00E3E3", "#EA0000"],//波形线的颜色 黄，绿，红#FF0 #0F0 #F00    #F90 #393 #C00
                        rangeSelector: {
                            enabled: false
                        },
                        rangeSelector: {
                            enabled: true,
                            inputEnabled: false,//不显示右上角的日期 from ... to ...
                            buttons: [
                                {
                                    type: 'all',
                                    text: '所有'
                                }
                            ],
                            selected: 4
                        },
                        title: {
                            text: '<c:set var="sampling_rate" value="${applicationScope.sampling_rate}"/>${obj.dcu_no} ${obj.address}<c:if test="${alarm_id==\'-1\'}">瞬时</c:if><c:if test="${alarm_id!=\'-1\'}">录波</c:if>波形   UTC时间${dateValueUTC}.<fmt:formatNumber value="${sample*1000000/sampling_rate}" minIntegerDigits="6" maxIntegerDigits="6" pattern="000000"/>',    //图表标题
                            x: -20 //center
                        },
                        xAxis: {
                            title: {
                                text: '工频周波(电源侧电压)'
                            },
                            categories: [<c:forEach begin="1" end="${xindex}" step="1" var="i">${i}<c:if test="${i < xindex}">, </c:if></c:forEach>],
                            tickInterval: 256,//x轴的刻度间隔
                            labels: {
                                formatter: function () {
                                    return (this.value - 1) / 256 - ${pre_cycle} +'';
                                }
                            }
                        },
                        yAxis: {
                            title: {
                                text: '幅值 (V)'
                            },
                            labels: {
                                formatter: function () {
                                    return this.value //+'A'
                                }
                                , align: 'left'
                            },
                            opposite: true,
                            plotLines: [{
                                value: 0,
                                width: 2,
                                color: 'silver'
                            }]
                        },
                        tooltip: {
                            headerFormat: "<b><small>{point.key}</small></b><br/>",
                            pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}V</b><br/>',
                            valueDecimals: '${jingdu}',
                            shared: true
                        },
                        plotOptions: {
                            series: {
                                //compare: 'percent'
                            }, line: {
                                dataLabels: {
                                    enabled: false      //是否在线上显示数值true:显示     false:不显示
                                },
                                enableMouseTracking: true //移上去是否显示数值
                            }
                        },
                        exporting: {
                            // 是否允许导出
                            enabled: true,
                            buttons: {//自定义按钮
                                contextButton: {
                                    menuItems: [
                                        {
                                            text: '导出JPEG文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'image/jpeg'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出PNG文件',
                                            onclick: function () {
                                                this.exportChart();
                                            }
                                        },
                                        {
                                            text: '导出PDF文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'application/pdf'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出Excel文件',
                                            onclick: function () {
                                                Highcharts.post('http://export.hcharts.cn/cvs.php', {
                                                    csv: chart.getCSV()
                                                });
                                            }
                                        }
                                    ]
                                }
                            }
                        },
                        /**legend: {
				enabled:true,
				layout: 'horizontal',
				backgroundColor: 'white',
				align: 'center',
				verticalAlign: 'bottom',
				borderWidth: 1
				//borderRadius: 0,//可以拖动的图例
				//title: {
				//	text: ':: 拖动我'
				//},
				//floating: true,
				//draggable: true,
				//zIndex: 20
			},**/
                        credits: {
                            enabled: false // 禁用版权信息
                        },
                        scrollbar: {
                            enabled: true//滚动条
                        },
                        navigator: {
                            enabled: false,//导航,放大缩小
                            series: {
                                type: 'areaspline',
                                color: '#4572A7',
                                fillOpacity: 0,//导航里面的阴影填充
                                dataGrouping: {
                                    smoothed: true
                                },
                                lineWidth: 0,//导航里面的波形
                                marker: {
                                    enabled: false
                                }
                            },
                            outlineColor: 'grey',//导航的边框颜色
                            outlineWidth: 1		 //导航的边框线
                        },
                        //series: seriesOptions
                        /**series: [
                         <c:forEach var="obj" items="${list}" varStatus="status">
                         {
                 name: '${obj.name}',
							data: ${obj.data}
						}<c:if test="${status.index < (fn:length(list)-1)}">,</c:if>
                         </c:forEach>
                         ]**/
                        series: [
                            <c:forEach var="detail" items="${list}" varStatus="status">
                            <c:if test="${detail.sgs == 'Ua相' || detail.sgs == 'Ub相' || detail.sgs == 'Uc相'}">
                            {
                                name: '${detail.sgs}录波',
                                turboThreshold: 30000,
                                type: 'spline',
                                id: 'dataseries',
                                legend: {
                                    enabled: true,
                                    layout: 'horizontal',
                                    backgroundColor: 'white',
                                    align: 'center',
                                    verticalAlign: 'bottom',
                                    borderWidth: 1
                                    /**borderRadius: 0,//可以拖动的图例
                                     title: {
									text: ':: 拖动我'
								},
                                     floating: true,
                                     draggable: true,
                                     zIndex: 20**/
                                },
                                data: [
                                    <c:forEach var="dd" items="${detail.objList}" varStatus="status2">
                                    {
                                        xindex: '${dd.xindex}',
                                        y:${dd.datas}
                                        //<c:if test="${status.index==500}">,marker: { symbol: 'url(/images/2.png)' }</c:if>
                                    }<c:if test="${status2.index < (fn:length(detail.objList)-1)}">, </c:if></c:forEach>
                                ]
                            }
                            <c:if test="${status.index < (fn:length(list)-1)}">, </c:if></c:if></c:forEach>
                        ]
                    });
                }

                if (u0 > 0) {
                    //电源侧 3U0
                    chart5 = new Highcharts.Chart({
                        //$('#container').highcharts('StockChart', {
                        chart: {renderTo: 'container5', type: 'spline', zoomType: 'x'},
                        colors: ["#F90", "#393", "#C00", "#04AFFF", "#00E3E3", "#EA0000"],//波形线的颜色 黄，绿，红#FF0 #0F0 #F00    #F90 #393 #C00
                        rangeSelector: {
                            enabled: false
                        },
                        rangeSelector: {
                            enabled: true,
                            inputEnabled: false,//不显示右上角的日期 from ... to ...
                            buttons: [
                                {
                                    type: 'all',
                                    text: '所有'
                                }
                            ],
                            selected: 4
                        },
                        title: {
                            text: '<c:set var="sampling_rate" value="${applicationScope.sampling_rate}"/>${obj.dcu_no} ${obj.address}<c:if test="${alarm_id==\'-1\'}">瞬时</c:if><c:if test="${alarm_id!=\'-1\'}">录波</c:if>波形   UTC时间${dateValueUTC}.<fmt:formatNumber value="${sample*1000000/sampling_rate}" minIntegerDigits="6" maxIntegerDigits="6" pattern="000000"/>',    //图表标题
                            x: -20 //center
                        },
                        xAxis: {
                            title: {
                                text: '工频周波(电源侧3U0)'
                            },
                            categories: [<c:forEach begin="1" end="${xindex}" step="1" var="i">${i}<c:if test="${i < xindex}">, </c:if></c:forEach>],
                            tickInterval: 256,//x轴的刻度间隔
                            labels: {
                                formatter: function () {
                                    return (this.value - 1) / 256 - ${pre_cycle} +'';
                                }
                            }
                        },
                        yAxis: {
                            title: {
                                text: '幅值 (V)'
                            },
                            labels: {
                                formatter: function () {
                                    return this.value //+'A'
                                }
                                , align: 'left'
                            },
                            opposite: true,
                            plotLines: [{
                                value: 0,
                                width: 2,
                                color: 'silver'
                            }]
                        },
                        tooltip: {
                            headerFormat: "<b><small>{point.key}</small></b><br/>",
                            pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}V</b><br/>',
                            valueDecimals: '${jingdu}',
                            shared: true
                        },
                        plotOptions: {
                            series: {
                                //compare: 'percent'
                            }, line: {
                                dataLabels: {
                                    enabled: false      //是否在线上显示数值true:显示     false:不显示
                                },
                                enableMouseTracking: true //移上去是否显示数值
                            }
                        },
                        exporting: {
                            // 是否允许导出
                            enabled: true,
                            buttons: {//自定义按钮
                                contextButton: {
                                    menuItems: [
                                        {
                                            text: '导出JPEG文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'image/jpeg'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出PNG文件',
                                            onclick: function () {
                                                this.exportChart();
                                            }
                                        },
                                        {
                                            text: '导出PDF文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'application/pdf'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出Excel文件',
                                            onclick: function () {
                                                Highcharts.post('http://export.hcharts.cn/cvs.php', {
                                                    csv: chart.getCSV()
                                                });
                                            }
                                        }
                                    ]
                                }
                            }
                        },
                        /**legend: {
				enabled:true,
				layout: 'horizontal',
				backgroundColor: 'white',
				align: 'center',
				verticalAlign: 'bottom',
				borderWidth: 1
				//borderRadius: 0,//可以拖动的图例
				//title: {
				//	text: ':: 拖动我'
				//},
				//floating: true,
				//draggable: true,
				//zIndex: 20
			},**/
                        credits: {
                            enabled: false // 禁用版权信息
                        },
                        scrollbar: {
                            enabled: true//滚动条
                        },
                        navigator: {
                            enabled: false,//导航,放大缩小
                            series: {
                                type: 'areaspline',
                                color: '#4572A7',
                                fillOpacity: 0,//导航里面的阴影填充
                                dataGrouping: {
                                    smoothed: true
                                },
                                lineWidth: 0,//导航里面的波形
                                marker: {
                                    enabled: false
                                }
                            },
                            outlineColor: 'grey',//导航的边框颜色
                            outlineWidth: 1		 //导航的边框线
                        },
                        //series: seriesOptions
                        /**series: [
                         <c:forEach var="obj" items="${list}" varStatus="status">
                         {
                 name: '${obj.name}',
							data: ${obj.data}
						}<c:if test="${status.index < (fn:length(list)-1)}">,</c:if>
                         </c:forEach>
                         ]**/
                        series: [
                            <c:forEach var="detail" items="${list}" varStatus="status">
                            <c:if test="${detail.sgs == '3U0'}">
                            {
                                name: '${detail.sgs}录波',
                                turboThreshold: 30000,
                                type: 'spline',
                                id: 'dataseries',
                                legend: {
                                    enabled: true,
                                    layout: 'horizontal',
                                    backgroundColor: 'white',
                                    align: 'center',
                                    verticalAlign: 'bottom',
                                    borderWidth: 1
                                    /**borderRadius: 0,//可以拖动的图例
                                     title: {
									text: ':: 拖动我'
								},
                                     floating: true,
                                     draggable: true,
                                     zIndex: 20**/
                                },
                                data: [
                                    <c:forEach var="dd" items="${detail.objList}" varStatus="status2">
                                    {
                                        xindex: '${dd.xindex}',
                                        y:${dd.datas}
                                        //<c:if test="${status.index==500}">,marker: { symbol: 'url(/images/2.png)' }</c:if>
                                    }<c:if test="${status2.index < (fn:length(detail.objList)-1)}">, </c:if></c:forEach>
                                ]
                            }
                            <c:if test="${status.index < (fn:length(list)-1)}">, </c:if></c:if></c:forEach>
                        ]
                    });
                }

                if (uab > 0) {
                    //电源侧 UAB UBC  UCA
                    chart_uab = new Highcharts.Chart({
                        //$('#container').highcharts('StockChart', {
                        chart: {renderTo: 'container_uab', type: 'spline', zoomType: 'x'},
                        colors: ["#F90", "#393", "#C00", "#04AFFF", "#00E3E3", "#EA0000"],//波形线的颜色 黄，绿，红#FF0 #0F0 #F00    #F90 #393 #C00
                        rangeSelector: {
                            enabled: false
                        },
                        rangeSelector: {
                            enabled: true,
                            inputEnabled: false,//不显示右上角的日期 from ... to ...
                            buttons: [
                                {
                                    type: 'all',
                                    text: '所有'
                                }
                            ],
                            selected: 4
                        },
                        title: {
                            text: '<c:set var="sampling_rate" value="${applicationScope.sampling_rate}"/>${obj.dcu_no} ${obj.address}<c:if test="${alarm_id==\'-1\'}">瞬时</c:if><c:if test="${alarm_id!=\'-1\'}">录波</c:if>波形   UTC时间${dateValueUTC}.<fmt:formatNumber value="${sample*1000000/sampling_rate}" minIntegerDigits="6" maxIntegerDigits="6" pattern="000000"/>',    //图表标题
                            x: -20 //center
                        },
                        xAxis: {
                            title: {
                                text: '工频周波(电源侧线电压)'
                            },
                            categories: [<c:forEach begin="1" end="${xindex}" step="1" var="i">${i}<c:if test="${i < xindex}">, </c:if></c:forEach>],
                            tickInterval: 256,//x轴的刻度间隔
                            labels: {
                                formatter: function () {
                                    return (this.value - 1) / 256 - ${pre_cycle} +'';
                                }
                            }
                        },
                        yAxis: {
                            title: {
                                text: '幅值 (V)'
                            },
                            labels: {
                                formatter: function () {
                                    return this.value //+'A'
                                }
                                , align: 'left'
                            },
                            opposite: true,
                            plotLines: [{
                                value: 0,
                                width: 2,
                                color: 'silver'
                            }]
                        },
                        tooltip: {
                            headerFormat: "<b><small>{point.key}</small></b><br/>",
                            pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}V</b><br/>',
                            valueDecimals: '${jingdu}',
                            shared: true
                        },
                        plotOptions: {
                            series: {
                                //compare: 'percent'
                            }, line: {
                                dataLabels: {
                                    enabled: false      //是否在线上显示数值true:显示     false:不显示
                                },
                                enableMouseTracking: true //移上去是否显示数值
                            }
                        },
                        exporting: {
                            // 是否允许导出
                            enabled: true,
                            buttons: {//自定义按钮
                                contextButton: {
                                    menuItems: [
                                        {
                                            text: '导出JPEG文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'image/jpeg'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出PNG文件',
                                            onclick: function () {
                                                this.exportChart();
                                            }
                                        },
                                        {
                                            text: '导出PDF文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'application/pdf'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出Excel文件',
                                            onclick: function () {
                                                Highcharts.post('http://export.hcharts.cn/cvs.php', {
                                                    csv: chart.getCSV()
                                                });
                                            }
                                        }
                                    ]
                                }
                            }
                        },
                        /**legend: {
				enabled:true,
				layout: 'horizontal',
				backgroundColor: 'white',
				align: 'center',
				verticalAlign: 'bottom',
				borderWidth: 1
				//borderRadius: 0,//可以拖动的图例
				//title: {
				//	text: ':: 拖动我'
				//},
				//floating: true,
				//draggable: true,
				//zIndex: 20
			},**/
                        credits: {
                            enabled: false // 禁用版权信息
                        },
                        scrollbar: {
                            enabled: true//滚动条
                        },
                        navigator: {
                            enabled: false,//导航,放大缩小
                            series: {
                                type: 'areaspline',
                                color: '#4572A7',
                                fillOpacity: 0,//导航里面的阴影填充
                                dataGrouping: {
                                    smoothed: true
                                },
                                lineWidth: 0,//导航里面的波形
                                marker: {
                                    enabled: false
                                }
                            },
                            outlineColor: 'grey',//导航的边框颜色
                            outlineWidth: 1		 //导航的边框线
                        },
                        //series: seriesOptions
                        /**series: [
                         <c:forEach var="obj" items="${list}" varStatus="status">
                         {
                 name: '${obj.name}',
							data: ${obj.data}
						}<c:if test="${status.index < (fn:length(list)-1)}">,</c:if>
                         </c:forEach>
                         ]**/
                        series: [
                            <c:forEach var="detail" items="${list}" varStatus="status">
                            <c:if test="${detail.sgs == 'Uab相' || detail.sgs == 'Ubc相' || detail.sgs == 'Uca相'}">
                            {
                                name: '${detail.sgs}录波',
                                turboThreshold: 30000,
                                type: 'spline',
                                id: 'dataseries',
                                legend: {
                                    enabled: true,
                                    layout: 'horizontal',
                                    backgroundColor: 'white',
                                    align: 'center',
                                    verticalAlign: 'bottom',
                                    borderWidth: 1
                                    /**borderRadius: 0,//可以拖动的图例
                                     title: {
									text: ':: 拖动我'
								},
                                     floating: true,
                                     draggable: true,
                                     zIndex: 20**/
                                },
                                data: [
                                    <c:forEach var="dd" items="${detail.objList}" varStatus="status2">
                                    {
                                        xindex: '${dd.xindex}',
                                        y:${dd.datas}
                                        //<c:if test="${status.index==500}">,marker: { symbol: 'url(/images/2.png)' }</c:if>
                                    }<c:if test="${status2.index < (fn:length(detail.objList)-1)}">, </c:if></c:forEach>
                                ]
                            }
                            <c:if test="${status.index < (fn:length(list)-1)}">, </c:if></c:if></c:forEach>
                        ]
                    });
                }

                if (ula > 0) {
                    //负荷侧ULA ULB ULC
                    chart6 = new Highcharts.Chart({
                        //$('#container').highcharts('StockChart', {
                        chart: {renderTo: 'container6', type: 'spline', zoomType: 'x'},
                        colors: ["#F90", "#393", "#C00", "#04AFFF", "#00E3E3", "#EA0000"],//波形线的颜色 黄，绿，红#FF0 #0F0 #F00    #F90 #393 #C00
                        rangeSelector: {
                            enabled: false
                        },
                        rangeSelector: {
                            enabled: true,
                            inputEnabled: false,//不显示右上角的日期 from ... to ...
                            buttons: [
                                {
                                    type: 'all',
                                    text: '所有'
                                }
                            ],
                            selected: 4
                        },
                        title: {
                            text: '<c:set var="sampling_rate" value="${applicationScope.sampling_rate}"/>${obj.dcu_no} ${obj.address}<c:if test="${alarm_id==\'-1\'}">瞬时</c:if><c:if test="${alarm_id!=\'-1\'}">录波</c:if>波形   UTC时间${dateValueUTC}.<fmt:formatNumber value="${sample*1000000/sampling_rate}" minIntegerDigits="6" maxIntegerDigits="6" pattern="000000"/>',    //图表标题
                            x: -20 //center
                        },
                        xAxis: {
                            title: {
                                text: '工频周波(负荷侧电压)'
                            },
                            categories: [<c:forEach begin="1" end="${xindex}" step="1" var="i">${i}<c:if test="${i < xindex}">, </c:if></c:forEach>],
                            tickInterval: 256,//x轴的刻度间隔
                            labels: {
                                formatter: function () {
                                    return (this.value - 1) / 256 - ${pre_cycle} +'';
                                }
                            }
                        },
                        yAxis: {
                            title: {
                                text: '幅值 (V)'
                            },
                            labels: {
                                formatter: function () {
                                    return this.value //+'A'
                                }
                                , align: 'left'
                            },
                            opposite: true,
                            plotLines: [{
                                value: 0,
                                width: 2,
                                color: 'silver'
                            }]
                        },
                        tooltip: {
                            headerFormat: "<b><small>{point.key}</small></b><br/>",
                            pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}V</b><br/>',
                            valueDecimals: '${jingdu}',
                            shared: true
                        },
                        plotOptions: {
                            series: {
                                //compare: 'percent'
                            }, line: {
                                dataLabels: {
                                    enabled: false      //是否在线上显示数值true:显示     false:不显示
                                },
                                enableMouseTracking: true //移上去是否显示数值
                            }
                        },
                        exporting: {
                            // 是否允许导出
                            enabled: true,
                            buttons: {//自定义按钮
                                contextButton: {
                                    menuItems: [
                                        {
                                            text: '导出JPEG文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'image/jpeg'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出PNG文件',
                                            onclick: function () {
                                                this.exportChart();
                                            }
                                        },
                                        {
                                            text: '导出PDF文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'application/pdf'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出Excel文件',
                                            onclick: function () {
                                                Highcharts.post('http://export.hcharts.cn/cvs.php', {
                                                    csv: chart.getCSV()
                                                });
                                            }
                                        }
                                    ]
                                }
                            }
                        },
                        /**legend: {
				enabled:true,
				layout: 'horizontal',
				backgroundColor: 'white',
				align: 'center',
				verticalAlign: 'bottom',
				borderWidth: 1
				//borderRadius: 0,//可以拖动的图例
				//title: {
				//	text: ':: 拖动我'
				//},
				//floating: true,
				//draggable: true,
				//zIndex: 20
			},**/
                        credits: {
                            enabled: false // 禁用版权信息
                        },
                        scrollbar: {
                            enabled: true//滚动条
                        },
                        navigator: {
                            enabled: false,//导航,放大缩小
                            series: {
                                type: 'areaspline',
                                color: '#4572A7',
                                fillOpacity: 0,//导航里面的阴影填充
                                dataGrouping: {
                                    smoothed: true
                                },
                                lineWidth: 0,//导航里面的波形
                                marker: {
                                    enabled: false
                                }
                            },
                            outlineColor: 'grey',//导航的边框颜色
                            outlineWidth: 1		 //导航的边框线
                        },
                        //series: seriesOptions
                        /**series: [
                         <c:forEach var="obj" items="${list}" varStatus="status">
                         {
                 name: '${obj.name}',
							data: ${obj.data}
						}<c:if test="${status.index < (fn:length(list)-1)}">,</c:if>
                         </c:forEach>
                         ]**/
                        series: [
                            <c:forEach var="detail" items="${list}" varStatus="status">
                            <c:if test="${detail.sgs == 'ULa相' || detail.sgs == 'ULb相' || detail.sgs == 'ULc相'}">
                            {
                                name: '${detail.sgs}录波',
                                turboThreshold: 30000,
                                type: 'spline',
                                id: 'dataseries',
                                legend: {
                                    enabled: true,
                                    layout: 'horizontal',
                                    backgroundColor: 'white',
                                    align: 'center',
                                    verticalAlign: 'bottom',
                                    borderWidth: 1
                                    /**borderRadius: 0,//可以拖动的图例
                                     title: {
									text: ':: 拖动我'
								},
                                     floating: true,
                                     draggable: true,
                                     zIndex: 20**/
                                },
                                data: [
                                    <c:forEach var="dd" items="${detail.objList}" varStatus="status2">
                                    {
                                        xindex: '${dd.xindex}',
                                        y:${dd.datas}
                                        //<c:if test="${status.index==500}">,marker: { symbol: 'url(/images/2.png)' }</c:if>
                                    }<c:if test="${status2.index < (fn:length(detail.objList)-1)}">, </c:if></c:forEach>
                                ]
                            }
                            <c:if test="${status.index < (fn:length(list)-1)}">, </c:if></c:if></c:forEach>
                        ]
                    });
                }

                if (ulab > 0) {
                    //电源侧 ULAB ULBC  ULCA
                    chart_ulab = new Highcharts.Chart({
                        //$('#container').highcharts('StockChart', {
                        chart: {renderTo: 'container_ulab', type: 'spline', zoomType: 'x'},
                        colors: ["#F90", "#393", "#C00", "#04AFFF", "#00E3E3", "#EA0000"],//波形线的颜色 黄，绿，红#FF0 #0F0 #F00    #F90 #393 #C00
                        rangeSelector: {
                            enabled: false
                        },
                        rangeSelector: {
                            enabled: true,
                            inputEnabled: false,//不显示右上角的日期 from ... to ...
                            buttons: [
                                {
                                    type: 'all',
                                    text: '所有'
                                }
                            ],
                            selected: 4
                        },
                        title: {
                            text: '<c:set var="sampling_rate" value="${applicationScope.sampling_rate}"/>${obj.dcu_no} ${obj.address}<c:if test="${alarm_id==\'-1\'}">瞬时</c:if><c:if test="${alarm_id!=\'-1\'}">录波</c:if>波形   UTC时间${dateValueUTC}.<fmt:formatNumber value="${sample*1000000/sampling_rate}" minIntegerDigits="6" maxIntegerDigits="6" pattern="000000"/>',    //图表标题
                            x: -20 //center
                        },
                        xAxis: {
                            title: {
                                text: '工频周波(负荷侧线电压)'
                            },
                            categories: [<c:forEach begin="1" end="${xindex}" step="1" var="i">${i}<c:if test="${i < xindex}">, </c:if></c:forEach>],
                            tickInterval: 256,//x轴的刻度间隔
                            labels: {
                                formatter: function () {
                                    return (this.value - 1) / 256 - ${pre_cycle} +'';
                                }
                            }
                        },
                        yAxis: {
                            title: {
                                text: '幅值 (V)'
                            },
                            labels: {
                                formatter: function () {
                                    return this.value //+'A'
                                }
                                , align: 'left'
                            },
                            opposite: true,
                            plotLines: [{
                                value: 0,
                                width: 2,
                                color: 'silver'
                            }]
                        },
                        tooltip: {
                            headerFormat: "<b><small>{point.key}</small></b><br/>",
                            pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}V</b><br/>',
                            valueDecimals: '${jingdu}',
                            shared: true
                        },
                        plotOptions: {
                            series: {
                                //compare: 'percent'
                            }, line: {
                                dataLabels: {
                                    enabled: false      //是否在线上显示数值true:显示     false:不显示
                                },
                                enableMouseTracking: true //移上去是否显示数值
                            }
                        },
                        exporting: {
                            // 是否允许导出
                            enabled: true,
                            buttons: {//自定义按钮
                                contextButton: {
                                    menuItems: [
                                        {
                                            text: '导出JPEG文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'image/jpeg'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出PNG文件',
                                            onclick: function () {
                                                this.exportChart();
                                            }
                                        },
                                        {
                                            text: '导出PDF文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'application/pdf'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出Excel文件',
                                            onclick: function () {
                                                Highcharts.post('http://export.hcharts.cn/cvs.php', {
                                                    csv: chart.getCSV()
                                                });
                                            }
                                        }
                                    ]
                                }
                            }
                        },
                        /**legend: {
				enabled:true,
				layout: 'horizontal',
				backgroundColor: 'white',
				align: 'center',
				verticalAlign: 'bottom',
				borderWidth: 1
				//borderRadius: 0,//可以拖动的图例
				//title: {
				//	text: ':: 拖动我'
				//},
				//floating: true,
				//draggable: true,
				//zIndex: 20
			},**/
                        credits: {
                            enabled: false // 禁用版权信息
                        },
                        scrollbar: {
                            enabled: true//滚动条
                        },
                        navigator: {
                            enabled: false,//导航,放大缩小
                            series: {
                                type: 'areaspline',
                                color: '#4572A7',
                                fillOpacity: 0,//导航里面的阴影填充
                                dataGrouping: {
                                    smoothed: true
                                },
                                lineWidth: 0,//导航里面的波形
                                marker: {
                                    enabled: false
                                }
                            },
                            outlineColor: 'grey',//导航的边框颜色
                            outlineWidth: 1		 //导航的边框线
                        },
                        //series: seriesOptions
                        /**series: [
                         <c:forEach var="obj" items="${list}" varStatus="status">
                         {
                 name: '${obj.name}',
							data: ${obj.data}
						}<c:if test="${status.index < (fn:length(list)-1)}">,</c:if>
                         </c:forEach>
                         ]**/
                        series: [
                            <c:forEach var="detail" items="${list}" varStatus="status">
                            <c:if test="${detail.sgs == 'ULab相' || detail.sgs == 'ULbc相' || detail.sgs == 'ULca相'}">
                            {
                                name: '${detail.sgs}录波',
                                turboThreshold: 30000,
                                type: 'spline',
                                id: 'dataseries',
                                legend: {
                                    enabled: true,
                                    layout: 'horizontal',
                                    backgroundColor: 'white',
                                    align: 'center',
                                    verticalAlign: 'bottom',
                                    borderWidth: 1
                                    /**borderRadius: 0,//可以拖动的图例
                                     title: {
									text: ':: 拖动我'
								},
                                     floating: true,
                                     draggable: true,
                                     zIndex: 20**/
                                },
                                data: [
                                    <c:forEach var="dd" items="${detail.objList}" varStatus="status2">
                                    {
                                        xindex: '${dd.xindex}',
                                        y:${dd.datas}
                                        //<c:if test="${status.index==500}">,marker: { symbol: 'url(/images/2.png)' }</c:if>
                                    }<c:if test="${status2.index < (fn:length(detail.objList)-1)}">, </c:if></c:forEach>
                                ]
                            }
                            <c:if test="${status.index < (fn:length(list)-1)}">, </c:if></c:if></c:forEach>
                        ]
                    });
                }

                if (ul0 > 0) {
                    //负荷侧3U0
                    chart7 = new Highcharts.Chart({
                        //$('#container').highcharts('StockChart', {
                        chart: {renderTo: 'container7', type: 'spline', zoomType: 'x'},
                        colors: ["#F90", "#393", "#C00", "#04AFFF", "#00E3E3", "#EA0000"],//波形线的颜色 黄，绿，红#FF0 #0F0 #F00    #F90 #393 #C00
                        rangeSelector: {
                            enabled: false
                        },
                        rangeSelector: {
                            enabled: true,
                            inputEnabled: false,//不显示右上角的日期 from ... to ...
                            buttons: [
                                {
                                    type: 'all',
                                    text: '所有'
                                }
                            ],
                            selected: 4
                        },
                        title: {
                            text: '<c:set var="sampling_rate" value="${applicationScope.sampling_rate}"/>${obj.dcu_no} ${obj.address}<c:if test="${alarm_id==\'-1\'}">瞬时</c:if><c:if test="${alarm_id!=\'-1\'}">录波</c:if>波形   UTC时间${dateValueUTC}.<fmt:formatNumber value="${sample*1000000/sampling_rate}" minIntegerDigits="6" maxIntegerDigits="6" pattern="000000"/>',    //图表标题
                            x: -20 //center
                        },
                        xAxis: {
                            title: {
                                text: '工频周波(负荷侧3U0)'
                            },
                            categories: [<c:forEach begin="1" end="${xindex}" step="1" var="i">${i}<c:if test="${i < xindex}">, </c:if></c:forEach>],
                            tickInterval: 256,//x轴的刻度间隔
                            labels: {
                                formatter: function () {
                                    return (this.value - 1) / 256 - ${pre_cycle} +'';
                                }
                            }
                        },
                        yAxis: {
                            title: {
                                text: '幅值 (V)'
                            },
                            labels: {
                                formatter: function () {
                                    return this.value //+'A'
                                }
                                , align: 'left'
                            },
                            opposite: true,
                            plotLines: [{
                                value: 0,
                                width: 2,
                                color: 'silver'
                            }]
                        },
                        tooltip: {
                            headerFormat: "<b><small>{point.key}</small></b><br/>",
                            pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}V</b><br/>',
                            valueDecimals: '${jingdu}',
                            shared: true
                        },
                        plotOptions: {
                            series: {
                                //compare: 'percent'
                            }, line: {
                                dataLabels: {
                                    enabled: false      //是否在线上显示数值true:显示     false:不显示
                                },
                                enableMouseTracking: true //移上去是否显示数值
                            }
                        },
                        exporting: {
                            // 是否允许导出
                            enabled: true,
                            buttons: {//自定义按钮
                                contextButton: {
                                    menuItems: [
                                        {
                                            text: '导出JPEG文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'image/jpeg'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出PNG文件',
                                            onclick: function () {
                                                this.exportChart();
                                            }
                                        },
                                        {
                                            text: '导出PDF文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'application/pdf'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出Excel文件',
                                            onclick: function () {
                                                Highcharts.post('http://export.hcharts.cn/cvs.php', {
                                                    csv: chart.getCSV()
                                                });
                                            }
                                        }
                                    ]
                                }
                            }
                        },
                        /**legend: {
				enabled:true,
				layout: 'horizontal',
				backgroundColor: 'white',
				align: 'center',
				verticalAlign: 'bottom',
				borderWidth: 1
				//borderRadius: 0,//可以拖动的图例
				//title: {
				//	text: ':: 拖动我'
				//},
				//floating: true,
				//draggable: true,
				//zIndex: 20
			},**/
                        credits: {
                            enabled: false // 禁用版权信息
                        },
                        scrollbar: {
                            enabled: true//滚动条
                        },
                        navigator: {
                            enabled: false,//导航,放大缩小
                            series: {
                                type: 'areaspline',
                                color: '#4572A7',
                                fillOpacity: 0,//导航里面的阴影填充
                                dataGrouping: {
                                    smoothed: true
                                },
                                lineWidth: 0,//导航里面的波形
                                marker: {
                                    enabled: false
                                }
                            },
                            outlineColor: 'grey',//导航的边框颜色
                            outlineWidth: 1		 //导航的边框线
                        },
                        //series: seriesOptions
                        /**series: [
                         <c:forEach var="obj" items="${list}" varStatus="status">
                         {
                 name: '${obj.name}',
							data: ${obj.data}
						}<c:if test="${status.index < (fn:length(list)-1)}">,</c:if>
                         </c:forEach>
                         ]**/
                        series: [
                            <c:forEach var="detail" items="${list}" varStatus="status">
                            <c:if test="${detail.sgs == 'UL0'}">
                            {
                                name: '${detail.sgs}录波',
                                turboThreshold: 30000,
                                type: 'spline',
                                id: 'dataseries',
                                legend: {
                                    enabled: true,
                                    layout: 'horizontal',
                                    backgroundColor: 'white',
                                    align: 'center',
                                    verticalAlign: 'bottom',
                                    borderWidth: 1
                                    /**borderRadius: 0,//可以拖动的图例
                                     title: {
									text: ':: 拖动我'
								},
                                     floating: true,
                                     draggable: true,
                                     zIndex: 20**/
                                },
                                data: [
                                    <c:forEach var="dd" items="${detail.objList}" varStatus="status2">
                                    {
                                        xindex: '${dd.xindex}',
                                        y:${dd.datas}
                                        //<c:if test="${status.index==500}">,marker: { symbol: 'url(/images/2.png)' }</c:if>
                                    }<c:if test="${status2.index < (fn:length(detail.objList)-1)}">, </c:if></c:forEach>
                                ]
                            }
                            <c:if test="${status.index < (fn:length(list)-1)}">, </c:if></c:if></c:forEach>
                        ]
                    });
                }

                if (sw > 0) {
                    //SWITCH
                    chart8 = new Highcharts.Chart({
                        //$('#container').highcharts('StockChart', {
                        chart: {renderTo: 'container8', type: 'spline', zoomType: 'x'},
                        colors: ["#f86b1d", "#2486b9", "#5c2223", "#eea2a4", "#7cabb1", "#815f25"],//波形线的颜色 黄，绿，红#FF0 #0F0 #F00    #F90 #393 #C00
                        rangeSelector: {
                            enabled: false
                        },
                        rangeSelector: {
                            enabled: true,
                            inputEnabled: false,//不显示右上角的日期 from ... to ...
                            buttons: [
                                {
                                    type: 'all',
                                    text: '所有'
                                }
                            ],
                            selected: 4
                        },
                        title: {
                            text: '<c:set var="sampling_rate" value="${applicationScope.sampling_rate}"/>${obj.dcu_no} ${obj.address}开入量   UTC时间${dateValueUTC}.<fmt:formatNumber value="${sample*1000000/sampling_rate}" minIntegerDigits="6" maxIntegerDigits="6" pattern="000000"/>',    //图表标题
                            x: -20 //center
                        },
                        xAxis: {
                            title: {
                                text: '工频周波(Input 开关状态)'
                            },
                            offset:-9,
                            categories: [<c:forEach begin="1" end="${xindex}" step="1" var="i">${i}<c:if test="${i < xindex}">, </c:if></c:forEach>],
                            tickInterval: 256,//x轴的刻度间隔
                            labels: {
                                formatter: function () {
                                    return (this.value - 1) / 256 - ${pre_cycle} +'';
                                }
                            }
                        },
                        yAxis: {
                            title: {
                                text: ''
                            },
                            gridLineColor: 'white',
                            tickPositions: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
                            categories: ['0','1','0','1','0','1','0','1','0','1','0','1']
                        },
                        tooltip: {
                            enabled: false
                        },
                        plotOptions: {
                            series: {
                                marker: {
                                    radius: 0
                                }
                            }
                        },
                        exporting: {
                            // 是否允许导出
                            enabled: true,
                            buttons: {//自定义按钮
                                contextButton: {
                                    menuItems: [
                                        {
                                            text: '导出JPEG文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'image/jpeg'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出PNG文件',
                                            onclick: function () {
                                                this.exportChart();
                                            }
                                        },
                                        {
                                            text: '导出PDF文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'application/pdf'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出Excel文件',
                                            onclick: function () {
                                                Highcharts.post('http://export.hcharts.cn/cvs.php', {
                                                    csv: chart.getCSV()
                                                });
                                            }
                                        }
                                    ]
                                }
                            }
                        },
                        /**legend: {
				enabled:true,
				layout: 'horizontal',
				backgroundColor: 'white',
				align: 'center',
				verticalAlign: 'bottom',
				borderWidth: 1
				//borderRadius: 0,//可以拖动的图例
				//title: {
				//	text: ':: 拖动我'
				//},
				//floating: true,
				//draggable: true,
				//zIndex: 20
			},**/
                        credits: {
                            enabled: false // 禁用版权信息
                        },
                        scrollbar: {
                            enabled: true//滚动条
                        },
                        navigator: {
                            enabled: false,//导航,放大缩小
                            series: {
                                type: 'areaspline',
                                color: '#4572A7',
                                fillOpacity: 0,//导航里面的阴影填充
                                dataGrouping: {
                                    smoothed: true
                                },
                                lineWidth: 0,//导航里面的波形
                                marker: {
                                    enabled: false
                                }
                            },
                            outlineColor: 'grey',//导航的边框颜色
                            outlineWidth: 1		 //导航的边框线
                        },
                        //series: seriesOptions
                        /**series: [
                         <c:forEach var="obj" items="${list}" varStatus="status">
                         {
                 name: '${obj.name}',
							data: ${obj.data}
						}<c:if test="${status.index < (fn:length(list)-1)}">,</c:if>
                         </c:forEach>
                         ]**/
                        series: [
                            <c:forEach var="detail" items="${list}" varStatus="status">
                            <c:if test="${detail.sgs == 'switch' || detail.sgs == 'action' || detail.sgs == 'reclose' || detail.sgs == 'sc' || detail.sgs == 'zsc' || detail.sgs == 'lock' }">
                            {
                                name: '${detail.sgs}录波',
                                turboThreshold: 30000,
                                type: 'spline',
                                id: 'dataseries',
                                legend: {
                                    enabled: true,
                                    layout: 'horizontal',
                                    backgroundColor: 'white',
                                    align: 'center',
                                    verticalAlign: 'bottom',
                                    borderWidth: 1
                                    /**borderRadius: 0,//可以拖动的图例
                                     title: {
                                            text: ':: 拖动我'
                                        },
                                     floating: true,
                                     draggable: true,
                                     zIndex: 20**/
                                },
                                step:'end',
                                        data: [
                                            <c:forEach var="dd" items="${detail.objList}" varStatus="status2">
                                                {
                                                    xindex: '${dd.xindex}',
                                                <c:if test="${detail.sgs == 'switch'}">y:${dd.datas}</c:if>
                                                <c:if test="${detail.sgs == 'action'}">y:${dd.datas}+2</c:if>
                                                <c:if test="${detail.sgs == 'reclose'}">y:${dd.datas}+4</c:if>
                                                <c:if test="${detail.sgs == 'sc'}">y:${dd.datas}+6</c:if>
                                                <c:if test="${detail.sgs == 'zsc'}">y:${dd.datas}+8</c:if>
                                                <c:if test="${detail.sgs == 'lock'}">y:${dd.datas}+10</c:if>

                                                //<c:if test="${status.index==500}">,marker: { symbol: 'url(/images/2.png)' }</c:if>
                                                }<c:if test="${status2.index < (fn:length(detail.objList)-1)}">, </c:if></c:forEach>
                                            ]
                                        }
                    <c:if test="${status.index < (fn:length(list)-1)}">, </c:if></c:if></c:forEach>
                ]
                });
                }

                if (ona > 0) {
                    //ONA
                    chart9 = new Highcharts.Chart({
                        //$('#container').highcharts('StockChart', {
                        chart: {renderTo: 'container9', type: 'spline', zoomType: 'x'},
                        colors: ["#2486b9", "#5c2223", "#eea2a4", "#7cabb1", "#815f25"],//波形线的颜色
                        rangeSelector: {
                            enabled: false
                        },
                        rangeSelector: {
                            enabled: true,
                            inputEnabled: false,//不显示右上角的日期 from ... to ...
                            buttons: [
                                {
                                    type: 'all',
                                    text: '所有'
                                }
                            ],
                            selected: 4
                        },
                        title: {
                            text: '<c:set var="sampling_rate" value="${applicationScope.sampling_rate}"/>${obj.dcu_no} ${obj.address}开出量   UTC时间${dateValueUTC}.<fmt:formatNumber value="${sample*1000000/sampling_rate}" minIntegerDigits="6" maxIntegerDigits="6" pattern="000000"/>',    //图表标题
                            x: -20 //center
                        },
                        xAxis: {
                            title: {
                                text: '工频周波(Output输出量)'
                            },
                            offset:-9,
                            categories: [<c:forEach begin="1" end="${xindex}" step="1" var="i">${i}<c:if test="${i < xindex}">, </c:if></c:forEach>],
                            tickInterval: 256,//x轴的刻度间隔
                            labels: {
                                formatter: function () {
                                    return (this.value - 1) / 256 - ${pre_cycle} +'';
                                }
                            }
                        },
                        yAxis: {
                            title: {
                                text: ''
                            },
                            gridLineColor: 'white',
                            tickPositions: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
                            categories: ['0','1','0','1','0','1','0','1','0','1']
                        },
                        tooltip: {
                            enabled: false
                        },
                        plotOptions: {
                            series: {
                                marker: {
                                    radius: 0
                                }
                            }
                        },
                        exporting: {
                            // 是否允许导出
                            enabled: true,
                            buttons: {//自定义按钮
                                contextButton: {
                                    menuItems: [
                                        {
                                            text: '导出JPEG文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'image/jpeg'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出PNG文件',
                                            onclick: function () {
                                                this.exportChart();
                                            }
                                        },
                                        {
                                            text: '导出PDF文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'application/pdf'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出Excel文件',
                                            onclick: function () {
                                                Highcharts.post('http://export.hcharts.cn/cvs.php', {
                                                    csv: chart.getCSV()
                                                });
                                            }
                                        }
                                    ]
                                }
                            }
                        },
                        /**legend: {
				enabled:true,
				layout: 'horizontal',
				backgroundColor: 'white',
				align: 'center',
				verticalAlign: 'bottom',
				borderWidth: 1
				//borderRadius: 0,//可以拖动的图例
				//title: {
				//	text: ':: 拖动我'
				//},
				//floating: true,
				//draggable: true,
				//zIndex: 20
			},**/
                        credits: {
                            enabled: false // 禁用版权信息
                        },
                        scrollbar: {
                            enabled: true//滚动条
                        },
                        navigator: {
                            enabled: false,//导航,放大缩小
                            series: {
                                type: 'areaspline',
                                color: '#4572A7',
                                fillOpacity: 0,//导航里面的阴影填充
                                dataGrouping: {
                                    smoothed: true
                                },
                                lineWidth: 0,//导航里面的波形
                                marker: {
                                    enabled: false
                                }
                            },
                            outlineColor: 'grey',//导航的边框颜色
                            outlineWidth: 1		 //导航的边框线
                        },
                        //series: seriesOptions
                        /**series: [
                         <c:forEach var="obj" items="${list}" varStatus="status">
                         {
                 name: '${obj.name}',
							data: ${obj.data}
						}<c:if test="${status.index < (fn:length(list)-1)}">,</c:if>
                         </c:forEach>
                         ]**/
                        series: [
                            <c:forEach var="detail" items="${list}" varStatus="status">
                            <c:if test="${detail.sgs == 'ona' || detail.sgs == 'offa' || detail.sgs == 'tripa' || detail.sgs == 'forevertripa' || detail.sgs == 'resettripa'}">
                            {
                                name: '${detail.sgs}录波',
                                turboThreshold: 30000,
                                type: 'spline',
                                id: 'dataseries',
                                legend: {
                                    enabled: true,
                                    layout: 'horizontal',
                                    backgroundColor: 'white',
                                    align: 'center',
                                    verticalAlign: 'bottom',
                                    borderWidth: 1
                                    /**borderRadius: 0,//可以拖动的图例
                                     title: {
									text: ':: 拖动我'
								},
                                     floating: true,
                                     draggable: true,
                                     zIndex: 20**/
                                },
                                step: 'end',
                                data: [
                                    <c:forEach var="dd" items="${detail.objList}" varStatus="status2">
                                    {
                                        xindex: '${dd.xindex}',
                                        <c:if test="${detail.sgs == 'ona'}">y:${dd.datas}</c:if>
                                        <c:if test="${detail.sgs == 'offa'}">y:${dd.datas}+2</c:if>
                                        <c:if test="${detail.sgs == 'tripa'}">y:${dd.datas}+4</c:if>
                                        <c:if test="${detail.sgs == 'forevertripa'}">y:${dd.datas}+6</c:if>
                                        <c:if test="${detail.sgs == 'resettripa'}">y:${dd.datas}+8</c:if>

                                        //<c:if test="${status.index==500}">,marker: { symbol: 'url(/images/2.png)' }</c:if>
                                    }<c:if test="${status2.index < (fn:length(detail.objList)-1)}">, </c:if></c:forEach>
                                ]
                            }
                            <c:if test="${status.index < (fn:length(list)-1)}">, </c:if></c:if></c:forEach>
                        ]
                    });
                }

                if (ling > 0) {
                    //零序电压
                    chart20 = new Highcharts.Chart({
                        //$('#container').highcharts('StockChart', {
                        chart: {renderTo: 'container20', type: 'spline', zoomType: 'x'},
                        colors: ["#F90", "#393", "#C00", "#04AFFF", "#00E3E3", "#EA0000"],//波形线的颜色 黄，绿，红#FF0 #0F0 #F00    #F90 #393 #C00
                        rangeSelector: {
                            enabled: false
                        },
                        rangeSelector: {
                            enabled: true,
                            inputEnabled: false,//不显示右上角的日期 from ... to ...
                            buttons: [
                                {
                                    type: 'all',
                                    text: '所有'
                                }
                            ],
                            selected: 4
                        },
                        title: {
                            text: '<c:set var="sampling_rate" value="${applicationScope.sampling_rate}"/>${obj.dcu_no} ${obj.address}<c:if test="${alarm_id==\'-1\'}">瞬时</c:if><c:if test="${alarm_id!=\'-1\'}">录波</c:if>波形   UTC时间${dateValueUTC}.<fmt:formatNumber value="${sample*1000000/sampling_rate}" minIntegerDigits="6" maxIntegerDigits="6" pattern="000000"/>',    //图表标题
                            x: -20 //center
                        },
                        xAxis: {
                            title: {
                                text: '工频周波(零序电压)'
                            },
                            categories: [<c:forEach begin="1" end="${xindex}" step="1" var="i">${i}<c:if test="${i < xindex}">, </c:if></c:forEach>],
                            tickInterval: 256,//x轴的刻度间隔
                            labels: {
                                formatter: function () {
                                    return (this.value - 1) / 256 - ${pre_cycle} +'';
                                }
                            }
                        },
                        yAxis: {
                            title: {
                                text: '幅值 (V)'
                            },
                            labels: {
                                formatter: function () {
                                    return this.value //+'A'
                                }
                                , align: 'left'
                            },
                            opposite: true,
                            plotLines: [{
                                value: 0,
                                width: 2,
                                color: 'silver'
                            }]
                        },
                        tooltip: {
                            headerFormat: "<b><small>{point.key}</small></b><br/>",
                            pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}V</b><br/>',
                            valueDecimals: '${jingdu}',
                            shared: true
                        },
                        plotOptions: {
                            series: {
                                //compare: 'percent'
                            }, line: {
                                dataLabels: {
                                    enabled: false      //是否在线上显示数值true:显示     false:不显示
                                },
                                enableMouseTracking: true //移上去是否显示数值
                            }
                        },
                        exporting: {
                            // 是否允许导出
                            enabled: true,
                            buttons: {//自定义按钮
                                contextButton: {
                                    menuItems: [
                                        {
                                            text: '导出JPEG文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'image/jpeg'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出PNG文件',
                                            onclick: function () {
                                                this.exportChart();
                                            }
                                        },
                                        {
                                            text: '导出PDF文件',
                                            onclick: function () {
                                                this.exportChart({
                                                    type: 'application/pdf'
                                                });
                                            }
                                        },
                                        {
                                            text: '导出Excel文件',
                                            onclick: function () {
                                                Highcharts.post('http://export.hcharts.cn/cvs.php', {
                                                    csv: chart.getCSV()
                                                });
                                            }
                                        }
                                    ]
                                }
                            }
                        },
                        /**legend: {
				enabled:true,
				layout: 'horizontal',
				backgroundColor: 'white',
				align: 'center',
				verticalAlign: 'bottom',
				borderWidth: 1
				//borderRadius: 0,//可以拖动的图例
				//title: {
				//	text: ':: 拖动我'
				//},
				//floating: true,
				//draggable: true,
				//zIndex: 20
			},**/
                        credits: {
                            enabled: false // 禁用版权信息
                        },
                        scrollbar: {
                            enabled: true//滚动条
                        },
                        navigator: {
                            enabled: false,//导航,放大缩小
                            series: {
                                type: 'areaspline',
                                color: '#4572A7',
                                fillOpacity: 0,//导航里面的阴影填充
                                dataGrouping: {
                                    smoothed: true
                                },
                                lineWidth: 0,//导航里面的波形
                                marker: {
                                    enabled: false
                                }
                            },
                            outlineColor: 'grey',//导航的边框颜色
                            outlineWidth: 1		 //导航的边框线
                        },
                        //series: seriesOptions
                        /**series: [
                         <c:forEach var="obj" items="${list}" varStatus="status">
                         {
                     name: '${obj.name}',
							data: ${obj.data}
						}<c:if test="${status.index < (fn:length(list)-1)}">,</c:if>
                         </c:forEach>
                         ]**/
                        series: [
                            <c:forEach var="detail" items="${list}" varStatus="status">
                            <c:if test="${detail.sgs == '零序电压'}">
                            {
                                name: '${detail.sgs}录波',
                                turboThreshold: 30000,
                                type: 'spline',
                                id: 'dataseries',
                                legend: {
                                    enabled: true,
                                    layout: 'horizontal',
                                    backgroundColor: 'white',
                                    align: 'center',
                                    verticalAlign: 'bottom',
                                    borderWidth: 1
                                    /**borderRadius: 0,//可以拖动的图例
                                     title: {
									text: ':: 拖动我'
								},
                                     floating: true,
                                     draggable: true,
                                     zIndex: 20**/
                                },
                                data: [
                                    <c:forEach var="dd" items="${detail.objList}" varStatus="status2">
                                    {
                                        xindex: '${dd.xindex}',
                                        y:${dd.datas}
                                        //<c:if test="${status.index==500}">,marker: { symbol: 'url(/images/2.png)' }</c:if>
                                    }<c:if test="${status2.index < (fn:length(detail.objList)-1)}">, </c:if></c:forEach>
                                ]
                            }
                            <c:if test="${status.index < (fn:length(list)-1)}">, </c:if></c:if></c:forEach>
                        ]
                    });
                }


            }
        });

    </script>
    <style>
        .oz_r {
            background-color: #FFFFFF;
        }
    </style>
    <title><c:if test="${alarm_id=='-1'}">瞬时</c:if><c:if test="${alarm_id!='-1'}">录波</c:if>波形</title>
</head>

<body>
<div class="head"></div>
<form name="form1" action="<c:url value='/dcu.DcuActionHandler.dcuStock'/>" method="post">
    <c:set var="cindexs" value="0"/>

    <table border="1" cellspacing="0" cellpadding="0" class="ui" style="text-align:center">
        <tr>
            <td style="width:80%; text-align:center">
                <div id="container20"></div>
                <div id="container"></div>
                <div id="container1"></div>
                <div id="container2"></div>
                <div id="container3"></div>
                <div id="container4"></div>
                <div id="container5"></div>
                <div id="container_uab"></div>
                <div id="container6"></div>
                <div id="container7"></div>
                <div id="container_ulab"></div>
                <div id="container8" style="height: 400px"></div>
                <div id="container9" style="height: 400px"></div>
            </td>
        </tr>
    </table>
    <br/>
    <!--
<table border="1" cellspacing="0" cellpadding="0" class="ui effect">

  <tr>
    <th>采样点</th>
<c:forEach var="detail" items="${strList}" varStatus="status">
<c:if test="${status.index==0}">
    <c:forEach var="dd" items="${detail}" varStatus="status2">
  		<th>${fn:substring(dd, 0,2)}</th>
    </c:forEach>
</c:if>
</c:forEach>
  </tr>

<c:if test="${fn:length(strList)==0||strList==null}">
  <tr><td colspan="4"><fmt:message key="no_record"/></td></tr>
</c:if>
<c:forEach var="detail" items="${strList}" varStatus="status">
  <tr>
  	<td>${status.index+1}</td>
    <c:forEach var="dd" items="${detail}" varStatus="status2">
  		<td>${fn:substring(dd, 3,fn:length(dd))}</td>
    </c:forEach>
  </tr>
</c:forEach>
</table>
-->
</form>
<!--<p style="margin-left:20px;"> <button id="getcsv">获取CVS数据</button> <button id="download">导出Excel文件</button> </p>-->
</body>
</html>