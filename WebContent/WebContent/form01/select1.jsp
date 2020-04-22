<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  div.container { width: 400px; margin: 20px auto; }
  form div { margin-bottom: 10px; }
  label { display: inline-block; width: 70px; text-align: right; }
  input { width: 150px; padding: 4px; }
  select { width: 50px; padding: 4px; }
  button { padding: 0.4em 2em; margin-top: 10px; }
</style>
</head>
<body>
  <div class="container">
    <form action="text2action.jsp" method="get">
      <h1>select 01</h1>

      <div>
        <label>number1:</label> 
        <input type="text" name="number1" value="34" />
      </div>
      
      <div>
          <label>operator:</label>
          <select name="cmd">
              <option value="+">+</option>
              <option value="-">-</option>
              <option value="*">*</option>
              <option value="/">/</option>
          </select>
      </div>      

      <div>
        <label>number2:</label> 
        <input type="text" name="number2" value="8" />
      </div>

      <div>
        <button type="submit">확인</button>
      </div>
    </form>
  </div>
</body>
</html>


