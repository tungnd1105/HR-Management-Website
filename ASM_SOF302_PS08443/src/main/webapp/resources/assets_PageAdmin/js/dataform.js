// fill data  form 
$(document).ready(
		function() {
			$('.btnEdit').click(
					function() {
						var tr = $(this).closest('tr');
						$('#id').val(tr.find('td:eq(0)').text());
						$('#name').val(tr.find('td:eq(1)').text());
						if (tr.find("td:eq(2)").text() === "Nam") {
							$("#nam").prop("checked", true);
						} else {
							$("#nu").prop("checked", true);
						}
						$('#birthday').val(
								$(this).closest('tr').find('td:eq(3)').text());

						$('#email').val(
								$(this).closest('tr').find('td:eq(4)').text());
						$('#phone').val(
								$(this).closest('tr').find('td:eq(5)').text());
						$('#salary').val(
								$(this).closest('tr').find('td:eq(6)').text());

						var departName = tr.find("td:eq(7)").text();
						$("#depart option").filter(function() {
							return $(this).text() === departName;
						}).prop("selected", true);
						$('#note').val(
								$(this).closest('tr').find('td:eq(8)').text());
						$("#avatar").attr(
								"src",
								"resources/images/"
										+ $(this).closest('tr')
												.find('td:eq(9)').text());

					});
			$('.btnEdits').click(
					function() {
						var tr = $(this).closest('tr');
						var id = tr.find("td:eq(0)").text();
						$("#id").val(id);
						var nhanvien = tr.find("td:eq(1)").text();
						$("#nv option").filter(function() {
							return $(this).text() === nhanvien;
						}).prop("selected", true);
						
						if (tr.find("td:eq(2)").text() === "Thành tích") {
							$("#thanhtich").prop("checked", true);
						} else {
							$("#kyluat").prop("checked", true);
						}
						
						$('#lydo').val(
								$(this).closest('tr').find('td:eq(3)').text());
					
					
						$('#date').val(tr.find('td:eq(4)').text());
						
						
					});
			$('.btnEdita').click(
					function() {
						var tr = $(this).closest('tr');
						$('#id').val(tr.find('td:eq(0)').text());

						$('#departname').val(tr.find('td:eq(1)').text());
						
						
					});
			// clear form phong ban
			$('#btnReset').click(function() {
				$("#formnhanvien")[0].reset();
				$("#nam").prop("checked", false);
				$("#nu").prop("checked", false);
				$("#form input").val("");
				$("#avatar").attr("src", "");
			})
				$('#btnResets').click(function() {
				$("#formphongban")[0].reset();
				$("#nam").prop("checked", false);
				$("#nu").prop("checked", false);
				$("#form input").val("");
				$("#avatar").attr("src", "");
			})
		})
