$(document).ready(function() {

	// Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
	$("#formnhanvien").validate({
		rules : {
			id : {required : true,minlength : 5},
			name : {required : true},
			birthday : {required : true,date : true},
//			gender : "required",
			email : {required : true,email : true},
			phone : {required : true,number : true},
			salary : {	required : true},
			 SelectName: { valueNotEquals: "default" }
		},
		messages : {
			id : {
				required : "nhập mã nhân viên",
				minlength : "tối thiểu 5 kí tự"
			},
			name : { required:"nhập tên nhân viên"},
			birthday : {
				required : "nhập ngày sinh"
			},
//			gender : "chưa nchon gioi tinh ",
			email : {
				required : "nhập địa chỉ email",
				email : "nhập đúng định dạng email"
			},
			phone : {
				required : "nhập số điện thoại",
				number : "nhập đúng định dạng số"
			},
			salary : {
				required : "nhập lương cho nhân viên",
				
			},
			depart: {  },

		}
	});
	$("#formphongban").validate({
		rules : {
			  id: {required : true},
			  departname : {required : true},
		},
		messages : {
			id : {
				required : "nhập mã phòng ban"	},
				departname:{ required:"nhập tên phòng ban"}
		}
	});
	$("#formdanhgia").validate({
		rules : {
			  id: {required : true},
			  departname : {required : true},
		},
		messages : {
			id : {
				required : "nhập mã phòng ban"	},
				departname:{ required:"nhập tên phòng ban"}
		}
	});

});