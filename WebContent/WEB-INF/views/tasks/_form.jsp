<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<label for="title">タスクのタイトル</label><br />
<input type="text" name="title" value="${task.task_title}" />
<br /><br />

<label for="content">タスクの内容</label><br />
<input type="text" name="content" value="${task.task_content}" />
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">投稿</button>