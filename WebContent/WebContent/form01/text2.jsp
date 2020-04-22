<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  body { font-family: 굴림체; }
  div.container { width: 400px; margin: 20px auto; }
  form div { margin-bottom: 10px; }
  input { width: 200px; padding: 4px; }
  button { padding: 0.4em 1em; margin-top: 10px; }
</style>
</head>
<body>
  <div class="container">
    <form action="text2action.jsp" method="get">
      <h1>텍스트 입력폼 02</h1>

      <div>
        <label>number1:</label> 
        <input type="text" name="number1" value="34" />
      </div>

      <div>
        <label>number2:</label> 
        <input type="text" name="number2" value="8" />
      </div>

      <div>
        <button type="submit" name="cmd" value="+"> + </button>
        <button type="submit" name="cmd" value="-"> - </button> 
        <button type="submit" name="cmd" value="*"> * </button> 
        <button type="submit" name="cmd" value="/"> / </button>
      </div>
    </form>
  </div>
</body>
</html>
