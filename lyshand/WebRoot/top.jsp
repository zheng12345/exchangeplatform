<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0031)http://www.qyyqyj.com/index.jsp -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>大学生闲置物品交易平台</TITLE>
<LINK rel=stylesheet type=text/css 
href="style/css.css">

<STYLE type=text/css>BODY {
	BACKGROUND-IMAGE: none; MARGIN: 0px
}
</STYLE>
<LINK rel=stylesheet type=text/css href="lyshand_files/style.css">

<script type="text/javascript"> 
var isIE = (document.all) ? true : false;
 
var $ = function (id) {
	return "string" == typeof id ? document.getElementById(id) : id;
};
 
var Class = {
	create: function() {
		return function() { this.initialize.apply(this, arguments); }
	}
}
 
var Extend = function(destination, source) {
	for (var property in source) {
		destination[property] = source[property];
	}
}
 
var Bind = function(object, fun) {
	return function() {
		return fun.apply(object, arguments);
	}
}
 
var Each = function(list, fun){
	for (var i = 0, len = list.length; i < len; i++) { fun(list[i], i); }
};
 
 
//ie only
var RevealTrans = Class.create();
RevealTrans.prototype = {
  initialize: function(container, options) {
	this._img = document.createElement("img");
	this._a = document.createElement("a");
	
	this._timer = null;//计时器
	this.Index = 0;//显示索引
	this._onIndex = -1;//当前索引
	
	this.SetOptions(options);
	
	this.Auto = !!this.options.Auto;
	this.Pause = Math.abs(this.options.Pause);
	this.Duration = Math.abs(this.options.Duration);
	this.Transition = parseInt(this.options.Transition);
	this.List = this.options.List;
	this.onShow = this.options.onShow;
	
	//初始化显示区域
	this._img.style.visibility = "hidden";//第一次变换时不显示红x图
	this._img.style.width = "790"; 
	this._img.style.height = "154"; 
	this._img.style.border = 0;
	this._img.onmouseover = Bind(this, this.Stop);
	this._img.onmouseout = Bind(this, this.Start);
	isIE && (this._img.style.filter = "revealTrans()");
	
	this._a.target = "_blank";
	
	$(container).appendChild(this._a).appendChild(this._img);
  },
  //设置默认属性
  SetOptions: function(options) {
	this.options = {//默认值
		Auto:		true,//是否自动切换
		Pause:		1000,//停顿时间(微妙)
		Duration:	1,//变换持续时间(秒)
		Transition:	23,//变换效果(23为随机)
		List:		[],//数据集合,如果这里不设置可以用Add方法添加
		onShow:		function(){}//变换时执行
	};
	Extend(this.options, options || {});
  },
  Start: function() {
	clearTimeout(this._timer);
	//如果没有数据就返回
	if(!this.List.length) return;
	//修正Index
	if(this.Index < 0 || this.Index >= this.List.length){ this.Index = 0; }
	//如果当前索引不是显示索引就设置显示
	if(this._onIndex != this.Index){ this._onIndex = this.Index; this.Show(this.List[this.Index]); }
	//如果要自动切换
	if(this.Auto){
		this._timer = setTimeout(Bind(this, function(){ this.Index++; this.Start(); }), this.Duration * 1000 + this.Pause);
	}
  },
  //显示
  Show: function(list) {
	if(isIE){
		//设置变换参数
		with(this._img.filters.revealTrans){
			Transition = this.Transition; Duration = this.Duration; apply(); play();
		}
	}
	this._img.style.visibility = "";
	//设置图片属性
	this._img.src = list.img; this._img.alt = list.text;
	//设置链接
	!!list["url"] ? (this._a.href = list["url"]) : this._a.removeAttribute("href");
	//附加函数
	this.onShow();
  },
  //添加变换对象
  Add: function(sIimg, sText, sUrl) {
	this.List.push({ img: sIimg, text: sText, url: sUrl });
  },
  //停止
  Stop: function() {
	clearTimeout(this._timer);
  }
};
 
 
</script>

