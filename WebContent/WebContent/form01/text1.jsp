<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
  body { font-family: 굴림체; }
  div.container { width: 600px; margin: 20px auto; }
  form div { margin-bottom: 10px; }
  input { width: 200px; padding: 4px; }
  button { padding: 0.4em 3em; margin-top: 10px; }
</style>
</head>
<body>
  <div class="container">
    <form action="text1action.jsp" method="post">
      <h1>텍스트 입력폼 01</h1>

      <div>
        <label>text1:</label> 
        <input type="text" name="param1" value="아무 것이나 입력하시오1" />
      </div>

      <div>
        <label>text2:</label> 
        <input type="text" name="param2" value="아무 것이나 입력하시오2" />
      </div>
      
      <button type="submit" name="cmd" value="ok">확인</button>
      <button type="reset">취소</button>
    </form>
  </div>
</body>
</html>
