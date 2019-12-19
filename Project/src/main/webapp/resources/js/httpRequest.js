
function getXMLHttpRequest(){
	//IE인 경우
	if(window.ActiveXObject){
		try {
			//IE 5.0 이후 버전
			return new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			return ActiveXObject("Microsoft.XMLHTTP");
		}
	}else{
		return new XMLHttpRequest();
	}
}

//Ajax 요청
var httpRequest = null;
function sendRequest(url,params,callback,method){

	httpRequest = getXMLHttpRequest();
	var httpMethod = method?method:"GET";
	
	if(httpMethod!="GET" && httpMethod!="POST"){
		httpMethod="GET";
	}
	
	//data 처리
	var httpParams=(params==null||params=="")?null:params;
	
	//url 처리
	var httpUrl = url;
	
	if(httpMethod=="GET" && httpParams!=null){ //post 로 넘어옴 
		httpUrl = httpUrl+"?"+httpParams;
	}
	alert(httpUrl);
	httpRequest.open(httpMethod,httpUrl,true);//post, tmemoption,true
	
	//POST 방식일 때 데이터 넘어가는 방식
	httpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	httpRequest.onreadystatechange = callback;
	httpRequest.send(httpMethod=='POST'? httpParams:null);
	
}
