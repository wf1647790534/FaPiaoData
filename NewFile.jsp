<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insertrrrr title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/static/bootstrap-3.3.5-dist/css/bootstrap.min.css">
<script
	src="${pageContext.request.contextPath }/static/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath }/static/js/jquery-1.12.1.js"></script>

<script src="echarts.js"></script>

</head>
<body>

<div class="col-md-6">
<div id="main2" style=" height: 650px;" ></div>
</div>
<div class="col-md-6">
<div id="main1" style=" height: 650px;" ></div>
		
<div id="main3" style=" height: 650px;" ></div>
</div>

	<script type="text/javascript">
	var myChart = echarts.init(document.getElementById('main2'));

	var xData = function() {
	    var data = [];
	    for (var i = 1; i < 13; i++) {
	        data.push(i + "月份");
	    }
	    return data;
	}();

	option = {
	    backgroundColor: "#344b58",
	    "title": {
	        "text": "本年进项发票与销项发票金额统计",
	        "subtext": "BY 发票表",
	        x: "4%",

	        textStyle: {
	            color: '#fff',
	            fontSize: '22'
	        },
	        subtextStyle: {
	            color: '#90979c',
	            fontSize: '16',

	        },
	    },
	    "tooltip": {
	        "trigger": "axis",
	        "axisPointer": {
	            "type": "shadow",
	            textStyle: {
	                color: "#fff"
	            }

	        },
	    },
	    "grid": {
	        "borderWidth": 0,
	        "top": 110,
	        "bottom": 95,
	        textStyle: {
	            color: "#fff"
	        }
	    },
	    "legend": {
	        x: '4%',
	        top: '11%',
	        textStyle: {
	            color: '#90979c',
	        },
	        "data": ['销项', '进项', '平均']
	    },
	     

	    "calculable": true,
	    "xAxis": [{
	        "type": "category",
	        "axisLine": {
	            lineStyle: {
	                color: '#90979c'
	            }
	        },
	        "splitLine": {
	            "show": false
	        },
	        "axisTick": {
	            "show": false
	        },
	        "splitArea": {
	            "show": false
	        },
	        "axisLabel": {
	            "interval": 0,

	        },
	        "data": xData,
	    }],
	    "yAxis": [{
	        "type": "value",
	        "splitLine": {
	            "show": false
	        },
	        "axisLine": {
	            lineStyle: {
	                color: '#90979c'
	            }
	        },
	        "axisTick": {
	            "show": false
	        },
	        "axisLabel": {
	            "interval": 0,

	        },
	        "splitArea": {
	            "show": false
	        },

	    }],
	    "dataZoom": [{
	        "show": true,
	        "height": 30,
	        "xAxisIndex": [
	            0
	        ],
	        bottom: 30,
	        "start": 10,
	        "end": 80,
	        handleIcon: 'path://M306.1,413c0,2.2-1.8,4-4,4h-59.8c-2.2,0-4-1.8-4-4V200.8c0-2.2,1.8-4,4-4h59.8c2.2,0,4,1.8,4,4V413z',
	        handleSize: '110%',
	        handleStyle:{
	            color:"#d3dee5",
	            
	        },
	           textStyle:{
	            color:"#fff"},
	           borderColor:"#90979c"
	        
	        
	    }, {
	        "type": "inside",
	        "show": true,
	        "height": 15,
	        "start": 1,
	        "end": 35
	    }],
	    "series": [{
	            "name": "销项",
	            "type": "bar",
	            "stack": "总量",
	            "barMaxWidth": 35,
	            "barGap": "10%",
	            "itemStyle": {
	                "normal": {
	                    "color": "rgba(255,144,128,1)",
	                    "label": {
	                        "show": true,
	                        "textStyle": {
	                            "color": "#fff"
	                        },
	                        "position": "insideTop",
	                        formatter: function(p) {
	                            return p.value > 0 ? (p.value) : '';
	                        }
	                    }
	                }
	            },
	            "data": [
	                709,
	                1917,
	                2455,
	                2610,
	                1719,
	                1433,
	                1544,
	                3285,
	                5208,
	                3372,
	                2484,
	                4078
	            ],
	        },

	        {
	            "name": "进项",
	            "type": "bar",
	            "stack": "总量",
	            "itemStyle": {
	                "normal": {
	                    "color": "rgba(0,191,183,1)",
	                    "barBorderRadius": 0,
	                    "label": {
	                        "show": true,
	                        "position": "top",
	                        formatter: function(p) {
	                            return p.value > 0 ? (p.value) : '';
	                        }
	                    }
	                }
	            },
	            "data": [
	                327,
	                1776,
	                507,
	                1200,
	                800,
	                482,
	                204,
	                1390,
	                1001,
	                951,
	                381,
	                220
	            ]
	        }, {
	            "name": "总数",
	            "type": "line",
	            "stack": "总量",
	            symbolSize:10,
	            symbol:'circle',
	            "itemStyle": {
	                "normal": {
	                    "color": "rgba(252,230,48,1)",
	                    "barBorderRadius": 0,
	                    "label": {
	                        "show": true,
	                        "position": "top",
	                        formatter: function(p) {
	                            return p.value > 0 ? (p.value) : '';
	                        }
	                    }
	                }
	            },
	            "data": [
	                1036,
	                3693,
	                2962,
	                3810,
	                2519,
	                1915,
	                1748,
	                4675,
	                6209,
	                4323,
	                2865,
	                4298
	            ]
	        },
	    ]
	}
	  myChart.setOption(option);
	</script>

