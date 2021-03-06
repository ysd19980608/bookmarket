<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/tushu1.css" />
</head>
<body>
<!-- 头部logo -->
		<div id="header">
			<div class="head">
				<img src="img/logo.png" class="logo1" onclick = "window.location.href='homelogin.jsp'">
				<img src="img/logo1.png" class="logo2" onclick = "window.location.href='homelogin.jsp'">

				<!--  搜索栏-->
				<div class="search">
					<input type="text" name="" id="searchput" placeholder="请输入" />
					<button id="searchbtn">搜 索</button>
				</div>
				<!-- 登录&&购物车 -->
				<div class="loginuser">
					<img src="img/user.png">
					<a href="#">个人中心</a>
				</div>
				<div class="buycar">
					<img src="img/buycar.png">
					<a href="gouwuche.jsp">购物车</a>
				</div>
			</div>
			<!-- 索引栏 -->
			<div id="index">
				<div class="zhuti">
					<div class="text">
						<font size="5px" color="white">主题市场</font>
					</div>
					<div class="example">
						<a href="#" class="nav">万从畅销榜</a>
						<a href="#" class="nav">新书榜</a>
						<a href="#" class="nav">社科榜</a>
						<a href="#" class="nav">文学榜</a>
						<a href="#" class="nav">儿童榜</a>
						<a href="#" class="nav">百科榜</a>
						<a href="#" class="nav">周边</a>
						<a href="#" class="nav">电子书</a>
					</div>
				</div>
			</div>
			<!-- 主体 -->
			<div id="mainer">
				<div id="main">
					<!-- 同类热销区 -->
					<div id="sanmekind">
						<div class="samefont">
							<font>同类热销商品</font>
						</div>
						<div class="book">
							<a class="same" href="#">
								<img src="img/book2.jpg" />
								<font>未来站在中国这一边</font>
								<br />
								<br />
								<font class="money">￥18.8</font>
								<font class="money2">￥28.8</font>
							</a>
						</div>
						<div class="book">
							<a class="same" href="#">
								<img src="img/book1.jpg" />
								<font>未来站在中国这一边</font>
								<br />
								<br />
								<font class="money">￥18.8</font>
								<font class="money2">￥28.8</font>
							</a>
						</div>
						<div class="book">
							<a class="same" href="tushu1.jsp">
								<img src="img/book3.jpg" />
								<font>沉默巡游</font>
								<br />
								<br /><br />
								<font class="money">￥18.8</font>
								<font class="money2">￥28.8</font>
							</a>
						</div>
						<div class="book">
							<a class="same" href="#">
								<img src="img/boo4.jpg" />
								<font>半小时漫画宋词</font>
								<br />
								<br /><br />
								<font class="money">￥18.8</font>
								<font class="money2">￥28.8</font>
							</a>
						</div>
						<div class="book">
							<a class="same" href="#">
								<img src="img/book2.jpg" />
								<font>未来站在中国这一边</font>
								<br />
								<br />
								<font class="money">￥18.8</font>
								<font class="money2">￥28.8</font>
							</a>
						</div>
						<div class="book">
							<a class="same" href="#">
								<img src="img/book2.jpg" />
								<font>未来站在中国这一边</font>
								<br />
								<br />
								<font class="money">￥18.8</font>
								<font class="money2">￥28.8</font>
							</a>
						</div>
						<div class="book">
							<a class="same" href="#">
								<img src="img/book2.jpg" />
								<font>未来站在中国这一边</font>
								<br />
								<br />
								<font class="money">￥18.8</font>
								<font class="money2">￥28.8</font>
							</a>
						</div>
						<div class="book">
							<a class="same" href="#">
								<img src="img/book2.jpg" />
								<font>未来站在中国这一边</font>
								<br />
								<br />
								<font class="money">￥18.8</font>
								<font class="money2">￥28.8</font>
							</a>
						</div>

					</div>
					<!-- 图书介绍区 -->
					<div id="introd">
						<div class="bookspace">
							<div class="bookimg" id="bookimg">
								<img src="img/book2.jpg">
								<div class="mark" id="bookmark"></div>
							</div>
							<div class="bookimgbig" id="bookimgbig">
								<img src="img/book2.jpg" />
							</div>

							<div class="bookfont">
								<font class="bookname">未来站在中国这一边</font>
								<br />
								<font color="red">&nbsp;中国未来，璀璨辉煌！</font>
							</div>

							<div>
								<table border="0" cellspacing="" cellpadding="" style="padding-left: 20px;">
									<tr height="50px">
										<td width="80px">定&nbsp;&nbsp;&nbsp;价：</td>
										<td width="300px" style="color: gray;text-decoration: line-through;">￥39.9</td>
									</tr>
									<tr height="50px">
										<td>优惠价：</td>
										<td style="color: red; font-size: 25px;">￥21.8</td>
									</tr>
									<tr height="50px">
										<td>作&nbsp;&nbsp;&nbsp;者：</td>
										<td>钟南山</td>
									</tr>
									<tr height="50px">
										<td>促销活动：</td>
										<td style="color: red;">♥老客户回馈，积分换礼券，购书更实惠</td>
									</tr>
								</table>
							</div>
							<div class="share">
								<button type="button" class="more">批量购书</button>
								<br />
								<font>分享到：</font>
								<img src="img/QQ.png" />
								<img src="img/vx.png" />
								<br />
								<button type="button" class="input">➕加入收藏</button>
							</div>
							<form action="tushu2_suc.jsp" method="post">
							<div class="buy">
								<font>购买数量:</font>
								<font id="sub" >-</font>
								<input type="text" name="num" id="num" value="1" />
								<font id="plus">+</font> 件
							</div>
							
							<div class="buycar">
								<img src="img/buycar.png">
								<input id="joincar" type = "submit" value = "加入购物车" name = "login" class='login'></input>
							
							</div>
						</div>
						<div>
							<div class="fontsize">
								<div class="topid">作者简介</div>
								<div class="topabout">严歌苓，有名旅美作家、好莱坞专业编剧。1986年加入中国作家协会，1990年入美国芝加哥哥伦比亚艺术学院，攻读写作硕士学位。严歌苓二十岁时开始发表作品，先后创作了《少女小渔》《天浴》《扶桑》《人寰》《白蛇》《一个女人的史诗》《第九个寡妇》《小姨多鹤》《赴宴者》《霜降》等一系列很好的文学作品。她的作品充满鲜活的生命力，具有强烈的故事性、画面性，其生动流畅的语言，细腻准确的描写，引起了海内外读者的广泛关注，深受各界好评。。</div>
							</div>
						</div>
						<div>
							<div class="fontsize">
								<div class="topid">内容介绍</div>
								<div class="topabout">上世纪七十年代，一些有文艺才能的少年男女从大江南北挑选出来，进入某部队文工团，担负军队文艺宣传的特殊使命。
									郝淑雯、林丁丁、何小曼、萧穗子在这个团队里朝夕相处，她们才艺不同、性情各异，碰撞出不乏黑色幽默的情境。严格的军纪和单调的训练中，青春以专享的姿态绽放芳华。
									严歌苓著的《芳华（精）》用四十余年的跨度，展开她们命运的流转变迁，是为了讲述男兵刘峰的谦卑、平凡及背后值得永远探究的意义。</div>
							</div>
						</div>
					</div>

				</div>
			</div>
			<!-- 底部黑色-->
			<div id="bottom">
				<div class="con">
					<div class="yewu">
						<br />
						<font size="6" color="#A9A9A9">业务咨询:</font>
						<font size="6" color="#A9A9A9">0898-660888</font>
						<br />
						<font size="4" color="#A9A9A9">苏州昆山</font>
						<br />
						<font size="4" color="#A9A9A9">QQ601330647</font>
					</div>
					<div class="guanyu">

						<table border="0" cellspacing="" cellpadding="" style="color: #A9A9A9;">
							<tr height="50px">
								<th width="120px">关于我们</th>
								<th width="140px">我们的服务</th>
								<th width="120px">新闻资讯</th>
								<th width="120px">伙伴招募</th>
							</tr>
							<tr align="center">
								<td>Data</td>
								<td>Data</td>
								<td>Data</td>
								<td>Data</td>
							</tr>
							<tr align="center">
								<td>Data</td>
								<td>Data</td>
								<td>Data</td>
								<td>Data</td>
							</tr>
							<tr align="center">
								<td>Data</td>
								<td>Data</td>
								<td>Data</td>
								<td>Data</td>
							</tr>
							<tr align="center">
								<td>Data</td>
								<td>Data</td>
								<td></td>
								<td>Data</td>
							</tr>
							<tr align="center">
								<td>Data</td>
								<td>Data</td>
								<td></td>
								<td></td>
							</tr>
							<tr align="center">
								<td></td>
								<td>Data</td>
								<td></td>
								<td></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- 浮动窗口 -->
		<div id="float">
			<div class="btn" onclick="window.location.href ='gouwuche.jsp'">购物车</div>
			<div class="btn" onclick="window.location.href ='geren.jsp'">我的 </div>
			<div class="btn">在线客服</div>
			<span></span>
		</div>
