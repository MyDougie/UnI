<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>

<!-- title css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/title.css">

<link href='${pageContext.request.contextPath}/resources/css/fullcalendar.min.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/resources/css/fullcalendar.print.min.css' rel='stylesheet' media='print' />


<script>
$(document).ready(function() {

    initThemeChooser({

      init: function(themeSystem) {
        $('#calendar').fullCalendar({
          themeSystem: themeSystem,
          fixedWeekCount : true,
          customButtons: {//add event
			addBtn: {
				text: '+',
				click: function(){
					setDate();//set Date
					$("#insertModal").modal('show');//show modal
				}
			}        	  
          },
          header: {//btn
            left: 'prev,next',
            center: 'title',
            right: 'today addBtn'
          },
          views: {
              month: { // name of view
                  titleFormat: 'MMM, YYYY'
                  // other view-specific options here
              }
          },
          height: 465,//height
          validRange: {
              start: '2017-09-30',
              end: '2099-12-31'
          },
          defaultDate: new Date(),
          weekNumbers: false,
          navLinks: true, // can click day/week names to navigate views
          editable: true,
          eventLimit: true,
          displayEventTime: false,
          eventClick: function(calEvent, jsEvent, view) {//get Event
		  				
              var boardNo = calEvent.boardNo;
          	$.ajax({
          		url: '/uni/calendar/getEvent',
          		dataType: 'json',
          		data: "boardNo="+boardNo,
          		success: function(data){
          			alert("data : " + JSON.stringify(data.event));
          		},
          		error : function(data, msg){
          			alert(data + " / " + msg);
          		}
          		
          	});

          },
          events: function(start, end, timezone, callback) {//getEventList
              $.ajax({
                  url: '/uni/calendar/getEventList',
                  dataType: 'json',
                  data: "start="+start+"&end="+end,
                  success: function(data) {
                	  //alert("data : " + JSON.stringify(data.eventList));
                      var events = [];
                      $.each(data.eventList, function(idx, event) {
                  			events.push({
                  				boardNo: event.boardNo,
                                title: event.title,
                                start: event.startDate,
                                end: event.endDate
                            });
                  		});
                      callback(events);
                  },
                  error : function(data, msg){
                	  alert(data + " / " + msg);
                  }
              });
          }
          
        });
      },

      change: function(themeSystem) {//theme
        $('#calendar').fullCalendar('option', 'themeSystem', 'united');
      }

    });
    
  	//clear modal
    $('#insertModal').on('hidden.bs.modal', function() {
    	$(this).find('form')[0].reset();
	});
    
    //register event
    $('#registerBtn').click(function(){
    	var valid = invalidCheck();
    	if(valid==true){
	    	$('#insertForm').submit();
	    	$('#insertModal').modal('toggle');//close the modal
    	}
    });
    
    function setDate(){
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth()+1; //January is 0!
		var yyyy = today.getFullYear();
		
		if(dd<10) {
		    dd = '0'+dd
		} 
		
		if(mm<10) {
		    mm = '0'+mm
		} 
		
		today = yyyy + '-' + mm + '-' + dd;
	    $('input[type=date]').val(today);
    }
    
    function invalidCheck(){
    	var startDate = $('#startDate').val();
    	var endDate = $('#endDate').val();
    	var title = $('#title').val();
    	var content = $('#content').val();
    	//var imgPath = $('#imgPath').val();
    	
         if(startDate.trim() == '' ){
            alert('Please enter event start date.');
            $('#startDate').focus();
            return false;
        }else if(endDate.trim() == '' ){
        	alert('Please enter event end date.');
            $('#endDate').focus();
            return false;
        }else if(title.trim() == ''){
        	alert('Please enter title.');
            $('#title').focus();
            return false;
        }else if(content.trim() == '' ){
        	alert('Please enter content.');
            $('#content').focus();
            return false;
        }
        	
        return true;
       
    }
    
    
	
  });

</script>


<style>

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

	.column {
	    float: left;
	    width: 50%;
	    /* padding: 10px; */
	  /*   height: 300px; /* Should be removed. Only for demonstration */ */
	}
	
	input[type=date] {
		height:40px; 
		font-size:12pt;
	}
</style>

	
</head>
<body>

<div id="fh5co-blog-popular">
	<div class="container">
		<div class="row animate-box" style="height:80px;">
			<div class="col-md-12 col-md-offset-0 text-center fh5co-heading">
				<h2><span>Calendar</span></h2>
			</div>
		</div>
	</div>
</div>

<div id='calendar'></div>

<!-- insert Modal -->
<div class="modal fade" id="insertModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Add Event</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
        <form id="insertForm" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/board/insertBoard">
          <div class="form-group">
	          <div class="column">
	            <label for="date" class="form-control-label">Start:</label>
	            <input type="date" id="startDate" name="startDate" class="form-control"/>
	          </div>
	          <div class="column">
	            <label for="date" class="form-control-label">End:</label>
	            <input type="date" id="endDate" name="endDate" class="form-control"/>
	          </div>
          </div>
         
          
          <div class="form-group">
            <label for="title" class="form-control-label">Title:</label>
            <input type="text" class="form-control" id="title" name="title" style="height:40px;">
          </div>
          <div class="form-group">
            <label for="content" class="form-control-label">Content:</label>
            <textarea class="form-control" id="content" name="content" style="height:150px;"></textarea>
          </div>
          <div class="form-group">
            <label for="image" class="form-control-label">Image:</label>
            <input type="file" class="form-control" id="imgPath" name="file" multiple/>
          </div>
        </form>
          
      </div>
      <div class="modal-footer">
        <button type="button" class="btn cancleBtn" data-dismiss="modal" id="cancleBtn">Close</button>
        <button type="button" class="btn registerBtn" id="registerBtn">Register</button>
      </div>
    </div>
  </div>
</div>
  

<script src='${pageContext.request.contextPath}/resources/js/moment.min.js'></script>
<script src='${pageContext.request.contextPath}/resources/js/fullcalendar.min.js'></script>
<script src='${pageContext.request.contextPath}/resources/js/theme-chooser.js'></script>

</body>
</html>