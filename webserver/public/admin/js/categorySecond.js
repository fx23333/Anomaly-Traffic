$(function(){
    var firstDom = document.querySelector('.picTable:first-child');
    /*1.5初始化dom容器*/
    var firstCarts = echarts.init(firstDom);
    /*1.6进行配置和导入数据*/

    option = {
        title:{
            text: '告警数量统计图',
            subtext: '2021年上半年',
            x:'center'
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: [
            {
                type: 'category',
                data: ['1月', '2月', '3月', '4月', '5月', '6月'],
                axisTick: {
                    alignWithLabel: true
                }
            }
        ],
        yAxis: [
            {
                type: 'value'
            }
        ],
        series: [
            {
                name: '数量（个）',
                type: 'bar',
                barWidth: '60%',
                data: [34, 52, 55, 68, 101, 23]
            }
        ]
    };
    firstCarts.setOption(option);

})