$(document).ready(function(){
	function removeRequiredInput(arrInput){
		for ( let i = 0 ; i< arrInput.length ;i++) {
			let id_input = "#" + arrInput[i];
			$(id_input).removeAttr("required");
		}
	}
	function setModalProperties (modal_properties) {
		$(".modal-title").html(modal_properties.modaltitle);
		$(".btn-aksi").html(modal_properties.modalfooter.btnAksi.btnName);
		$(".btn-aksi").val(modal_properties.modalfooter.btnAksi.value);
		$(".btn-aksi").removeClass(modal_properties.modalfooter.btnAksi.removeColor);
		$(".btn-aksi").addClass(modal_properties.modalfooter.btnAksi.btnColor);
		$(".btn-back").html(modal_properties.modalfooter.btnBack.btnName);
	}
	function anticipateSubmitWithEnter(){
		$(window).keydown(function(event){
			if(event.keyCode == 13) {
				event.preventDefault();
				return false;
			}
		});
	}
	$(".btn-editlist").on('click',function(){
		let params ={
			url : "http://localhost/apptextparsing/data.php",
			method : "post",
			data : "",
			datatype : "json",
			success : "",
			error : ""
		}
		let modal_properties = {
			modaltitle : "Edit List",
			modalfooter : {
				btnAksi : {
					removeColor : "btn-danger",
					btnColor :"btn-success",
					btnName : "Edit",
					value : "edit"
				},
				btnBack :{
					btnName : "Kembali"
				}
			}
		}
		//get key "kkata" or "kalimat"
		let key = $(this).data("key");
		if (key=="kata") {
			modal_properties.modaltitle = "Edit Leksikon";
			params.data = {
				"id" : $(this).data("idkata"),
				"btn_editlist" : true,
				"key":key 
			};
			params.success = function(data){
				let leksikon = jQuery.parseJSON(data);
				leksikon = leksikon[0];
				$("#id_kata").val(leksikon['id_kata']);
				$("#edit_nomor_kata").val(leksikon['nomor_kata']);
				$("#edit_kata_bali").val(leksikon['kata_bali']);
				$("#edit_kata_indonesia").val(leksikon['kata_indonesia']);
				$("#edit_kelas_kata").val(leksikon['kelas_kata']);
			};
			$("#modalBody-editleksikon").css("display","block");
			$("#modalBody-editkalimat").css("display","none");
			let required_input = ["edit_kalimat","edit_is_valid"];
			removeRequiredInput(required_input);
		}else if (key == "kalimat") {
			modal_properties.modaltitle = "Edit Kalimat";
			params.data = {
				"id" : $(this).data("idkalimat"),
				"btn_editlist" : true,
				"key":key 
			};
			params.success = function(data){
				let kalimat = jQuery.parseJSON(data);
				kalimat = kalimat[0];
				$("#id_kalimat").val(kalimat['id_kalimat']);
				$("#edit_kalimat").val(kalimat['kalimat']);
				$("#edit_is_valid").val(kalimat['is_valid']);
			};
			$("#modalBody-editleksikon").css("display","none");
			$("#modalBody-editkalimat").css("display","block");
			let required_input = ["edit_nomor_kata","edit_kata_bali","edit_kata_indonesia","edit_kelas_kata"];
			removeRequiredInput(required_input);
		}
		// Hide modal body hapus dokumen
		$("#modalBody-hapuslist").css("display","none");
		setModalProperties(modal_properties);
		params.error = function(data){
			$("#error_ajax").toggle("slow")
		};
		$.ajax(params);
	});
	$(".btn-hapuslist").on('click',function(){
		//get key "kata" or "kalimat"
		let key = $(this).data("key");
		let id = 0;
		if (key=="kata") {
			id = $(this).data("idkata");
			$("#id_kata").val(id);
		}else if (key=="kalimat") {
			id = $(this).data("idkalimat");
			$("#id_kalimat").val(id);
		}
		// Hide modal body edit kata dan kalimat
		$("#modalBody-editleksikon").css("display","none");
		$("#modalBody-editkalimat").css("display","none");
		//Munculkan modal body hapus dokumen
		$("#modalBody-hapusdokumen").css("display","block");
		var modal_properties = {
			modaltitle : "Hapus Dokumen",
			modalfooter : {
				btnAksi : {
					removeColor : "btn-primary",
					btnColor :"btn-danger",
					btnName : "Hapus",
					value :"hapus"
				},
				btnBack :{
					btnName : "Kembali",
				}
			}
		}
		setModalProperties(modal_properties);
		let required_input = ["edit_nomor_kata","edit_kata_bali","edit_kata_indonesia","edit_kelas_kata","edit_kalimat","edit_is_valid"];
		removeRequiredInput(required_input);
	});

});