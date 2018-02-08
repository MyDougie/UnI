
<div class="modal fade" id="getEventModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Get Event</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
        <form id="eventForm" method="post" action="${pageContext.request.contextPath}/board/updateBoard">
          <div class="form-group">
	          <div class="column">
	            <label for="date" class="form-control-label">Start:</label>
	            <input type="date" id="startDate" name="startDate" class="form-control" readonly/>
	          </div>
	          <div class="column">
	            <label for="date" class="form-control-label">End:</label>
	            <input type="date" id="endDate" name="endDate" class="form-control" readonly/>
	          </div>
          </div>
         
          
          <div class="form-group">
            <label for="title" class="form-control-label">Title:</label>
            <input type="text" class="form-control" id="title" name="title" style="height:40px;" readonly>
          </div>
          <div class="form-group">
            <label for="content" class="form-control-label">Content:</label>
            <textarea class="form-control" id="content" name="content" style="height:150px;" readonly></textarea>
          </div>
          
          <div class="form-group">
            <label for="image" class="form-control-label">Image:</label>
            <div id="imgList"></div>
          </div>
   
        </form>
          
      </div>
      <div class="modal-footer">
        <button type="button" class="btn cancleBtn" data-dismiss="modal" id="cancleBtn">Close</button>
        <button type="button" class="btn updateBtn" id="updateBtn" style="visibility:visible;">Update</button>
        <button type="button" class="btn updateCompleteBtn" id="updateCompleteBtn" style="visibility:hidden;">Update Complete</button>
      </div>
    </div>
  </div>
</div>
