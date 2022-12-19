document.addEventListener('DOMContentLoaded', ()=> {
    const btn = document.getElementById('btn');

    function CheckLogin() {
        let form = document.member_insert;
        let memberID = form.memberID.value;
        let passwd = form.passwd.value;
        let memberName = form.memberName.value;

    // 아이디 검사
    // 필수 입력 사항
    if (memberID === "") {
        alert("아이디는 필수 입력 사항입니다.")
        form.memberID.focus();
        return;
    }

    if (passwd === "" || form.passwdC.value === "") {
        alert("비밀번호는 필수 입력 사항입니다.")
        form.passwd.focus();
        return;
    }

    else if ((passwd) !== (form.passwdC.value)) {
        alert("비밀번호 확인이 일치하지 않습니다");
        form.passwd.focus();
        return;
    }

    if (memberName === "") {
        alert("이름은 필수 입력 사항입니다.")
        form.memberName.focus();
        return;
    }
    form.submit();
}

    btn.addEventListener('click', ()=> {
        CheckLogin();
    })
})