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

        init = () ->
            option =
                tooltip:
                    trigger: 'item'
                    formatter: '{b}'
                series: [{
                    name: '中国'
                    type: 'map'
                    mapType: 'china'
                    selectedMode: 'multiple'
                    itemStyle:
                        normal:
                            color: '#87cefa'
                            borderColor: '#708090'
                            label:
                                show: true
                        emphasis:
                            color: '#ffd700'
                            label:
                                show: true
                    data: [
                        {
                            name: '广东'
                            selected: true
                            itemStyle:
                                emphasis:
                                    color: '#f5f5dc'

                        }
                        {
                            name: '西藏'
                            itemStyle:
                                normal:
                                    color: '#20b2aa'
                                emphasis:
                                    color: '#98fb98'

                        }
                        {
                            name: '辽宁'
                            itemStyle:
                                emphasis:
                                    borderColor: '#708090'
                                    borderWidth: 5
                                    color: '#98fb98'

                        }
                    ]
                }]

            mapChart = ec.init($('#chart')[0])

            mapChart.setOption(option)

        exports = {
            init: init
        }
)
