<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--框架必需start-->
<script type="text/javascript" src="../js/jquery-1.4.js"></script>
<script type="text/javascript" src="../js/framework.js"></script>
<link href="../css/import_basic.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" id="skin" />
<!--框架必需end-->

<script type="text/javascript" src="../js/nav/ddaccordion.js"></script>
<script type="text/javascript" src="../js/text/text-overflow.js"></script>
<style>
a {
	behavior: url(../js/method/focus.htc)
}

.categoryitems span {
	width: 160px;
}
</style>

<script>
	//打开内页时出现进度条
	/*$(function() {
		$(".categoryitems a[target*=frmright]").click(function() {
			showProgressBar();
		})
	})*/
	function ccc() {
		doAjax("../Removeabc", null, function(rstText) {
			var result = eval('(' + rstText + ')');
			if (result.status == 'OK') {
				alert("查询成功");
				return true;
			} else {
				alert("查询失败");
				return false;
			}
		});
	}
	function getXMLHttpResquest() {
		var request;
		if (window.XMLHttpRequest) {
			request = new XMLHttpRequest();
		} else {
			try {
				request = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e) {
				request = new ActiveXObject("Msxml2.XMLHTTP");
			}
		}
		return request;
	}
	function doAjax(url, params, callBack) {
		var req = getXMLHttpResquest();
		if (req != null) {
			req.onreadystatechange = function() {
				if (req.readyState == 4) {
					if (200 == req.status) {
						callBack(req.responseText);

					} else if (404 == req.status) {
						alert('404-HTTP请求路径错误！');
					} else if (500 == req.status) {
						alert('500-HTTP请求路径错误！');
					}

				}

			};
			req.open("POST", url, true);
			req.setRequestHeader("Content-Type",
					"application/x-www-form-urlencoded;;charset=utf-8");
			req.send(params);
		}

	}
</script>

<body leftFrame="true">
	<div id="scrollContent">
		<div class="arrowlistmenu">
			<div class="menuheader expandable">系统菜单</div>
			<ul class="categoryitems">
			

				
				<li><a href='../NewFile.jsp' target='frmright'><span class='text_slice'>企业问题详情</span></a></li>
				<li><a href='../list.jsp' target='frmright'><span class='text_slice'>企业问题列表</span></a></li>
<li><a href='../Sandian.jsp' target='frmright'><span class='text_slice'>企业各种散点图</span></a></li>

			</ul>
        </div>
    </div>
</body>
</html>