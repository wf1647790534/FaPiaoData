
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>问题企业显示</title>
        
        <!--框架必需start-->
        <link href="css/import_basic.css" rel="stylesheet" type="text/css"/>
        <link href="skins/sky/import_skin.css" rel="stylesheet" type="text/css" id="skin" />
        <script type="text/javascript" src="js/jquery-1.4.js">
        </script>
        <script type="text/javascript" src="js/bsFormat.js">
        </script>
        <!--框架必需end-->
        <!--引入弹窗组件start-->
        <script type="text/javascript" src="js/attention/zDialog/zDrag.js">
        </script>
        <script type="text/javascript" src="js/attention/zDialog/zDialog.js">
        </script>
        <!--引入弹窗组件end-->
        <!--修正IE6支持透明png图片start-->
        <script type="text/javascript" src="js/method/pngFix/supersleight.js">
        </script>
        <!--修正IE6支持透明png图片end-->

		
		
		
    </head>
    <body >



        <div id="mainFrame">
           
   
            <table width="100%" cellpadding="0" cellspacing="0" class="table_border0">
                <tr>
                    <!--左侧区域start-->
                    <td id="hideCon" class="ver01 ali01">
                        <div id="lbox">
                            <div id="lbox_topcenter">
                                <div id="lbox_topleft">
                                    <div id="lbox_topright">
                                        <div class="lbox_title">
                                            操作菜单
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="lbox_middlecenter">
                                <div id="lbox_middleleft">
                                    <div id="lbox_middleright">
                                        <div id="bs_left">
                                            <IFRAME scrolling="no" width="100%" height="100%" frameBorder=0 id=frmleft name=frmleft src="leftPages/left.jsp" allowTransparency="true">
                                            </IFRAME>
                                        </div>
                                        <!--更改左侧栏   的宽度需要修改id="bs_left"的样式-->
                                    </div>
                                </div>
                            </div>
                            <div id="lbox_bottomcenter">
                                <div id="lbox_bottomleft">
                                    <div id="lbox_bottomright">
                                        <div class="lbox_foot">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                    <!--左侧区域end-->
                    <!--中间栏区域start-->
                    <td class="main_shutiao">
                        <div class="bs_leftArr" id="bs_center" title="收缩面板">
                        </div>
                    </td>
                    <!--中间栏区域end-->
                    <!--右侧区域start-->
                    <td class="ali01 ver01" width="100%">
                        <div id="rbox">
                            <div id="rbox_topcenter">
                                <div id="rbox_topleft">
                                    <div id="rbox_topright">
                                        <div class="rbox_title">
                                            操作内容
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="rbox_middlecenter">
                                <div id="rbox_middleleft">
                                    <div id="rbox_middleright">
                                        <div id="bs_right">
                                            <IFRAME scrolling="auto" width="100%" height="100%" frameBorder=0 id=frmright name=frmright src="" allowTransparency="true">
                                            </IFRAME>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="rbox_bottomcenter">
                                <div id="rbox_bottomleft">
                                    <div id="rbox_bottomright">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                    <!--右侧区域end-->
                </tr>
            </table>
            <!--尾部区域start-->
            <div id="fbox">
                <div id="bs_footcenter">
                    <div id="bs_footleft">
                        <div id="bs_footright">
                         
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--尾部区域end-->
        <!--浏览器resize事件修正start-->
        <div id="resizeFix">
        </div>
        <!--浏览器resize事件修正end-->
        <!--载进度条start-->
        <div class="progressBg" id="progress" style="display:none;">
            <div class="progressBar">
            </div>
        </div>
        <!--载进度条end-->
    </body>
    <script>
        
        $(document).ready(function(){
            var username = GetRequest();
            $("#username").html(username);
        });
        function GetRequest(){
            var url = location.search; //获取url中"?"符后的字串
            if (url.indexOf("?") != -1) { //判断是否有参数
                var str = url.substr(1); //从第一个字符开始 因为第0个是?号 获取所有除问号的所有符串
                strs = str.split("="); //用等号进行分隔 （因为知道只有一个参数 所以直接用等号进分隔 如果有多个参数 要用&号分隔 再用等号进行分隔）
                wjid = decodeURI(strs[1]);
                return decodeURI(strs[1]); //直接弹出第一个参数 （如果有多个参数 还要进行循环的）
            }
        }
    </script>
</html>
