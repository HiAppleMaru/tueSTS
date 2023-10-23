window.addEventListener("load", () =>{
    document.querySelectorAll(".cart").forEach(item =>{
        item.addEventListener("click", e=> {
            const target = e.target.closest("tr")
            const bookid = target.dataset.bookid;
            //closest => 위(부모,조상)쪽을 찾아보면서 가장 가까운거를 선택

            fetch(`/cart/add/${bookid}`, {
                method: "GET",
            })
            .then(resp => resp.text())
            .then(result => {
                if(result == "OK")
                    alert("장바구니에 담기 성공");
            });
        });
    });

    document.querySelectorAll(".cart_update").forEach(item => {
        item.addEventListener("click", e => {
            const tr = e.target.closest("tr");
            const input = tr.querySelector("input");

            fetch(`/cart/update/${tr.dataset.bookid}/${input.value}`)
            .then(resp => resp.text())
            .then(result => {
                if(result == "OK") {
                    alert("변경 되었습니다.");
                }
            });

           
        });
    });
});