<script type="text/javascript">
var myChart = echarts.init(document.getElementById('main1'));

//------------------------------------------------以下的变量为最终插入数据的变量------------------------------------------------------------
//条形图x轴
var xAxisBarChart = [];
//条形图数据
var dataBarChart = [];
//布朗尼一周销量（7个数）
var dataBrownies = [];
//马卡龙一周销量（7个数）
var dataMacarons = [];
//提拉米苏一周销量（7个数）
var dataTiramisu = [];
//时间轴数据
var timelineData = [];
//数据插入图表
var optionsData = [];

//------------------------------------------------以下的变量为数据转换时的变量------------------------------------------------------------
//极坐标轴显示星期几
var weekDay = 0;
//全数据数组
var sourceArray = [];
//判断是否排序
var SortOrNot = false;
//反序排序：从大到小
var compare = function(x, y) {
      if (x.value < y.value) {
          return 1;
      } else if (x.value > y.value) {
          return -1;
      } else {
          return 0;
      }
  }
  //柱状图数据的映射集合，实现排序的转换
var dataBarChartMap = new Map();
//柱状图数据的寄存器，最后一步再导入到dataBarChart中
var dataBarChartTemp = [];

//图表加载
option = {
  baseOption: {
      timeline: {
          x: 0,
          axisType: 'category',
          orient: 'vertical',
          autoPlay: true,
          playInterval: 1000,
          data: timelineData,
          left: 10,
          right: null,
          top: 50,
          bottom: 0,
          width: 70,
          height: null,
          inverse: true,
          symbol: 'none',
          lineStyle: {
              color: '#555'
          },
          checkpointStyle: {
              color: '#bbb',
              borderColor: '#777',
              borderWidth: 2
          },
          label: {
              normal: {
                  textStyle: {
                      color: '#999',
                      fontSize: 15
                  }
              },
              emphasis: {
                  textStyle: {
                      color: '#999',
                      fontSize: 20
                  }
              }
          },
      },
      title: {
          text: '企业各类商品销量',
          subtext: '点击极坐标系下即可与圆环图交互\n点击柱状图排序',
          textAlign: 'left'
      },
      tooltip: {
          trigger: 'item',
          padding: 10,
          backgroundColor: '#222',
          borderColor: '#777',
          borderWidth: 1,
          formatter: tooltipFormatter,

      },
      angleAxis: {
          type: 'category',
          data: [{
              value: '星期一',
              textStyle: {
                  fontSize: 25,
              }
          }, '星期二', '星期三', '星期四', '星期五', '星期六', '星期日'],
          z: 10
      },
      grid: {
          left: '6%',
          right: '5%',
          top: '16%',
          bottom: '3%',
          containLabel: true
      },
      polar: {
          center: ['80%', '30%'],
          radius: 100,
      },
      xAxis: [{
          type: 'category',
          data: xAxisBarChart,
          axisLabel: {
              'interval': 0
          },
      }],
      yAxis: [{
          type: 'value',
          max: 600,
          show: false,
      }],
      radiusAxis: {},
      series: [{
          type: 'bar',
          data: dataBrownies,
          coordinateSystem: 'polar',
          name: '布朗尼',
          center: ['80%', '30%'],
          stack: 'a',
          itemStyle: {
              normal: {
                  borderWidth: 4,
                  borderColor: '#ffffff',
              },
              emphasis: {
                  borderWidth: 0,
                  shadowBlur: 10,
                  shadowOffsetX: 0,
                  shadowColor: 'rgba(0, 0, 0, 0.5)'
              }
          }
      }, {
          type: 'bar',
          data: dataMacarons,
          coordinateSystem: 'polar',
          name: '马卡龙',
          center: ['80%', '30%'],
          stack: 'a',
          itemStyle: {
              normal: {
                  borderWidth: 4,
                  borderColor: '#ffffff',
              },
              emphasis: {
                  borderWidth: 0,
                  shadowBlur: 10,
                  shadowOffsetX: 0,
                  shadowColor: 'rgba(0, 0, 0, 0.5)'
              }
          }
      }, {
          type: 'bar',
          data: dataTiramisu,
          coordinateSystem: 'polar',
          name: '提拉米苏',
          center: ['80%', '30%'],
          stack: 'a',
          itemStyle: {
              normal: {
                  borderWidth: 3,
                  borderColor: '#ffffff',
              },
              emphasis: {
                  borderWidth: 3,
                  shadowBlur: 10,
                  shadowOffsetX: 0,
                  shadowColor: 'rgba(0, 0, 0, 0.5)'
              }
          }
      }, {
          name: '每天销量',
          type: 'pie',
          center: ['80%', '30%'],
          radius: ['45%', '50%'],
          avoidLabelOverlap: false,
          label: {
              normal: {
                  show: true,
                  position: 'outside',
                  formatter: '{b} : {c} ({d}%)'

              },
              emphasis: {
                  show: true,
                  textStyle: {
                      fontSize: '15',
                      fontWeight: 'normal'
                  }
              },
              tooltip: {
                  trigger: 'item',
                  padding: 10,
                  backgroundColor: '#222',
                  borderColor: '#777',
                  borderWidth: 1,
                  formatter: tooltipFormatter,

              },
          },
          labelLine: {
              normal: {
                  show: false
              }
          },
          legend: {
              show: true,
              orient: 'vertical',
              x: 'left',
              y: 'bottom',
              data: ['布朗尼', '马卡龙', '提拉米苏']
          },
          itemStyle: {
              normal: {
                  borderWidth: 3,
                  borderColor: '#ffffff',
              },
              emphasis: {
                  show: true,
                  textStyle: {
                      fontSize: '15',
                      fontWeight: 'normal'
                  }
              }
          }
      }, {
          name: '半年销量',
          type: 'bar',
          avoidLabelOverlap: false,
          label: {
              normal: {
                  show: true,
                  position: 'outside',
                  formatter: '{c}'

              },
              emphasis: {
                  show: true,
                  textStyle: {
                      fontSize: '20',
                      fontWeight: 'normal'
                  }
              }
          },
          labelLine: {
              normal: {
                  show: false
              }
          },
          itemStyle: {
              normal: {
                  borderWidth: 3,
                  borderColor: '#ffffff',
              },
              emphasis: {
                  borderWidth: 3,
                  shadowBlur: 10,
                  shadowOffsetX: 0,
                  shadowColor: 'rgba(0, 0, 0, 0.5)'
              }
          }
      }]
  },
  options: optionsData,
}


