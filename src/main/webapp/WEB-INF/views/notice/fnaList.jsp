<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
    #bannerBox{
        width:100%;
        height:200px;
        margin: 0 auto;
    }
    #bannerImg{
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
</style>
<style>
    ol, ul, li {
        list-style: none;
        margin: 0;
        padding: 0;
        border: 0;
        vertical-align: baseline;
    }
    li {
        display: list-item;
        unicode-bidi: isolate;
    }
    body{
        font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, "Helvetica Neue", "Segoe UI", "Apple SD Gothic Neo", "Noto Sans KR", "Malgun Gothic", sans-serif;
    }
    .contentwrapper{
        width: 1024px;
        height: 1000px;
        margin: 0 auto;
    }
    .faq{
        display: flex;
        flex-direction: column;
        gap: 16px;
    }
    .faq_search{
        display: flex;
        flex-direction: column;
        padding: 20px;
        gap: 20px;
    }
    .faq_title{
        font-size: 24pt;
        font-weight: 700;
        line-height: 32px;
    }
    .faq_searchbar{
        width: 100%;
        height: 40px;
        padding: 4px 8px;
        border-radius: 8px;
        background: #f2f5f7;
        display: flex;
        align-items: center;
        gap: 10px;
    }
    .faq_searchbar input{
        color: #3e5463;
        font-size: 14px;
        background: none;
        border: none;
        vertical-align: super;
        width: calc(100% - 60px);
        padding: 0px;
        line-height: 24px;
    }
    .faq_searchbar img{
        vertical-align: middle;
    }
    input {
        padding: 15px 10px;
        border-radius: 6px;
        border: 1px solid #ddd;
        box-shadow: none;
        outline: none;
        background-color: #f2f5f7;
        -webkit-appearance: none;
        appearance: none;
        font-size: 16px;
        color: #282b33;
    }
    .accordionitems {
        box-shadow: 0px -1px 0px 0px #ddd inset;
        border-bottom: 1px solid #ddd inset;
    }
    .item_title{
        justify-content: flex-start;
        gap: 6px;
        padding: 15px 0px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        cursor: pointer;
    }
    .item_title p{
        overflow: hidden;
        text-overflow: ellipsis;
        word-break: break-all;
        font-weight: 500;
    }
    p{
        margin: 0;
        padding: 0;
    }
    .faq__arrow {
        border-color: #acacac;
        margin-left: auto;
        transition: transform 0.3s ease;
    }
    .down {
        transform: rotate(45deg);
    }
    .rotate {
        transform: rotate(225deg); /* 180도 이상 회전하여 아래 방향을 가리키도록 설정 */
    }
    .arrow {
        border: solid #fff;
        border-width: 0 1px 1px 0;
        display: inline-block;
        padding: 4px;
    }
    .item_content {
        max-height: 0;
        overflow: hidden;
        transition: max-height 0.5s ease-out, padding 0.5s ease-out;
        line-height: 24px;
        padding-bottom: 0;
    }

    .item_content.active {
        max-height: 300px; /* 충분히 큰 값으로 설정 */
        padding-bottom: 40px;
    }
    .faq_content{
        padding: 15px;
        border-radius: 10px;
        background: #f8fafb;
        font-size: 14px;
        font-weight: 400;
        line-height: 22px;
        color: #282b33 !important;
        word-break: break-all;
    }
    pre{
        display: block;
        unicode-bidi: isolate;
        white-space: pre;
        margin: 1em 0px;
    }
</style>
<script>
    document.addEventListener("DOMContentLoaded", () => {
        const btns = document.querySelectorAll(".item_title");

        btns.forEach((btn) => {
            btn.addEventListener("click", () => {
                const content = btn.nextElementSibling;
                const arrow = btn.querySelector(".faq__arrow");
                const isActive = content.classList.contains("active");

                closeAllContents();

                if (!isActive) {
                    content.classList.add("active");
                    arrow.classList.add("rotate");
                } else {
                    arrow.classList.remove("rotate");
                }
            });
        });

        function closeAllContents() {
            const allContents = document.querySelectorAll(".item_content");
            const allArrows = document.querySelectorAll(".faq__arrow");

            allContents.forEach(content => content.classList.remove("active"));
            allArrows.forEach(arrow => arrow.classList.remove("rotate"));
        }
    });
</script>
<div class="contentbody">
    <div id="bannerBox">
        <img src="/img/메이트베너.jpg" id="bannerImg"/>
    </div>
    <div class="contentwrapper">
        <div class="faq">
            <div class="faq_search">
                <div class="faq_title">
                    안녕하세요.
                    <br>
                    무엇을 도와드릴까요?
                </div>
                <div class="faq_searchbar">
                    <img width="20" height="20" src="https://d31wz4d3hgve8q.cloudfront.net/static/img/ic_search_3.svg">
                    <input type="search" placeholder="검색어를 입력하세요."/>
                </div>
            </div>
            <div class="faq_list">
                <div class="listbody">
                    <ul>
                        <li class="accordionitems">
                            <div class="item_title">
                                <p>Q. 소셜 매치 취소/변경 환불 규정을 알고 싶어요</p>
                                <span id="arrowbtn" class="faq__arrow arrow down" style="border-color: rgb(172, 172, 172);"></span>
                            </div>
                            <div class="item_content">
                                    <pre class="faq_content">
                                        <b>소셜 매치 취소 시 환불 정책</b>
                                        • 매치 2일 전: 무료 취소
                                        • 매치 1일 전: 80% 환불
                                        • 당일 ~ 매치 시작 90분 전까지: 20% 환불
                                        • 매치 시작 90분 이내: 환불 불가
                                    </pre>
                            </div>
                        </li>
                        <li class="accordionitems"></li>
                        <div class="item_title">
                            <p>Q. 매치 진행을 위한 최소 인원이 궁금해요</p>
                            <span class="faq__arrow arrow down" style="border-color: rgb(172, 172, 172);"></span>
                        </div>
                        <div class="item_content">
                                    <pre class="faq_content">
                                        <b>매치 성격 및 구장 크기</b>
                                        에 따라 진행을 위한 최소 인원은 달라질 수 있습니다.
                                    </pre>
                        </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

