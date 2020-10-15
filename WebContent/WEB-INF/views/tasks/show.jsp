<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${task != null}">
                <h2>${task.id} のタスク詳細ページ</h2>

                <table>
                    <tbody>
                        <tr>
                            <th>タイトル</th>
                            <td><c:out value="${task.task_title}" /></td>
                        </tr>
                        <tr>
                            <th>メッセージ</th>
                            <td><c:out value="${task.task_content}" /></td>
                        </tr>
                        <tr>
                            <th>作成日時</th>
                            <td><fmt:formatDate value="${task.creat_time}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                        <tr>
                            <th>更新日時</th>
                            <td><fmt:formatDate value="${task.update_time}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                    </tbody>
                </table>

                <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
                <p><a href="${pageContext.request.contextPath}/edit?id=${task.id}">このタスクを編集する</a></p>
            </c:when>

            <c:otherwise>
                <h2>お探しのデータは見つかりませんでした。</h2>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>
