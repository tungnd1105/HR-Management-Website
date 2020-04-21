		$(document).ready(function(){
			$('.btnEdit').click(function(){
				$('#id').val($(this).closest('tr').find('td:eq(0)').text());
				$('#name').val($(this).closest('tr').find('td:eq(1)').text());
			});
		})