//全数据计算
for (var week = 0; week < 26; week++) {
  var weekDataArray = [];
  for (var day = 0; day < 7; day++) {
       var productSales = [{
              'Brownies': parseInt(20 * Math.random()),
              'Macarons': parseInt(20 * Math.random()),
              'Tiramisu': parseInt(20 * Math.random())
          }];
          weekDataArray.push(productSales);
  }
  //一天的数据由3种蛋糕组成，一周由7天组成，半年由26周组成，所以写三个循环
  sourceArray.push(weekDataArray);
  timelineData.push('第' + (week + 1) + '周');
}

everyProductCalculate();
//现实情况下大多数都是根据数据源对数据进行切割和合并
function everyProductCalculate() {
  //数组容器重置
  dataBarChartMap = new Map();
  dataBarChartTemp = [];
  xAxisBarChart = [];
  dataBrownies = [];
  dataMacarons = [];
  dataTiramisu = [];
  optionsData = [];

  //柱状图数据计算，就是一周合计的计算
  for (var i = 0; i < sourceArray.length; i++) {
      var weekSum = 0;
      for (var j = 0; j < sourceArray[i].length; j++) {
          var daySum = 0;
          daySum = sourceArray[i][j][0].Brownies +
              sourceArray[i][j][0].Macarons +
              sourceArray[i][j][0].Tiramisu;
          weekSum = weekSum + daySum;
      }
      dataBarChartTemp.push(weekSum);
  }
  //数据插入到map集合中，由星期和每周销量相互对应
  for (var i = 1; i < sourceArray.length + 1; i++) {
      dataBarChartMap.put(i, dataBarChartTemp[i - 1]);

  }
  //是否排序
  if (SortOrNot) {
      dataBarChartMap.elements.sort(compare);
      dataBarChartTemp = dataBarChartMap.elements;
  }
  //得到dataBarChart，柱状图数据
  dataBarChart = dataBarChartTemp;
  for (var i = 0; i < sourceArray.length; i++) {
      var xAxisBarChartTemp = [];
      for (var j = 0; j < sourceArray.length; j++) {
          if (i == dataBarChartMap.elements[j].key - 1) {
              xAxisBarChartTemp.push('\n>第' + dataBarChartMap.elements[j].key + '周<');
          } else {
              xAxisBarChartTemp.push(dataBarChartMap.elements[j].key + '周');
          }
      }
      //得到xAxisBarChart，柱状图x轴数据
      xAxisBarChart.push(xAxisBarChartTemp);
  }
  //
  //每个产品全部销量计算（一个产品包含7个值）
  for (var i = 0; i < sourceArray.length; i++) {
      dataBrowniesTemp = [];
      dataMacaronsTemp = [];
      dataTiramisuTemp = [];
      for (var j = 0; j < sourceArray[i].length; j++) {
          dataBrowniesTemp.push(sourceArray[i][j][0].Brownies);
          dataMacaronsTemp.push(sourceArray[i][j][0].Macarons);
          dataTiramisuTemp.push(sourceArray[i][j][0].Tiramisu);
      }
      //得到蛋糕各自的数据
      dataBrownies.push(dataBrowniesTemp);
      dataMacarons.push(dataMacaronsTemp);
      dataTiramisu.push(dataTiramisuTemp);
  }
  for (var i = 0; i < sourceArray.length; i++) {
      optionsData.push({
          'series': [{
                  'data': dataBrownies[i]
              }, {
                  'data': dataMacarons[i]
              }, {
                  'data': dataTiramisu[i]
              }, {
                  'data': [{
                      value: dataBrownies[i][weekDay],
                      name: '布朗尼'
                  }, {
                      value: dataMacarons[i][weekDay],
                      name: '马卡龙'
                  }, {
                      value: dataTiramisu[i][weekDay],
                      name: '提拉米苏'
                  }]
              }, {
                  'data': dataBarChart
              },

          ],
          'xAxis': [{
              'data': xAxisBarChart[i],
          }]
      });
  }
  option.options = optionsData;

  myChart.setOption(option);
}