</body>
<script  type="text/javascript" charset="utf-8">
var timer = null;
window.onload = function() {
	var odiv = document.getElementById("float");
	var joincar = document.getElementById('joincar');
	var osub = document.getElementById('sub');
	var oplus = document.getElementById('plus');
	var onum = document.getElementById('num');
	var temp = 1;
	odiv.onmouseover = function() {
		startMove1(0);
	}
	odiv.onmouseout = function() {
		startMove1(-100);
	}
	joincar.onmousedown = function() {
		joincar.style.backgroundColor = "#880000";

	}
	joincar.onmouseup = function() {
		joincar.style.backgroundColor = "red";
	}
	//加减按钮实现
	onum.value = temp;
	//减少
	osub.onmousedown = function() {
		temp -= 1;
		//最小为0
		if (temp <= 0) {
			temp = 0;
		}
		onum.value = temp;
	}
	oplus.onmousedown = function() {
		temp += 1;
		if (temp >= 49) {
			temp = 49;
		}
		onum.value = temp;
	}
	//鼠标移入放大效果
	var obookimg = document.getElementById('bookimg');
	var obookmark = document.getElementById('bookmark');
	var obookimgbig = document.getElementById('bookimgbig');
	var obookbigimg = obookimgbig.getElementsByTagName('img')[0];
	//遮罩层和放大框移入显示，移出影藏
	obookimg.onmouseover = function() {
		obookmark.style.display = "block";
		obookimgbig.style.display = "block"
	}
	obookimg.onmouseout = function() {
		obookmark.style.display = "none";
		obookimgbig.style.display = "none"
	}
	//遮罩层跟着鼠标移动
	obookimg.onmousemove = function(ev) {
		var e = ev || window.index;
		var l = e.clientX - obookimg.offsetLeft -75 ;
		var t = e.clientY - obookimg.offsetTop -75;
		var ml = e.clientX -75;
		var mt = e.clientY -75;
		//遮罩层左右上下都无法出界
		if (ml <= 550) {
			ml = 550;
		}
		if (ml >= 675) {
			ml = 675;
		}
		if (mt <= 175) {
			mt = 175;
		}
		if (mt >= 325) {
			mt = 325;
		}
		obookmark.style.left = ml+ "px";
		obookmark.style.top = mt+ "px";

		/* 
			右边图片移动方式
			左边遮罩层如何移动，右边图片反方向移动相对倍数
		 */
		obookbigimg.style.left = l * -2 + "px";
		obookbigimg.style.top = t * -2 + "px";
	}
}


function startMove1(iTarget) {
	var odiv = document.getElementById("float");
	//速度
	var speed = 5;
	//清除一下上次的运动
	clearInterval(timer);
	//管理速度是正还是负，如果当前位置>传入参数，速度为负，否则为正
	if (odiv.offsetLeft > iTarget) {
		speed = -5;
	} else {
		speed = 5;
	}
	timer = setInterval(function() {
		//如果抵达了目的地则结束运动
		if (odiv.offsetLeft == iTarget) {
			clearInterval(timer);
		} else {
			odiv.style.left = odiv.offsetLeft + speed + "px";
		}
	}, 30);
}
</script>
</html>