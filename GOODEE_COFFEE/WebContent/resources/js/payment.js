 var pay_modal = document.querySelector(".pay-modal"); 
 var payment_trigger = document.querySelector(".payment_btn"); 
 var payment_closeButton = document.querySelector(".close-btn"); 
 var payment_cancelButton = document.querySelector(".cancel");

//console.log(modal);

function togglePModal() { 
	pay_modal.classList.toggle("show-payment-modal"); 
 }

function windowOnClickP(event) { 
     if (event.target === pay_modal) { 
    	 toggleRModal(); 
     } 
 }

 payment_trigger.addEventListener("click", togglePModal); 
 payment_closeButton.addEventListener("click", togglePModal); 
 payment_cancelButton.addEventListener("click", togglePModal); 
 window.addEventListener("click", windowOnClickP); 