function showError(container, errorMessage) {
      container.className = 'error';
      var msgElem = document.createElement('span');
      msgElem.className = "error-message";
      msgElem.innerHTML = errorMessage;
      container.appendChild(msgElem);
    }

    function resetError(container) {
      container.className = '';
      if (container.lastChild.className == "error-message") {
        container.removeChild(container.lastChild);
      }
    }

    function validate() {
      var elems = document.forms["myForm"].elements;

      resetError(elems.fullname.parentNode);
      if (!elems.fullname.value) {
        showError(elems.fullname.parentNode, ' Укажите ваше имя.');
		return false;
      }

      resetError(elems.email.parentNode);
      if (!elems.email.value) {
        showError(elems.email.parentNode, ' Укажите ваш email.');
		return false;
      } 
	  
	  else {//Проверим содержит ли значение введенное в поле email символы @ и .
	  //Если поле не содержит эти символы знач email введен не верно
	  var re = /^[\w-\.]+@[\w-]+\.[a-z]{2,4}$/i;
	  var myMail = elems.email.value;
	  var valid = re.test(myMail);
	  if (!valid) {
		showError(elems.email.parentNode, ' email введен не верно.'); 
		return false;
	  }
	  }

      resetError(elems.mailbody.parentNode);
      if (!elems.mailbody.value) {
        showError(elems.mailbody.parentNode, ' Отсутствует текст.');
		return false;
      }

    }