<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<META name=GENERATOR content="MSHTML 8.00.6001.19222"></HEAD>
<BODY>
 
       
       
       
    
       
       
       
        <TR>
          <TD height=70 vAlign=center align=right>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width="19%" height="80" rowspan="2" align="center" onClick="window.location.replace('/lyshand')" >
                 <!--<img src="lyshand_files/logo.png" height="40" />                --></TD>
                <TD width="81%" height="42" align="center"   >
                
                
                <%
                if(Info.getUser(request)==null){
                 %>
                <font color="#804000">
                欢迎您光临本站，您还没有登录，请 
                
                <label onClick="form1.uname.focus();">
                <font color="red">登录</font>                </label> 
                 或  
                 <a href="regedit.jsp"><font color="red">免费注册</font></a>                 </font>
                 <%}else{ %>
                
                
                <%=Info.getUser(request).get("username") %>，欢迎您回来 
                 
                &nbsp;
                <a href="zxxs.jsp?ukey=<%=Info.getUser(request).get("username") %>"><font color="#804000">我的二手交易</font></a>
                &nbsp;
                <a href="ywyw.jsp?ukey=<%=Info.getUser(request).get("username") %>"><font color="#804000">我的物品租借</font></a>
                  &nbsp;
                <a href="yfdd.jsp?ukey=<%=Info.getUser(request).get("username") %>"><font color="#804000">已发订单</font></a>
                &nbsp;
                 <a href="ysdd.jsp?ukey=<%=Info.getUser(request).get("username") %>"><font color="#804000">已收订单</font></a>
                &nbsp;
                <a href="car.jsp"><font color="#804000">购物车</font></a>
                &nbsp;
                <a href="scj.jsp"><font color="#804000">收藏夹</font></a>
                 
                             &nbsp;&nbsp;
                             
                             <a href="index.jsp?t=t">退出</a>
                
                <%} %>                </TD>
          </TR>
              <TR>
                <TD align="right"   >
                <form style="display: inline" name="f2" method="post">
                信息搜索 : 
                  <label>
                  &nbsp;
                  <label><input type=radio name="types" value="二手交易" checked="checked" /> 二手 </label>&nbsp;
                  <label><input type=radio name="types" value="物品租借"  /> 租借 </label>&nbsp;
                  <label><input type=radio name="types" value="优惠活动"  /> 活动 </label>
                  <!--<select name="types" id="types"> 
                  <option value="二手交易">二手交易</option> 
                  <option value="物品租借">物品租借</option>
                  <option value="网站公告">网站公告</option>
                  </select>-->
                  
                  &nbsp;
                 &nbsp;<input type="text" name="key" style="border: 1px solid #D6E9F3;" id="textfield">&nbsp;
                 &nbsp; <input type="button" onclick="search();" name="button" id="button" value="搜索">
                 &nbsp;&nbsp;&nbsp;&nbsp;
                 <script type="text/javascript">
                 function search()
                 {
                 var url="";
                 if(f2.types.value=="二手交易")
                 {
                 url="zxxs.jsp";
                 }
                  if(f2.types.value=="淘宝专区")
                 {
                 url="fwxx.jsp";
                 }
                  if(f2.types.value=="物品租借")
                 {
                 url="ywyw.jsp";
                 }
                  if(f2.types.value=="网站公告")
                 {
                 url="gfcs.jsp";
                 }
                 f2.action=url; 
                 f2.submit();
                 }
                 </script>
                 </form>
                 
                 &nbsp;&nbsp;
                </label></TD>
              </TR>
          </TBODY></TABLE></TD></TR>
        <TR>
          <TD height=47 vAlign=top>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" 
              height=40><TBODY>
              <TR>
                <TD width=16><IMG src="lyshand_files/dh_z.jpg" width=16 
                  height=40></TD>
                <TD class=bold_txt background=lyshand_files/dh_bj.jpg 
                align=middle>
               
                <A href="index.jsp">首页</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <A href="wzjj.jsp">网站简介</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <A href="zxxs.jsp">二手交易</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <A href="ywyw.jsp">物品租借</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <A href="fx.jsp">网友分享</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <A href="gfcs.jsp">优惠活动</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <A href="gywm.jsp">关于我们</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <A href="messages.jsp">留言板</A>　
                
                </TD>
                <TD width=16><IMG src="lyshand_files/dh_y.jpg" width=16 
                  height=40></TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD height=160 vAlign=top width="100%">
            
            <img src="/lyshand/lyshand_files/gg.png" width="799" height="160"></img>
 
            </TD></TR>
     
     
     
     <tr><td height="3"></td></tr>
     
     
     
        <TR>
          <TD height=34 vAlign=top>
            <TABLE width="100%" height="34" border=0 cellPadding=0 cellSpacing=0>
              <TBODY>
              <TR>
                <TD width=200 height=30 align=middle valign="middle" bgColor=#4990ce><SPAN 
                  class=wit_txt>
                <DIV align=center>
                  <SCRIPT language=JavaScript>
				var todayx=new Date()
				yearx=todayx.getYear()
				monthx=todayx.getMonth()
				datex=todayx.getDate()
				document.write('今天是 '+yearx+'-'+(monthx+1)+'-'+datex)
		      </SCRIPT>
                </DIV></SPAN></TD>
                <TD width=56 valign="top"><IMG src="/lyshand/lyshand_files/gg_zj.jpg" width=56 
                  height=34></TD>
                <TD align=left valign="middle" height="30" background=lyshand_files/gg_bj.jpg><SPAN 
                  class=css>欢迎光临本站，本站致力于二手交易事业的发展，有疑问请留言或联系 
                  <a href="tencent://message/?uin=88888888">QQ88888888</a>
                  
                  </SPAN></TD>
                <TD width=16  height="30" background="lyshand_files/gg_y.jpg">              </TD>
          </TR></TBODY></TABLE></TD></TR>
          
          <tr><td height="5"></td></tr>
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
            
</BODY></HTML>
 

