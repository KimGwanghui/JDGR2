<%@page import="com.semi.jdgr.page.vo.PageVo"%>
<%@page import="com.semi.jdgr.notice.vo.NoticeVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% List<NoticeVo> noticeVoList = (List<NoticeVo>)request.getAttribute("noticeVoList"); %>
<% PageVo pvo = (PageVo) request.getAttribute("pageVo"); %>


<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>
	
	            <!-- container -->
            <div class="container">
                <!-- 제목 -->
                <div class="tit_box">
                    <h2>공지사항 목록 조회</h2>
                </div>
                
                <!-- 검색박스 예시 -->
                <div class="search_box">
                    <div class="search_item">
                        <label for="sel_01">제목명</label>
                        <div class="form_box">
                            <input type="text" id="inp_02">
                        </div>
                    </div>
                    <div class="search_item">
                        <label for="sel_01">내용</label>
                        <div class="form_box">
                            <input type="text" id="inp_02">
                        </div>
                    </div>
                    <div class="search_item">
                        <label for="sel_01">작성자</label>
                        <div class="form_box">
                            <input type="text" id="inp_02">
                        </div>
                    </div>
                    <div class="search_item">
                        <label for="sel_01">수정일자</label>
                        <div class="form_box">
                            <input type="text" id="inp_02">
                        </div>
                    </div>
                    <div class="search_item">
                        <label for="sel_01">고정여부</label>
                        <div class="form_box">
                            <select class="sel_box">
                                <option value="">고정</option>
                                <option value="">미고정</option>
                            </select>
                        </div>
                    </div>
                    <div class="search_item">
                        <label for="sel_01">공개여부</label>
                        <div class="form_box">
                            <select class="sel_box">
                                <option value="">공개</option>
                                <option value="">비공개</option>
                            </select>
                        </div>
                    </div>
                </div>

                <!-- 버튼 -->
                <div class="btn_box_group right">
                    
                    <div class="btn_box">
                        <button class="btn_gray">초기화</button>
                    </div>
                    <div class="btn_box">
                        <button class="btn_black">검색</button>
                    </div>
                    <div class="btn_box">
                        <button class="btn_blue" onclick="location.href='/jdgr/admin/notice/write';">작성</button>
                    </div>
                </div>

                <!-- 테이블 -->
                <div class="tbl_box data mt40">
                    <table>
                        <caption>회원가입 테이블</caption>
                        <colgroup>
                            <col width="">
                            <col width="">
                            <col width="">
                            <col width="">
                            <col width="">
                            <col width="">
                            <col width="">
                            <col width="">
                            <col width="">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">번호</th>
                                <th scope="col">제목</th>
                                <th scope="col">작성자</th>
                                <th scope="col">내용</th>
                                <th scope="col">조회수</th>
                                <th scope="col">작성일자</th>
                                <th scope="col">수정일자</th>
                                <th scope="col">고정여부</th>
                                <th scope="col">공개여부</th>
                            </tr>
                        </thead>
                        <tbody>         
<%for(NoticeVo vo : noticeVoList) {%>
							<tr>
								<td><%= vo.getNoticeNo()%></td>
								<td><%= vo.getTitle()%></td>
								<td><%= vo.getAdminNo() %></td>
								<td><%= vo.getContent() %></td>
								<td><%= vo.getInquiry()%></td>
								<td><%= vo.getEnrollDate()%></td>
								<td><%= vo.getUpdateDate() %></td>
								<td><%= vo.getFixedYn() %></td>
								<td><%= vo.getDelYn() %></td>     
							</tr>
<%} %>
                        </tbody>
                    </table>
                </div>

                <div class="paging_box mt30">
                    <ul>
<%if(pvo.getStartPage() != 1) {%>
                        <li class="prev_all"><a href="/jdgr/admin/notice/list?pno=1" title="최신페이지로 이동"></a></li>
                        <li class="prev"><a href="/jdgr/admin/notice/list?pno=<%=pvo.getStartPage()-1 %>" title="이전페이지로 이동"></a></li>

<%} %>

<%for(int i = pvo.getStartPage(); i<=pvo.getEndPage(); i++) {%>
	<%if(i == pvo.getCurrentPage()) {%>
						<li class="on"><a href="/jdgr/admin/notice/list?pno=<%=i%>"><%=i %></a></li>
	<%}else{ %>
						<li><a href="/jdgr/admin/notice/list?pno=<%=i%>"><%=i %></a></li>
<%} } %>
<%if(pvo.getEndPage() != pvo.getMaxPage()) {%>
                        <li class="next"><a href="/jdgr/admin/notice/list?pno=<%=pvo.getEndPage()+1 %>" title="다음페이지로 이동"></a></li>
                        <li class="next_all"><a href="/jdgr/admin/notice/list?pno=<%=pvo.getMaxPage() %>" title="마지막페이지로 이동"></a></li>
<%} %>
                    </ul>
                </div>

            </div>
            <!-- //container -->
	
<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>
    