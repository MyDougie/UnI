
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
