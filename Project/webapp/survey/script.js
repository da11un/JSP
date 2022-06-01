function values() { //체크된 체크박스의 값을 확인하기 위해(직접 입력한 값이 있으면 먼저 처리)
	if (document.voteForm.other.value != "") {
		var arr = document.getElementsByName("movie");
		let val = document.voteForm.other.value;
		for (let i = 0 ; i < arr.length; i++){
			if (arr[i].value==val){
				alert("이미 존재하는 항목입니다.");
				document.voteForm.other.value = "";
				return;
			}
		}
		document.voteForm.checkedVal.value = document.voteForm.other.value;
		document.voteForm.checkedNum.value = "-1";
	} else {
		let movie_arr = document.getElementsByName("movie");
		let chkcnt = 0;
		for(i=0;i<movie_arr.length;i++){
			if(movie_arr[i].checked){ 
				chkcnt++;
			}
		}
	    if(chkcnt < 1){
			alert("투표할 항목을 선택해주세요.");
			document.voteForm.focus();
			return;
		}else {
			for (let i = 0; i < movie_arr.length; i++) {
				if (movie_arr[i].checked) {
					document.voteForm.checkedVal.value = movie_arr[i].value;
					break;
				}
			}
		}
	}
	document.voteForm.submit();
}
		
function update() {
	let movieName = document.getElementsByName("movieName");		
	let change = document.updateForm.updateName.value;
	let chkcnt = 0;
	for(let i=0;i<movieName.length;i++){
		if(movieName[i].checked){ 
			chkcnt++;
		}
	}
	
	if(document.updateForm.updateName.value == "") {
		alert("변경 내용을 입력해 주세요.");
		document.updateForm.updateName.focus();
		return;
	}
	
    if(chkcnt < 1){
		alert("변경할 항목을 선택해주세요."); 	
		document.updateForm.focus();
		return;
	}else {
		for(let i = 0; i < movieName.length; i++){
			if(movieName[i].value == change) {
				alert("이미 존재하는 항목입니다.");
				document.updateForm.updateName.value = "";
				return;
			}			
		}		
		for(let i = 0; i < movieName.length; i++){
			if(movieName[i].checked == true){ 				
				document.updateForm.checkedVal.value = movieName[i].value;			
				break;
			}
		}
	}
	document.updateForm.submit();
}

function deleteList() {
	let delete_arr = document.getElementsByName("List");
	let chkcnt = 0;
	for(let i=0; i<delete_arr.length; i++){
		if(delete_arr[i].checked){ 
			chkcnt++;
		}
	}
    if(chkcnt < 1){
		alert("삭제할 항목을 선택해주세요.");
		return;
	}
	else{   
		for(let i = 0; i < delete_arr.length; i++){			
			if(delete_arr[i].checked == true){ 			
				document.deleteForm.checkedVal.value = delete_arr[i].value;	
				break;
			}		
		}
	}
	document.deleteForm.submit();
}	


