
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Something Greate</title>
    <style>
        * {
            background-color: #fdf6e3;
            margin-top: 0;
            margin-bottom: 0;
            margin-right: auto;
            margin-left: auto;
            font-family: monospace;
            color: #dc322f;
            text-align: center;
            font-size: x-large;
        }
        *::selection {
            color: #fdf6e3;
            background-color: #dc322f;
        }
        .box{
            border: 4px double #dc322f;
        }
        #main-box{
            margin-top: 200px;
            padding: auto;
            width: 500px;
            height: 200px;
        }
        #clock{
            margin-top: 50px;
            font-size: 1.5cm;
        }
        #ampm{
            font-size: 0.8cm;
        }
        #date{
            margin-top: 0.5cm;
            font-size: 0.4cm;
        }
        #lines{
            margin-top: 130px;
        }
        .line{
            margin-top: 30px;

        }
        /* .link-box{
            display: inline-block;
            width: 220px;
            height: 130px;
            border: 4px double;
            text-align: center;
        } */
        .link{
            display: inline-block;
            margin-right: 25px;
            margin-left: 25px;
        }
        a{
            text-decoration: none;
        }
        /* .imagine-box{
                        
        } */

    </style>
  </head>
  <body>
      <div class="box" id="main-box">
        <div id="clock">

        </div>
        <div id="date">

        </div>
      </div>
      <div id="lines">
        <div class="line">
            
        </div>
        <div class="line">
        <div style="text-align: center">
            <h1>Hello!</h1>
        </br>
        <p>Is it time to get to know which GNU/Linux distro is the BEST?</p>
        </br>
        </br>
         <a align="center" href="best">PRESS TO SHOW</a>
        </div>
      </div>
      </div>
      <script>
        setInterval(showTime, 1000);
        function showTime() {
            let time = new Date();
            let hour = time.getHours();
            let min = time.getMinutes();
            let today = new Date();
            am_pm = "AM";
  
            if (hour > 12) {
                hour -= 12;
                am_pm = "PM";
            }
            if (hour == 0) {
                hr = 12;
                am_pm = "PM";
            }
  
            hour = hour < 10 ? "0" + hour : hour;
            min = min < 10 ? "0" + min : min;
  
            let currentTime = hour + ":" 
                + min + "<span id='ampm'> "+am_pm+"</span>";
            let currentDateRow = today.toDateString().split(" ")
            let currentDate = currentDateRow[0]+", "+currentDateRow[2]+" "
                +currentDateRow[1]+" "+currentDateRow[3];
  
            document.getElementById("clock")
                .innerHTML = currentTime;
            document.getElementById("date")
                .innerHTML = currentDate;
        }
        showTime();
    </script>
  </body>
</html>

