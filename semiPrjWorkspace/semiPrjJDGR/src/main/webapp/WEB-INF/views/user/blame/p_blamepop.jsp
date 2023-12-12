<%@page import="com.semi.jdgr.post.vo.PostVo"%>
<%@page import="com.semi.jdgr.page.vo.PageVo"%>
<%@page import="com.semi.jdgr.user.blame.vo.PostBlameVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/user/common/header.jsp" %>
    
     <%
     	PostVo postNo = (PostVo) request.getAttribute("postNo");
    	PostBlameVo writer = (PostBlameVo) request.getAttribute("writer");
     	PostBlameVo title = (PostBlameVo) request.getAttribute("title");
     	Map<String, String> searchMap = (Map<String, String>)request.getAttribute("searchMap");
    %>
    
    <!--     로그인 안 했을 경우 신고 제한 -->
    
    
<link rel="stylesheet" href="/jdgr/resources/user/css/blamepop.css">
<!-- <button class="modal_open" data-target="#pop_email">신고하기</button> -->
<button class="btn_k" onclick="{clickEvent('blame')}"><img src="/jdgr/resources/user/images/ico/ico_declaration.svg" alt="신고">신고하기</button>
<!-- 레이어팝업 모달 -->
<div id="pop_email" class="modal_bg">
    <div class="modal_box">
        <div class="modal_header">
            <div class="rep_pos_pop"><h2>포스트 신고하기</h2></div>
            <button class="modal_close">닫기</button>
        </div>
        <hr>
        <div class="writer_content">
         <h5>작성자 |</h5><h5></h5>	<!-- 그냥 reply 패키지에서 가져와야 할 듯 -->
        <br>
        <h5>내   용| </h5><h5></h5>	<!-- 그냥 reply 패키지에서 가져와야 할 듯 -->
        </div>
        <hr>
        <div class="select_reason">사유선택</div>
<div class="modal_container">
            <div class="reason_detail">
                <ul>
                    <li class="list">
                        <div class="check_area">
                            <input type="radio" name="select" id="0" class="report_reason">
                            <label class="reason_content"  for="0">스팸홍보/도배글입니다.</label>

                        </div>
                    </li>
                    <li class="list">
                        <div class="check_area">
                            <input type="radio" name="select" id="1" class="report_reason">
                            <label class="reason_content"  for="1">음란물입니다.</label>
                        </div>
                    </li>
                    <li class="list">
                        <div class="check_area">
                            <input type="radio" name="select" id="2" class="report_reason">
                            <label class="reason_content"  for="2">불법정보를 포함하고 있습니다.</label>
                        </div>
                    </li>
                    <li class="list">
                        <div class="check_area">
                            <input type="radio" name="select" id="3" class="report_reason">
                            <label class="reason_content" for="3">청소년에게 유해한 내용입니다.</label>
                        </div>
                    </li>
                    <li class="list">
                        <div class="check_area">
                            <input type="radio" name="select" id="4" class="report_reason">
                            <label class="reason_content"  for="4">욕설/생명경시/혐오/차별적 표현입니다.</label>
                        </div>
                    </li>
                    <li class="list">
                        <div class="check_area">
                            <input type="radio" name="select" id="5" class="report_reason">
                            <label class="reason_content"  for="5">개인정보 노출 위험이 있습니다.</label>
                        </div>
                    </li>
                    <li class="list">
                        <div class="check_area_last">
                            <input type="radio" name="select" id="6" class="report_reason">
                            <label class="reason_content"  for="6">불쾌한 표현이 있습니다.</label>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="detail_reason">
            <input type="text" class="detail_content" placeholder=" 세부 내용 작성">
        </div>
        <div class="modal_footer">
            <button class="modal_close btn_black" onclick="submitReport()">신고하기</button>
        </div>
    </div>
</div>
<script>
    function submitReport() {
        // 선택된 라디오 버튼의 값 가져오기
        const selectedReason = document.querySelector('input[name="select"]:checked').value;

        // 만약 라디오 버튼이 선택되지 않은 경우, 경고 메시지를 표시하고 함수 종료
        if (!selectedReason) {
            alert('신고 사유를 선택하세요.');
            return;
        }

        // 선택된 라디오 버튼의 값
        const selectedReasonValue = selectedReason.value;

        // 세부 내용 가져오기
        const detailContent = document.querySelector('.detail_content').value;

        // 서버로 데이터 전송
        const formData = new FormData();
        formData.append('selectedReason', selectedReasonValue);
        formData.append('detailContent', detailContent);

        // fetch 코드 추가
        fetch("/jdgr/user/blame/p_blamepop", {
            method: 'POST',
            body: formData,
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('서버 응답이 올바르지 않습니다.');
            }
            return response.json();
        })
        .then(data => {
            const result = data.msg;
            const isOk = result === "ok";
            if (isOk) {
                alert("신고 완료");
                // 원하는 추가 작업 수행
            } else {
                alert("신고 오류");
                // 원하는 추가 작업 수행
            }
        })
        .catch(error => {
            console.error('오류 발생:', error);
            alert('서버 통신 중 오류가 발생했습니다.');
        });

        // 모달 닫기
        closePopup();
    }

    function closePopup() {
        // 모달 닫기
        var modal = document.getElementById('pop_email');
        modal.style.display = 'none';
    }
//         .then( (resp) => {return resp.json() } )
//         .then( (data) => {
// 			const result = data.msg;
// 			const isOk = result == "ok";
// 			if(isOk){
// 				alert("신고 완료");
// 				window.idOk = true;
// 			}else{
// 				alert("신고 오류");
// 				window.idOk = false;
// 			}
//         }
//         );
//     }
//             console.log('서버 응답:', data);
//             // 성공 또는 실패에 따른 처리
//             if (data.success) {
//                 // 성공 처리
//                 closePopup();
//             } else {
//                 // 실패 처리
//                 alert('서버 오류가 발생했습니다.');
//             }
//         })
//         .catch(error => {
//             console.error('오류 발생:', error);
//             alert('서버 통신 중 오류가 발생했습니다.');
//         });
        
//         // 모달 닫기
//         closePopup();
//     }

//     function closePopup() {
//         // 모달 닫기
//         var modal = document.getElementById('pop_email');
//         modal.style.display = 'none';
//     }
</script>

<%@ include file="/WEB-INF/views/user/common/footer.jsp" %>