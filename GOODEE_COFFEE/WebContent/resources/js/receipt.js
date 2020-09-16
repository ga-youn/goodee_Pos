 var receipt_modal = document.querySelector(".receipt-modal"); 
 var receipt_trigger = document.querySelector(".receipt_btn"); 
 var receipt_closeButton = document.querySelector(".close-btn"); 
 var receipt_cancelButton = document.querySelector("#cancel");

//console.log(modal);

function toggleRModal() { 
	receipt_modal.classList.toggle("show-receipt-modal"); 
 }

function windowOnClickR(event) { 
     if (event.target === receipt_modal) { 
    	 toggleRModal(); 
     } 
 }

receipt_trigger.addEventListener("click", toggleRModal); 
receipt_closeButton.addEventListener("click", toggleRModal); 
receipt_cancelButton.addEventListener("click", toggleRModal); 
window.addEventListener("click", windowOnClickR); 