myChart.on('click', function(params) {
  //直接改变数据的内容
  if (params.componentSubType != 'pie' &&
      params.seriesName != '半年销量') {
      weekDay = params.dataIndex;
      for (var i = 0; i < option.baseOption.timeline.data.length; i++) {
          option.options[i].series[3].data[0].value = dataBrownies[i][weekDay];
          option.options[i].series[3].data[1].value = dataMacarons[i][weekDay];
          option.options[i].series[3].data[2].value = dataTiramisu[i][weekDay];
      }
      var weekDayData = ['星期一', '星期二', '星期三', '星期四', '星期五',
          '星期六', '星期日'
      ];
      weekDayData[weekDay] = {
          value: weekDayData[weekDay],
          textStyle: {
              fontSize: 25,
          }
      };
      option.baseOption.timeline.autoPlay = false;
      option.baseOption.angleAxis.data = weekDayData;
      myChart.setOption(option);
  }
  //重新执行数据转换过程
  else if (params.componentSubType == 'bar' &&
      params.seriesName == '半年销量') {
      if (SortOrNot == false) {
          SortOrNot = true;
      } else {
          SortOrNot = false;
      }
      everyProductCalculate();
      option.options = optionsData;
      myChart.setOption(option);
  }
});
//提示框体
function tooltipFormatter(params) {
  var valuesFormatter = [];
  if (params.componentSubType == 'pie') {
      valuesFormatter
          .push('<div style="border-bottom: 1px solid rgba(255,255,255,.3); font-size: 18px;padding-bottom: 7px;margin-bottom: 7px">' +
              '本日销量' +
              '<br>' +
              '</div>' +
              '<span style="color:' +
              params.color +
              '">' + params.name + '</span>: ' + params.value);
  } else {
      valuesFormatter
          .push('<div style="border-bottom: 1px solid rgba(255,255,255,.3); font-size: 18px;padding-bottom: 7px;margin-bottom: 7px">' +
              params.seriesName +
              '</div>' +
              '<span style="color:' +
              params.color +
              '">' +
              params.name +
              '</span>: ' +
              params.value + '<br>');
  }

  return valuesFormatter;
}
//map集合,这里应该写在工具脚本中
function Map() {
  this.elements = new Array();

  // 获取Map元素个数
  this.size = function() {
          return this.elements.length;
      },

      // 判断Map是否为空
      this.isEmpty = function() {
          return (this.elements.length < 1);
      },

      // 删除Map所有元素
      this.clear = function() {
          this.elements = new Array();
      },

      // 向Map中增加元素（key, value)
      this.put = function(_key, _value) {
          if (this.containsKey(_key) == true) {
              if (this.containsValue(_value)) {
                  if (this.remove(_key) == true) {
                      this.elements.push({
                          key: _key,
                          value: _value
                      });
                  }
              } else {
                  this.elements.push({
                      key: _key,
                      value: _value
                  });
              }
          } else {
              this.elements.push({
                  key: _key,
                  value: _value
              });
          }
      },

      // 删除指定key的元素，成功返回true，失败返回false
      this.remove = function(_key) {
          var bln = false;
          try {
              for (i = 0; i < this.elements.length; i++) {
                  if (this.elements[i].key == _key) {
                      this.elements.splice(i, 1);
                      return true;
                  }
              }
          } catch (e) {
              bln = false;
          }
          return bln;
      },

      // 获取指定key的元素值value，失败返回null
      this.get = function(_key) {
          try {
              for (i = 0; i < this.elements.length; i++) {
                  if (this.elements[i].key == _key) {
                      return this.elements[i].value;
                  }
              }
          } catch (e) {
              return null;
          }
      },

      // 获取指定索引的元素（使用element.key，element.value获取key和value），失败返回null
      this.element = function(_index) {
          if (_index < 0 || _index >= this.elements.length) {
              return null;
          }
          return this.elements[_index];
      },

      // 判断Map中是否含有指定key的元素
      this.containsKey = function(_key) {
          var bln = false;
          try {
              for (i = 0; i < this.elements.length; i++) {
                  if (this.elements[i].key == _key) {
                      bln = true;
                  }
              }
          } catch (e) {
              bln = false;
          }
          return bln;
      },

      // 判断Map中是否含有指定value的元素
      this.containsValue = function(_value) {
          var bln = false;
          try {
              for (i = 0; i < this.elements.length; i++) {
                  if (this.elements[i].value == _value) {
                      bln = true;
                  }
              }
          } catch (e) {
              bln = false;
          }
          return bln;
      },

      // 获取Map中所有key的数组（array）
      this.keys = function() {
          var arr = new Array();
          for (i = 0; i < this.elements.length; i++) {
              arr.push(this.elements[i].key);
          }
          return arr;
      },

      // 获取Map中所有value的数组（array）
      this.values = function() {
          var arr = new Array();
          for (i = 0; i < this.elements.length; i++) {
              arr.push(this.elements[i].value);
          }
          return arr;
      };
}
myChart.setOption(option);
</script>

