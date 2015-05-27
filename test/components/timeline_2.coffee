define(
    (require) ->

        $ = require 'jquery'
        ec = require 'echarts'
        require 'echarts/chart/line'
        require 'echarts/chart/bar'
        require 'echarts/chart/scatter'
        require 'echarts/chart/k'
        require 'echarts/chart/pie'
        require 'echarts/chart/radar'
        require 'echarts/chart/force'
        require 'echarts/chart/chord'
        require 'echarts/chart/map'
        require 'echarts/chart/gauge'
        require 'echarts/chart/funnel'
        require 'echarts/chart/venn'
        require 'echarts/chart/treemap'
        require 'echarts/chart/eventRiver'

        option = {
            timeline: {
                data: [2012, 2013]
                notMerge: true
                currentIndex: 1
            }

            options: [
                {
                    title: {
                        text: '2012'
                    }
                    xAxis: [
                        {
                            type: 'category'
                            data: ['iPhone5', 'iPhone5s', 'iPhone6', 'iPhone6+']
                        }
                    ]
                    yAxis: [
                        {
                            type : 'value'
                        }
                    ]
                    series: [
                        {
                            data: [12, 13, 4, 32]
                            name: '销量'
                            type: 'bar'
                        }
                    ]
                }
                {
                    title: {
                        text: '2013'
                    }
                    xAxis: [
                        {
                            type: 'category'
                            data: ['iPhone5', 'iPhone5s']
                        }
                    ]
                    yAxis: [
                        {
                            type : 'value'
                        }
                    ]
                    series: [
                        {
                            data: [5, 2]
                            name: '销量'
                            type: 'bar'
                        }
                    ]
                }
            ]
        }

        ###option = {
            title: {
                text: '2012'
            }
            xAxis: [
                {
                    type: 'time'

                    data: [
                        2013, 2014
                    ]

                    axisLabel:
                        formatter: (str) ->
                            console.log(str, Object.prototype.toString.call(str))
                            return str.getYear() + '年'

#                    boundaryGap: true
                }
            ]
            yAxis: [
                {
                    type : 'time'
                }
            ]
            series: [
                {
                    data: [
                        new Date(2015,1,2)
                        new Date(2016,1,2)
                    ]
                    name: '销量'
                    type: 'bar'
                }
            ]
        }###


        exports = {
            init: () ->

                timeLineChart = ec.init($('#timeline-chart')[0])

                timeLineChart.setOption(option)

        }

        exports
)