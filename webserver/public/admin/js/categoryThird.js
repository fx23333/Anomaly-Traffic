$(function(){
    

    /*2.品牌销量  数据可视化*/
    var secondDom = document.querySelector('.picTable:first-child');
    var secondCarts = echarts.init(secondDom);
    var secondOption = {    
        title : {
            text: '损坏数量显示',
            subtext: '2021年4月',
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: ['严重损坏','一般损坏','轻微损坏','正常']
        },
        series : [
            {
                name: '访问来源',
                type: 'pie',
                radius : '55%',
                center: ['50%', '60%'],
                data:[
                    {value:35, name:'严重损坏'},
                    {value:50, name:'一般损坏'},
                    {value:64, name:'轻微损坏'},
                    {value:435, name:'正常'},
                ],
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };
    secondCarts.setOption(secondOption);
})