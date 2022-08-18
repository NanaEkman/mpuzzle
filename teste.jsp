<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

    <body style="text-align: center;">
        <h1 style="color: green;">
          GeekforGeeks
        </h1>
        <div id="gfg_up"
             style="font-size: 15px;
                    font-weight: bold;">
            A Computer Science Portal for Geeks
        </div>
        <br />
        <button onclick="GFG_click()">
            click to remove
        </button>
        <hr />
        <section class="baseCartas" id="baseCartas">
        <div id="cartas"
             style="font-size: 15px;
                    font-weight: bold;">
            A Computer Science Portal for Geeks
        </div>
        <div id="cartas"
             style="font-size: 15px;
                    font-weight: bold;">
            A Computer Science Portal for Geeks
        </div>
        </section>
        
 
        <script type="text/javascript">
            function GFG_click() {
            	var base = document.querySelectorAll('section div');
            	for (let div of base) {
            		div.remove();
            	  }
            }
        </script>

    </body>
</html>