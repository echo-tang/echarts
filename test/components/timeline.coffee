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

        idx = 1

        init = () ->

            option = {
                timeline: {
                    data: [
                        '2013-01-01', '2013-02-01', '2013-03-01', '2013-04-01', '2013-05-01',
                        {name: '2013-06-01', symbol: 'emptyStar6', symbolSize: 8},
                        '2013-07-01', '2013-08-01', '2013-09-01', '2013-10-01', '2013-11-01',
                        {name: '2013-12-01', symbol: 'star6', symbolSize: 8}
                    ],
                    label: {
                        formatter: (s) ->
                            s.slice(0, 7);
                    }
                    currentIndex: 2
                    autoPlay: true
                    playInterval: 2000
                }

                options: [
                    {
                        title: {
                            text: '2013-01 浏览器占比变化',
                            subtext: '纯属虚构'
                        },
                        tooltip: {
                            trigger: 'item',
                            formatter: "{a} <br/>{b} : {c} ({d}%)"
                        },
                        legend: {
                            data: ['Chrome', 'Firefox', 'Safari', 'IE9+', 'IE8-']
                        },
                        toolbox: {
                            show: true,
                            feature: {
                                mark: {show: true},
                                dataView: {show: true, readOnly: false},
                                magicType: {
                                    show: true,
                                    type: ['pie', 'funnel'],
                                    option: {
                                        funnel: {
                                            x: '25%',
                                            width: '50%',
                                            funnelAlign: 'left',
                                            max: 1700
                                        }
                                    }
                                },
                                restore: {show: true},
                                saveAsImage: {show: true}
                            }
                        },
                        series: [
                            {
                                name: '2013-01 浏览器（数据纯属虚构）',
                                type: 'pie',
                                center: ['50%', '45%'],
                                radius: '50%',
                                data: [
                                    {value: idx * 128 + 80, name: 'Chrome'},
                                    {value: idx * 64 + 160, name: 'Firefox'},
                                    {value: idx * 32 + 320, name: 'Safari'},
                                    {value: idx * 16 + 640, name: 'IE9+'},
                                    {value: idx++ * 8 + 1280, name: 'IE8-'}
                                ]
                            }
                        ]
                    },
                    {
                        title: {
                            text: '2013-02 浏览器占比变化',
                            subtext: '纯属虚构'
                        },
                        series: [
                            {
                                name: '2013-02 浏览器（数据纯属虚构）',
                                type: 'pie',
                                data: [
                                    {value: idx * 128 + 80, name: 'Chrome'},
                                    {value: idx * 64 + 160, name: 'Firefox'},
                                    {value: idx * 32 + 320, name: 'Safari'},
                                    {value: idx * 16 + 640, name: 'IE9+'},
                                    {value: idx++ * 8 + 1280, name: 'IE8-'}
                                ]
                            }
                        ]
                    },
                    {
                        title: {
                            text: '2013-03 浏览器占比变化',
                            subtext: '纯属虚构'
                        },
                        series: [
                            {
                                name: '2013-03 浏览器（数据纯属虚构）',
                                type: 'pie',
                                data: [
                                    {value: idx * 128 + 80, name: 'Chrome'},
                                    {value: idx * 64 + 160, name: 'Firefox'},
                                    {value: idx * 32 + 320, name: 'Safari'},
                                    {value: idx * 16 + 640, name: 'IE9+'},
                                    {value: idx++ * 8 + 1280, name: 'IE8-'}
                                ]
                            }
                        ]
                    },
                    {
                        series: [
                            {
                                name: '浏览器（数据纯属虚构）',
                                type: 'pie',
                                data: [
                                    {value: idx * 128 + 80, name: 'Chrome'},
                                    {value: idx * 64 + 160, name: 'Firefox'},
                                    {value: idx * 32 + 320, name: 'Safari'},
                                    {value: idx * 16 + 640, name: 'IE9+'},
                                    {value: idx++ * 8 + 1280, name: 'IE8-'}
                                ]
                            }
                        ]
                    },
                    {
                        series: [
                            {
                                name: '浏览器（数据纯属虚构）',
                                type: 'pie',
                                data: [
                                    {value: idx * 128 + 80, name: 'Chrome'},
                                    {value: idx * 64 + 160, name: 'Firefox'},
                                    {value: idx * 32 + 320, name: 'Safari'},
                                    {value: idx * 16 + 640, name: 'IE9+'},
                                    {value: idx++ * 8 + 1280, name: 'IE8-'}
                                ]
                            }
                        ]
                    },
                    {
                        series: [
                            {
                                name: '浏览器（数据纯属虚构）',
                                type: 'pie',
                                data: [
                                    {value: idx * 128 + 80, name: 'Chrome'},
                                    {value: idx * 64 + 160, name: 'Firefox'},
                                    {value: idx * 32 + 320, name: 'Safari'},
                                    {value: idx * 16 + 640, name: 'IE9+'},
                                    {value: idx++ * 8 + 1280, name: 'IE8-'}
                                ]
                            }
                        ]
                    },
                    {
                        series: [
                            {
                                name: '浏览器（数据纯属虚构）',
                                type: 'pie',
                                data: [
                                    {value: idx * 128 + 80, name: 'Chrome'},
                                    {value: idx * 64 + 160, name: 'Firefox'},
                                    {value: idx * 32 + 320, name: 'Safari'},
                                    {value: idx * 16 + 640, name: 'IE9+'},
                                    {value: idx++ * 8 + 1280, name: 'IE8-'}
                                ]
                            }
                        ]
                    },
                    {
                        series: [
                            {
                                name: '浏览器（数据纯属虚构）',
                                type: 'pie',
                                data: [
                                    {value: idx * 128 + 80, name: 'Chrome'},
                                    {value: idx * 64 + 160, name: 'Firefox'},
                                    {value: idx * 32 + 320, name: 'Safari'},
                                    {value: idx * 16 + 640, name: 'IE9+'},
                                    {value: idx++ * 8 + 1280, name: 'IE8-'}
                                ]
                            }
                        ]
                    },
                    {
                        series: [
                            {
                                name: '浏览器（数据纯属虚构）',
                                type: 'pie',
                                data: [
                                    {value: idx * 128 + 80, name: 'Chrome'},
                                    {value: idx * 64 + 160, name: 'Firefox'},
                                    {value: idx * 32 + 320, name: 'Safari'},
                                    {value: idx * 16 + 640, name: 'IE9+'},
                                    {value: idx++ * 8 + 1280, name: 'IE8-'}
                                ]
                            }
                        ]
                    },
                    {
                        series: [
                            {
                                name: '浏览器（数据纯属虚构）',
                                type: 'pie',
                                data: [
                                    {value: idx * 128 + 80, name: 'Chrome'},
                                    {value: idx * 64 + 160, name: 'Firefox'},
                                    {value: idx * 32 + 320, name: 'Safari'},
                                    {value: idx * 16 + 640, name: 'IE9+'},
                                    {value: idx++ * 8 + 1280, name: 'IE8-'}
                                ]
                            }
                        ]
                    },
                    {
                        series: [
                            {
                                name: '浏览器（数据纯属虚构）',
                                type: 'pie',
                                data: [
                                    {value: idx * 128 + 80, name: 'Chrome'},
                                    {value: idx * 64 + 160, name: 'Firefox'},
                                    {value: idx * 32 + 320, name: 'Safari'},
                                    {value: idx * 16 + 640, name: 'IE9+'},
                                    {value: idx++ * 8 + 1280, name: 'IE8-'}
                                ]
                            }
                        ]
                    },
                    {
                        series: [
                            {
                                name: '浏览器（数据纯属虚构）',
                                type: 'pie',
                                data: [
                                    {value: idx * 128 + 80, name: 'Chrome'},
                                    {value: idx * 64 + 160, name: 'Firefox'},
                                    {value: idx * 32 + 320, name: 'Safari'},
                                    {value: idx * 16 + 640, name: 'IE9+'},
                                    {value: idx++ * 8 + 1280, name: 'IE8-'}
                                ]
                            }
                        ]
                    }
                ]

            }

            timeLineChart = ec.init($('#timeline-chart')[0])

            timeLineChart.setOption(option)

        exports = {
            init: init
        }
)