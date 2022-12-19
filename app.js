const sign_in_btn = document.querySelector("#sign-in-btn");
const sign_up_btn = document.querySelector("#sign-up-btn");
const container = document.querySelector(".container");

sign_up_btn.addEventListener("click", () => {
  container.classList.add("sign-up-mode");
});

sign_in_btn.addEventListener("click", () => {
  container.classList.remove("sign-up-mode");
});



			function tes(comand){
				var login = document.getElementById("hh").value
				var password = document.getElementById("jj").value
				mta.triggerEvent("ssj", login, password, comand)
			}
			
			function test(command){
				var login = document.getElementById("kk").value
				var password = document.getElementById("nn").value
				mta.triggerEvent("cmsg", login, password, command)
			}
			
						function teso(cod){
				mta.triggerEvent("cm", cod)
			}
