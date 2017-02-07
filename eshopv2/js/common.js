function WebForm_OnSubmit() {
    if (typeof (ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) {
        for (var i in Page_Validators) {
            try {
                    var control = document.getElementById(Page_Validators[i].controltovalidate);
                    if (!Page_Validators[i].isvalid) {
                        control.className = "errorControl";
                    }
                    else {
                    }
                }
                catch (e) { }
        }
        return false;
    }
    return true;
}