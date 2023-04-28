function check() {
	if(document.fm.std_no.value == "") {
		alert("학번을 입력하지 않았습니다.")
		document.fm.std_no.focus()
		return false;
	}else if(document.fm.std_nm.value == "") {
		alert("성명을 입력하지 않았습니다.")
		document.fm.std_nm.focus()
			return false;
	}else {
		alert("학생등록이 완료되었습니다.")
		return true;
	}
}