
$(document).ready(function() {
	var menuParent = $('.menu > .ListTitlePanel > div');//获取menu下的父层的DIV
	var menuList = $('.menuList');
	
	//遍历每个列表的大标题为其设置点击事件
	$('.menu > .menuParent > .ListTitlePanel > .ListTitle').each(function(i) {//获取列表的大标题并遍历
		$(this).click(function(){
			//点击后，如果该列表的菜单列表没有显示，则将菜单列表滑出，否则收起
			if($(menuList[i]).css('display') == 'none'){
				//将菜单列表滑出
				$(menuList[i]).slideDown(300);
			}
			else{
				//将菜单列表收起
				$(menuList[i]).slideUp(300);
			}
		});
	});
});

//隐藏/显示左边菜单栏  
$("#show-leftbar").hide();//默认进入首页时隐藏显示链接  
//点击隐藏链接事件  
$("#hide-leftbar").click(function(){  
    //alert("hide");  
    //js改变frameset实现隐藏  
    window.parent.document.getElementById("full").cols = "0,*";  
    //jq实现隐藏后显示右frame中的显示链接  
    $("#show-leftbar",window.parent.right.document).show();  
});  
//点击显示链接事件  
$("#show-leftbar").click(function(){  
    window.parent.document.getElementById("full").cols = "180,*";  
    $("#show-leftbar").hide();  
});  