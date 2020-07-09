window.onload =function(){
				var obox = document.getElementById("box");
				var ousername = document.getElementById("username");
				var ousername_span = document.getElementById("username_span");
				
				//添加失去焦点
				ousername.onblur = function(){
					var ovalue = ousername.value;
					//判断长度
					if(ovalue.length <6 || ovalue.length>18){
						ousername_span.innerHTML = "🎈长度应该为6~18";
						ousername_span.style.color = "red";
						//判断首字母
					}else if(!/[a-zA-Z]/.test(ovalue[0])){
						ousername_span.innerHTML = "🎈首字母必须是字母！";
						ousername_span.style.color = "red";
					}
					//整个用户名是否都是数字字母下划线
					else if(/\W/.test(ovalue)){
						ousername_span.innerHTML = "🎈必须是字母下划线数字！";
						ousername_span.style.color = "red";
					}else{
						ousername_span.innerHTML = "🎈正确！✔";
						ousername_span.style.color = "green";
					}
				}
				
				//为密码输入框添加键盘事件
				var opassword = document.getElementById("password");
				var opasswordagain = document.getElementById('passwordagain');
				var odivs = obox.getElementsByClassName("sp1");
				var opassword_span = document.getElementById("password_span");
				/* 
					keydown事件出发时间太早，时文本输入之前
					keyup才合适
					
					密码强度
					1.弱 纯数字 纯小写 纯大写
					2.中 两两混合
					3.强 三种都有
				 */
				opassword.onkeyup = function(){
					var ovalue = this.value;
					//每次出发之前，将上一次样式清空
					for(var i =0 ; i<odivs.length;i++){
						odivs[i].style.backgroundColor = "gray";
					}
					if(ovalue.length >= 6 && ovalue.length <=18){
						//1.弱 纯数字 纯小写 纯大写
						if(/^\d+$/.test(ovalue) || /^[a-z]+$/.test(ovalue) ||/^[A-Z]+$/.test(ovalue)){
							odivs[0].style.backgroundColor = "orange";
						}
						//2.强 三种都有
						else if(/\d/.test(ovalue)&&/[a-z]/.test(ovalue)&&/[A-Z]/.test(ovalue)){
							odivs[2].style.backgroundColor = "orange";
						}else{
							odivs[1].style.backgroundColor = "orange";
						}
					}
				}
				//确认密码
				opasswordagain.onkeyup = function(){
					if(opassword.value == opasswordagain.value){
						opassword_span.innerHTML = "两次密码相同！✔"
						opassword_span.style.color = 'green';
					}
					else{
						opassword_span.innerHTML = "两次密码不相同！×"
						opassword_span.style.color = 'red';	
					}
				}
			}