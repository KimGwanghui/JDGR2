<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>사용자통합검색</title>

    <link rel="stylesheet" href="../css/allCss.css">

</head>
<body>
    <div class="wrap">

        <!-- header -->
        <header>
            <div class="inner">
    
                <h1><a href="">JDGR</a></h1>
    
                <div class="search_box">
                    <select>
                        <option value="">검색기준</option>
                        <option value="">검색기준</option>
                        <option value="">검색기준</option>
                    </select>
                    <input type="text">
                    <button>검색</button>
                </div>
    
                <!-- 로그인 시 on class -->
                <div class="util_box on">
    
                    <!-- 로그인 전 -->
                    <div class="before_login">
                        <a href="">로그인</a>
                    </div>
    
                    <!-- 로그인 후 -->
                    <div class="after_login">
    
                        <!-- 클릭시 on class -->
                        <div class="user_box">
    
                            <a href="">
                                <div class="img"><img src="../images/ico/ico_info.svg" alt="유저프로필사진"></div>
                                <span class="user_nick">유저닉네임<span>님</span></span>
                                <span class="arrow"></span>
                            </a>
    
                            <!-- 유저 팝업 -->
                            <div class="pop_user_menu">
                                <div class="info_box">
                                    <div class="info_user_name">
                                        <strong>유저닉네임</strong>
                                        <span>님</span>
                                    </div>
                                    <div class="info_email">email1234@gmail.com</div>
                                    <a href="" class="ico_set">관리</a>
                                </div>
                                <div class="user_blog">
                                    <div class="tit_box">
                                        <strong>운영중인 블로그</strong>
                                        <a href="" class="ico_add">추가하기</a>
                                    </div>
                                    <ul>
                                        <li>
                                            <span class="tit">운영중인 블로그 제목1</span>
                                            <a href="" class="ico_write"></a>
                                            <a href="" class="ico_set">관리</a>
                                        </li>
                                        <li>
                                            <span class="tit">운영중인 블로그 제목1</span>
                                            <a href="" class="ico_write"></a>
                                            <a href="" class="ico_set">관리</a>
                                        </li>
                                        <li>
                                            <span class="tit">운영중인 블로그 제목1</span>
                                            <a href="" class="ico_write"></a>
                                            <a href="" class="ico_set">관리</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="btn_group">
                                    <a href="">고객센터</a>
                                    <a href="">로그아웃</a>
                                </div>
                            </div>
                            <!-- //유저 팝업 -->
    
                        </div>
    
                        <div class="alarm_box active">
                            <!-- 
                                active class를 추가하면 알림표시
                                on class 추가하면 팝업 표시
                            -->
                            <a href="" class="ico_alarm"></a>
    
                            <!-- 알람 팝업 -->
                            <div class="pop_alarm">
                                <ul>
                                    <li>
                                        <span class="ico_reply"></span>
                                        <div class="txt">
                                            <strong>유저닉네임</strong>
                                            님이 글제목1에 댓글을 달았습니다.
                                        </div>
                                        <a href="" class="delete">삭제</a>
                                    </li>
                                    <li>
                                        <span class="ico_reply"></span>
                                        <div class="txt">
                                            <strong>유저닉네임</strong>
                                            님이 글제목1에 댓글을 달았습니다.
                                        </div>
                                        <a href="" class="delete">삭제</a>
                                    </li>
                                    <li>
                                        <span class="ico_subscribe"></span>
                                        <div class="txt">
                                            <strong>유저닉네임</strong>
                                            님이 내 블로그를 구독했습니다.
                                        </div>
                                        <a href="" class="delete">삭제</a>
                                    </li>
                                    <li>
                                        <span class="ico_like"></span>
                                        <div class="txt">
                                            <strong>유저닉네임</strong>
                                            님이 내 포스트에 공감을 했습니다.
                                        </div>
                                        <a href="" class="delete">삭제</a>
                                    </li>
                                    <li>
                                        <span class="ico_reply"></span>
                                        <div class="txt">
                                            <strong>유저닉네임</strong>
                                            님이 글제목1에 댓글을 달았습니다.
                                        </div>
                                        <a href="" class="delete">삭제</a>
                                    </li>
                                    <li>
                                        <span class="ico_reply"></span>
                                        <div class="txt">
                                            <strong>유저닉네임</strong>
                                            님이 글제목1에 댓글을 달았습니다.
                                        </div>
                                        <a href="" class="delete">삭제</a>
                                    </li>
                                    <li>
                                        <span class="ico_subscribe"></span>
                                        <div class="txt">
                                            <strong>유저닉네임</strong>
                                            님이 내 블로그를 구독했습니다.
                                        </div>
                                        <a href="" class="delete">삭제</a>
                                    </li>
                                    <li>
                                        <span class="ico_like"></span>
                                        <div class="txt">
                                            <strong>유저닉네임</strong>
                                            님이 내 포스트에 공감을 했습니다.
                                        </div>
                                        <a href="" class="delete">삭제</a>
                                    </li>
                                </ul>
                            </div>
                            <!-- //알람 팝업 -->
                        </div>
    
                    </div>
    
                </div>
    
            </div>
        </header>
        <!-- //header -->
    
        <!-- main -->
        <main>
            <div class="inner">
            
                <!-- 카테고리 버튼 -->
                <ul class="tab_btns">
                    <li class="on"><button>전체</button></li>
                    <li><button>내용</button></li>
                    <li><button>블로그</button></li>
                    <li><button>닉네임, 아이디</button></li>    
                </ul>
                
                <!-- 검색한 포스트 내용 보여주기-->
                <div class="select">11,241,264건 <span class="searchText">검색어</span>에 대한 검색결과입니다.</div>
                <div class="postbox">
                    <div class="postWrite">
                        <div class="postWriteTitle"><a href="">글제목중에 <span class="searchText">검색어</span>에 대한 블로그 제목입니다.</a></div>
                        <div class="postWriteLink"><a href="">피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다</a></div>
                        <div class="postWriteNick123">
                            <div class="postNickimg"><img src="../images/ico/ico_people.svg"></div>
                            <div class="postNickname">작성자닉네임</div>
                            <div class="postWrite1"><img src="../images/ico/ico_like.svg">   266</div>
                            <div class="postWrite2"><img src="../images/ico/ico_reply.svg">    9</div>
                            <div class="postWrite3"><img src="">    |   2023.11.12</div>
                        </div>                                
                    </div>
                    <div class="postImg"><img src="../images/content/img_main01.png"></div>
                </div>
                <div class="postbox">
                    <div class="postWrite">
                        <div class="postWriteTitle"><a href="">글제목중에 <span class="searchText">검색어</span>에 대한 블로그 제목입니다.</a></div>
                        <div class="postWriteLink"><a href="">피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다</a></div>
                        <div class="postWriteNick123">
                            <div class="postNickimg"><img src="../images/ico/ico_people.svg"></div>
                            <div class="postNickname">작성자닉네임</div>
                            <div class="postWrite1"><img src="../images/ico/ico_like.svg">   266</div>
                            <div class="postWrite2"><img src="../images/ico/ico_reply.svg">    9</div>
                            <div class="postWrite3"><img src="">    |   2023.11.12</div>
                        </div>                                
                    </div>
                    <div class="postImg"><img src="../images/content/img_main01.png"></div>
                </div>
                <div class="postbox">
                    <div class="postWrite">
                        <div class="postWriteTitle"><a href="">글제목중에 <span class="searchText">검색어</span>에 대한 블로그 제목입니다.</a></div>
                        <div class="postWriteLink"><a href="">피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다</a></div>
                        <div class="postWriteNick123">
                            <div class="postNickimg"><img src="../images/ico/ico_people.svg"></div>
                            <div class="postNickname">작성자닉네임</div>
                            <div class="postWrite1"><img src="../images/ico/ico_like.svg">   266</div>
                            <div class="postWrite2"><img src="../images/ico/ico_reply.svg">    9</div>
                            <div class="postWrite3"><img src="">    |   2023.11.12</div>
                        </div>                                
                    </div>
                    <div class="postImg"><img src="../images/content/img_main01.png"></div>
                </div>
                <div class="postbox">
                    <div class="postWrite">
                        <div class="postWriteTitle"><a href="">글제목중에 <span class="searchText">검색어</span>에 대한 블로그 제목입니다.</a></div>
                        <div class="postWriteLink"><a href="">피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다</a></div>
                        <div class="postWriteNick123">
                            <div class="postNickimg"><img src="../images/ico/ico_people.svg"></div>
                            <div class="postNickname">작성자닉네임</div>
                            <div class="postWrite1"><img src="../images/ico/ico_like.svg">   266</div>
                            <div class="postWrite2"><img src="../images/ico/ico_reply.svg">    9</div>
                            <div class="postWrite3"><img src="">    |   2023.11.12</div>
                        </div>                                
                    </div>
                    <div class="postImg"><img src="../images/content/img_main01.png"></div>
                </div>
                <div class="postbox">
                    <div class="postWrite">
                        <div class="postWriteTitle"><a href="">글제목중에 <span class="searchText">검색어</span>에 대한 블로그 제목입니다.</a></div>
                        <div class="postWriteLink"><a href="">피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다</a></div>
                        <div class="postWriteNick123">
                            <div class="postNickimg"><img src="../images/ico/ico_people.svg"></div>
                            <div class="postNickname">작성자닉네임</div>
                            <div class="postWrite1"><img src="../images/ico/ico_like.svg">   266</div>
                            <div class="postWrite2"><img src="../images/ico/ico_reply.svg">    9</div>
                            <div class="postWrite3"><img src="">    |   2023.11.12</div>
                        </div>                                
                    </div>
                    <div class="postImg"><img src="../images/content/img_main01.png"></div>
                </div>
                <div class="postbox">
                    <div class="postWrite">
                        <div class="postWriteTitle"><a href="">글제목중에 <span class="searchText">검색어</span>에 대한 블로그 제목입니다.</a></div>
                        <div class="postWriteLink"><a href="">피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다피오순두부찌개는 맛있다</a></div>
                        <div class="postWriteNick123">
                            <div class="postNickimg"><img src="../images/ico/ico_people.svg"></div>
                            <div class="postNickname">작성자닉네임</div>
                            <div class="postWrite1"><img src="../images/ico/ico_like.svg">   266</div>
                            <div class="postWrite2"><img src="../images/ico/ico_reply.svg">    9</div>
                            <div class="postWrite3"><img src="">    |   2023.11.12</div>
                        </div>                                
                    </div>
                    <div class="postImg"><img src="../images/content/img_main01.png"></div>
                </div>

                <!-- 카테고리별 블로그 포스트 -->

                <!-- 페이징 -->
                <div class="paging_box">
                    <ul>
                        <li class="prev_all"><a href="" title="최신페이지로 이동"></a></li>
                        <li class="prev"><a href="" title="이전페이지로 이동"></a></li>
                        <li class="on"><a href="">1</a></li>
                        <li><a href="">2</a></li>
                        <li><a href="">3</a></li>
                        <li><a href="">4</a></li>
                        <li><a href="">5</a></li>
                        <li><a href="">6</a></li>
                        <li><a href="">7</a></li>
                        <li><a href="">8</a></li>
                        <li><a href="">9</a></li>
                        <li><a href="">10</a></li>
                        <li class="next"><a href="" title="다음페이지로 이동"></a></li>
                        <li class="next_all"><a href="" title="마지막페이지로 이동"></a></li>
                    </ul>
                
    

    
            </div>
        </main>
        <!-- //main -->
    
        <!-- footer -->
        <footer>Copyright © KH Group3 PowerBloger. All Rights Reserved.</footer>
        <!-- //footer -->
    
    </div>
    <script>
    const swiper = new Swiper('.swiper-container', {
        direction: 'horizontal', // 수평 슬라이드
        slidesPerView: 4,
        spaceBetween: 30,
        loop: true, // 무한 루프
        navigation: {
            nextEl: '.ico_next',
            prevEl: '.ico_prev',
        },
    });
    
    </script>

    
</body>
</html>