<script type="text/javascript">
var myChart = echarts.init(document.getElementById('main3'));

option = {
	    tooltip: {
	        trigger: 'axis',
	        formatter: function(params, ticket, callback) {

	            var res = params[0].name;

	            for (var i = 0, l = params.length; i < l; i++) {
	                if (params[i].seriesType === 'line') {
	                    res += '<br/>' + params[i].seriesName + ' : ' + (params[i].value ? params[i].value : '-') + 'h';
	                } else {
	                    res += '<br/>' + params[i].seriesName + ' : ' + (params[i].value ? params[i].value : '-') + '个';
	                }
	            }
	            return res;

	        }
	    },
	    grid: {
	        containLabel: true
	    },
	    legend: {
	        data: ['时间', '进项个数', '销项个数']
	    },
	    xAxis: [{
	        type: 'category',
	        axisTick: {
	            alignWithLabel: true
	        },
	        data: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月']
	    }],
	    dataZoom: [{
	        type: 'slider',
	        xAxisIndex: 0,
	        filterMode: 'empty',
	        start: 0,
	        end: 100
	    }, {
	        type: 'slider',
	        yAxisIndex: 0,
	        filterMode: 'empty',
	        start: 0,
	        end: 100
	    }, {
	        type: 'inside',
	        xAxisIndex: 0,
	        filterMode: 'empty',
	        start: 0,
	        end: 100
	    }, {
	        type: 'inside',
	        yAxisIndex: 0,
	        filterMode: 'empty',
	        start: 0,
	        end: 100
	    }],
	    yAxis: [{
	        type: 'value',
	        name: '时间',
	        min: 0,
	        position: 'left',
	        axisLabel: {
	            formatter: '{value} h'
	        }
	    }, {
	        type: 'value',
	        name: '个数',
	        min: 0,
	        position: 'right',
	        axisLabel: {
	            formatter: '{value} 个'
	        }
	    }],
	    series: [{
	        name: '时间',
	        type: 'line',
	        label: {
	            normal: {
	                show: true,
	                position: 'top',
	            }
	        },
	        lineStyle: {
	            normal: {
	                width: 3,
	                shadowColor: 'rgba(0,0,0,0.4)',
	                shadowBlur: 10,
	                shadowOffsetY: 10
	            }
	        },
	        data: [1, 13, 37, 35, 15, 13, 25, 21, 6, 45, 32, 2]
	    }, {
	        name: '进项个数',
	        type: 'bar',
	        yAxisIndex: 1,
	        label: {
	            normal: {
	                show: true,
	                position: 'top'
	            }
	        },
	        data: [22, 22, 23, 77, 24, 55, 55, 89, 98, 164, 106, 224]
	    }, {
	        name: '销项个数',
	        type: 'bar',
	        yAxisIndex: 1,
	        label: {
	            normal: {
	                show: true,
	                position: 'top'
	            }
	        },
	        data: [201, 222, 223, 777, 244, 255, 555, 879, 938, 1364, 1806, 2324]
	    }]
	};

myChart.setOption(option);
</script>
</body>
</html>

