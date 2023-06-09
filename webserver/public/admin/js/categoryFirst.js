$(function () {
    /*1.分类列表分页展示*/
    var currPage = 1;
    var render = function(){
        getCategoryFirstData({
            page: currPage,
            pageSize: 10
        }, function (data) {
            /*渲染页面*/
            $('tbody').html(template('template',data));
            setPaginator(data.page,Math.ceil(data.total/data.size),render);
        });
    }
    render();
    /*2.分页展示*/
    var setPaginator = function(pageCurr,pageSum,callback){
        /*获取需要初始的元素 使用bootstrapPaginator方法*/
        $('.pagination').bootstrapPaginator({
            /*当前使用的是3版本的bootstrap*/
            bootstrapMajorVersion:3,
            /*配置的字体大小是小号*/
            size:'small',
            /*当前页*/
            currentPage:pageCurr,
            /*一共多少页*/
            totalPages:pageSum,
            /*点击页面事件*/
            onPageClicked:function(event, originalEvent, type, page){
                /*改变当前页再渲染 page当前点击的按钮的页面*/
                currPage = page;
                callback && callback();
            }
        });
    }

    /*3.添加一级分类功能*/
    $('#addBtn').on('click',function () {
       /*显示模态框*/
       $('#addModal').modal('show');
    });
    /*进行表单校验*/
    $('#form').bootstrapValidator({
        /*默认样式*/
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        /*设置校验属性*/
        fields:{
            categoryName:{
                validators: {
                    notEmpty: {
                        message: '一级分类名称不能为空'
                    }
                }
            }
        }
    }).on('success.form.bv', function(e) {
        console.log(0);
        e.preventDefault();
        /*如果点击需要校验  点击的按钮必须是提交按钮  并且和当前表单关联*/
        /*校验成功后的点击事件  完成数据的提交*/
        var $form = $(e.target);
        $.ajax({
            type:'post',
            url:'/category/addTopCategory',
            data:$form.serialize(),
            dataType:'json',
            success:function (data) {
                if(data.success){
                    /*关闭模态框*/
                    $('#addModal').modal('hide');
                    /*渲染第一页*/
                    currPage = 1;
                    render();
                    /*重置表单*/
                    $form.data('bootstrapValidator').resetForm();
                    $form.find('input').val('');
                }
            }
        });
    });


});
/*纯粹的获取数据*/
var getCategoryFirstData = function (params, callback) {
    $.ajax({
        type: 'get',
        url: '/category/queryTopCategoryPaging',
        data: params,
        dataType: 'json',
        success: function (data) {
            callback && callback(data);
        }
    });
}

$(function(){
    /*1.注册人数  数据可视化*/
    /*1.1准容器渲染图标*/
    /*1.2准备数据 */
    /*1.3引入核心echarts文件*/
    /*1.4获取dom容器*/
    var firstDom = document.querySelector('.picTable:first-child');
    /*1.5初始化dom容器*/
    var firstCarts = echarts.init(firstDom);
    /*1.6进行配置和导入数据*/
    option = {
        title : {
            text: '损坏趋势图',
            subtext: '2021年4月',
            x:'center'
        },
        xAxis: {
            type: 'category',
            data: ["1月","2月","3月","4月","5月","6月"]
        },
        yAxis: {
            type: 'value'
        },
        // series: [{
        //     data: [150, 230, 224, 218, 135, 147],
        //     type: 'line'
        // }]
        series: [
            {
                name: '成本（元）',
                type: 'line',
                barWidth: '60%',
                data: [110, 52, 200, 334, 390, 330]
            }
        ]
    };
    /*1.7 渲染图标*/
    firstCarts.setOption(option);

})