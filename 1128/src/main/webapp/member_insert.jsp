<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="member.js" defer></script>
</head>
<body>

 <script src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script>
    <script>
        /* 
        카카오 우편번호 검색 가이드 페이지 :  https://postcode.map.daum.net/guide
        getElementById() : html 에서 매개변수로 받은 id 값이 있는 요소를 반환.
        */
        function execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var fullAddr = ''; // 최종 주소 변수
                    var extraAddr = ''; // 조합형 주소 변수

                    // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        fullAddr = data.roadAddress;
                    }
                    else { // 사용자가 지번 주소를 선택했을 경우(J)
                        fullAddr = data.jibunAddress;
                    }

                    // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                    if(data.userSelectedType === 'R'){
                        //법정동명이 있을 경우 추가한다.
                        if(data.bname !== ''){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있을 경우 추가한다.
                        if(data.buildingName !== ''){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                        fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
                    document.getElementById('address1').value = fullAddr;

                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById('address2').focus();
                }
            }).open();
        }
    </script>
    
	<form action="member_insert_action.jsp" name="member_insert" method="post">
		<p> 회원아이디 : <input type="text" name="memberID">
		<p> 비밀번호 : <input type="password" name="passwd">
		<p> 비밀번호 확인 : <input type="password" name="passwdC">
		<p> 이름 : <input type="text" name="memberName">
		<p> 이메일 : <input type="text" name="email">
		<p> 관심사항 :
					영화<input type="checkbox" name="interest" value="영화">
					독서<input type="checkbox" name="interest" value="독서">
					수영<input type="checkbox" name="interest" value="수영">
					등산<input type="checkbox" name="interest" value="등산">
		<p> 주소 : <input name="zipcode" id="zipcode" size="10" maxlength="7" readonly>
		<span onclick="execDaumPostcode();" style="cursor:pointer;">우편번호 검색</span><br/>
		<input name="address1" id="address1" size="50" maxlength="50" readonly><br/>
		<input name="address2" id="address2" size="50" maxlength="50">
		<p> 태어난 해 : <input type="text" name="birthYear">
		<p> 태어난 월 : <input type="text" name="birthMonth">
		<p> 태어난 일 : <input type="text" name="birthDay">
		<p> 메일 수신 여부 : <input type="text" name="mailYN">
		<p> 문자 수신 여부 : <input type="text" name="smsYN">
		<%--<p> 가입한 브라우져의 IP : <input type="hidden" name="ip">--%>
		<p> <input type="button" id="btn" value="가입하기">
	</form>

</body>
</html>