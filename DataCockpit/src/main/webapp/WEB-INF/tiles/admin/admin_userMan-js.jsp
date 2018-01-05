<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
	
  $(function () {
   var t = $('#example1').DataTable({
		 "ajax"		: {
	    	  "url"		: "<%=request.getContextPath()%>/dt_lists5.shtml",
	    	  "method"	: "POST",
	    	  "headers" : {"Content-Type": "application/json"},
	    	  "data"	: function(d){
	    		  return JSON.stringify(d);
	    	  }
	      },
	      "columns" :[
	    	  {"data": "office","defaultContent": "1"},
	    	  {"data":"phone"},
	    	  {"data":"corpname"},
	    	  {"data":"name"},
	    	  {"data":"job"},
	    	  {"data":"email"},                  
	                  ],
	      "columnDefs": [	                     
					{
	    		   	 	"targets": 6,
	    		   		 /* "data": "title", */
	    		       "render": function ( data, type, row, meta ) {
	 	    		    /* 将当前值传入controller */	  
	 	    		    /* <button class="button button-3d button-action button-circle button-jumbo"  ><i class="fa fa-thumbs-up">编辑</i></button> */
	 	    		    if (row.state == 0) {
							return '<div class="form-group"><select class="form-control" onchange="qiyong('+row.id+')"><option>已启用</option><option selected="selected">已禁用</option></select>';
						} else if(row.state == 1){
							return '<div class="form-group"><select class="form-control" onchange="jinyong('+row.id+')"><option selected="selected">已启用</option><option>已禁用</option></select>';
						} else {
							
						}
	 	    		 }
	    		  },
					{
	 	    		    "targets": 7,
	 	    		    /* "data": "title", */
	    		  		"render": function ( data, type, row, meta ) {
		    		    /* 将当前值传入controller */	  
		    		     return '<a href="./aduser_update.shtml?id='+row.id+'" class="button button-primary button-rounded button-small" style="font-size: 10.5px;font-weight: bolder; ">编辑</a>';   		    		
		    		    }
	 	    	   }
	      ],	    
	            
	});
		t.on('order.dt search.dt',
		 function() {
  		       t.column(0, {
  		              search: 'applied',
  		              order: 'applied',
  		        }).nodes().each(function(cell, i) {
  		              cell.innerHTML = i + 1;   		  	  
  		  	   	})        	 	
  		  	   }).draw();	

  })
</script>
<script language="jscript"> 
	function qiyong(val){ window.location.href = "./aduser_update1.shtml?id="+val+""; }
	function jinyong(val){ window.location.href = "./aduser_update0.shtml?id="+val+""; }
</script>
