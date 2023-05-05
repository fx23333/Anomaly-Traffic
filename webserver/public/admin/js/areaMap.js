
$(function () {

    // import * as echarts from 'echarts';

    /*1.注册人数  数据可视化*/
    /*1.1准容器渲染图标*/
    /*1.2准备数据 */
    /*1.3引入核心echarts文件*/
    /*1.4获取dom容器*/
    // var firstDom = document.querySelector('.picTable:first-child');
    // /*1.5初始化dom容器*/
    // var firstCarts = echarts.init(firstDom);



    // /*1.7 渲染图标*/
    // firstCarts.setOption(option);


    var ROOT_PATH = 'https://cdn.jsdelivr.net/gh/apache/echarts-website@asf-site/examples';
    var app = {};

    var chartDom = document.querySelector('.picTable');
    var myChart = echarts.init(chartDom);
    var option;



    $.get(ROOT_PATH + '/data/asset/data/lines-bus.json', function (data) {
        var busLines = [].concat.apply([], data.map(function (busLine, idx) {
            var prevPt;
            var points = [];
            for (var i = 0; i < busLine.length; i += 2) {
                var pt = [busLine[i], busLine[i + 1]];
                if (i > 0) {
                    pt = [
                        prevPt[0] + pt[0],
                        prevPt[1] + pt[1]
                    ];
                }
                prevPt = pt;

                points.push([pt[0] / 1e4, pt[1] / 1e4]);
            }
            console.log(points);
            return {
                coords: points
            };
        }));
        myChart.setOption(option = {
            bmap: {
                center: [116.46, 39.92],
                zoom: 10,
                roam: true,
                mapStyle: {
                    styleJson: [{
                        'featureType': 'water',
                        'elementType': 'all',
                        'stylers': {
                            'color': '#d1d1d1'
                        }
                    }, {
                        'featureType': 'land',
                        'elementType': 'all',
                        'stylers': {
                            'color': '#f3f3f3'
                        }
                    }, {
                        'featureType': 'railway',
                        'elementType': 'all',
                        'stylers': {
                            'visibility': 'off'
                        }
                    }, {
                        'featureType': 'highway',
                        'elementType': 'all',
                        'stylers': {
                            'color': '#fdfdfd'
                        }
                    }, {
                        'featureType': 'highway',
                        'elementType': 'labels',
                        'stylers': {
                            'visibility': 'off'
                        }
                    }, {
                        'featureType': 'arterial',
                        'elementType': 'geometry',
                        'stylers': {
                            'color': '#fefefe'
                        }
                    }, {
                        'featureType': 'arterial',
                        'elementType': 'geometry.fill',
                        'stylers': {
                            'color': '#fefefe'
                        }
                    }, {
                        'featureType': 'poi',
                        'elementType': 'all',
                        'stylers': {
                            'visibility': 'off'
                        }
                    }, {
                        'featureType': 'green',
                        'elementType': 'all',
                        'stylers': {
                            'visibility': 'off'
                        }
                    }, {
                        'featureType': 'subway',
                        'elementType': 'all',
                        'stylers': {
                            'visibility': 'off'
                        }
                    }, {
                        'featureType': 'manmade',
                        'elementType': 'all',
                        'stylers': {
                            'color': '#d1d1d1'
                        }
                    }, {
                        'featureType': 'local',
                        'elementType': 'all',
                        'stylers': {
                            'color': '#d1d1d1'
                        }
                    }, {
                        'featureType': 'arterial',
                        'elementType': 'labels',
                        'stylers': {
                            'visibility': 'off'
                        }
                    }, {
                        'featureType': 'boundary',
                        'elementType': 'all',
                        'stylers': {
                            'color': '#fefefe'
                        }
                    }, {
                        'featureType': 'building',
                        'elementType': 'all',
                        'stylers': {
                            'color': '#d1d1d1'
                        }
                    }, {
                        'featureType': 'label',
                        'elementType': 'labels.text.fill',
                        'stylers': {
                            'color': '#999999'
                        }
                    }]
                }
            },
            series: [{
                type: 'lines',
                coordinateSystem: 'bmap',
                polyline: true,
                data: busLines,
                silent: true,
                lineStyle: {
                    color: 'rgb(200, 35, 45)',
                    opacity: 0.2,
                    width: 1
                },
                progressiveThreshold: 500,
                progressive: 200
            }]
        });
    });

    option && myChart.setOption(option);
d
})



