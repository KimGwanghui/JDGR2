<%@page import="com.semi.jdgr.page.vo.AdminBlamePageVo"%>
<%@page import="java.util.List"%>
<%@page import="com.semi.jdgr.admin.blame.vo.AdminReplyBlameVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       

       
       <%
	       String rBlaNo = request.getParameter("no");
	       AdminReplyBlameVo blameVoList = (AdminReplyBlameVo) request.getAttribute("blameVoList");
	       AdminBlamePageVo pvo = (AdminBlamePageVo)request.getAttribute("pvo");
    	%>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>
       
<!-- container -->
        <div class="container">

            <!-- 내용 -->
            

            <!-- 제목 -->
            <div class="tit_box">
                <h2>신고 / 제재 상세 조회</h2>
            </div>

            <!-- 가로 테이블 -->
            <div class="detail_box">
                <!-- 테이블 -->
                <div class="tbl_group">
            
                    <div class="tbl_box">
                        <table>
                            <caption>신고 / 제재</caption>
                            <colgroup>
                                <col width="15%"/>
                                <col width="35%"/>
                                <col width="15%"/>
                                <col width="35%"/>
                            </colgroup>
                            <tbody>
                            	<tr>
                                    <th scope="row"><label for="">신고번호</label></th>
                                    <td><%= (blameVoList != null) ? blameVoList.getrBlaNo() : "" %></td>
                                </tr>
                                <tr>
                                    <th scope="row"><label for="">댓글 번호</label></th>
                                    <td><%= (blameVoList != null) ? blameVoList.getrNo() : ""  %></td>
                                    <th scope="row"><label for="">신고 구분</label></th>
                                    <td><%= (blameVoList != null) ? blameVoList.getrBlaList() : ""  %></td>
                                </tr>
                                <tr>
                                    <th scope="row"><label for="">신고자</label></th>
                                    <td><%= (blameVoList != null) ? blameVoList.getrBlamerNo() : ""  %></td>
                                    <th scope="row"><label for="">작성자</label></th>
                                    <td><%= (blameVoList != null) ? blameVoList.getrWriterNo() : ""  %></td>
                                </tr>
                                <tr>
                                    <th scope="row"><label for="">댓글 내용</label></th>
                                    <td><%= (blameVoList != null) ? blameVoList.getrBlaCon() : ""  %></td>
                                    <th scope="row"><label for="">신고 일자</label></th>
                                    <td><%= (blameVoList != null) ? blameVoList.getrBlaDate() : ""  %></td>
                                </tr>
                                <tr>
                                    <th scope="row"><label for="">제재 여부</label></th>
                                    <td>
                                        <div class="form_box">
                                            <select class="sel_box">
                                                <option value="">이건 어떻게 가져오지</option>
                                                <option value="">로그인 정지 3일</option>
                                                <option value="">로그인 정지 7일</option>
                                            </select>
                                        </div>
                                    </td>
                                    <th scope="row"><label for="">답변 일자</label></th>
                                    <td><%= (blameVoList != null) ? blameVoList.getrAnsDate() : ""  %></td>
                                </tr>
                                <tr>
                                    <th scope="row"><label for="">처리일자</label></th>
                                    <td><%= (blameVoList != null) ? blameVoList.getrDelYn() : ""  %></td>
                                </tr>
                                <tr>
                                    <th scope="row"><label for="inp_03">세부 신고 사유</label></th>
                                    <td colspan="3"><%= (blameVoList != null) ? blameVoList.getrBlaDetail() : ""  %></td>
                                </tr>
                                <tr>
                                    <th scope="row"><label for="inp_03">답변 내용</label></th>
                                    <td colspan="3">
                                         <div class="form_box">
                                            <textarea placeholder="답변을 입력하세요"></textarea>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    
                </div>

                <div class="btn_box_group right mt20">
                    <div class="btn_box">
                        <a href="/jdgr/admin/blame/r_blame_list" class="btn_grayline">목록가기</a>
                    </div>
                    <div class="btn_box">
                        <a href="" class="btn_grayline">저장</a>
                    </div>
                    <div class="btn_box">
                        <a href="" class="btn_blue">처리완료</a>
                    </div>
                </div>

            </div>
        </div>
        <!-- //container -->

   <%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>