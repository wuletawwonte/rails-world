import{Controller as s}from"@hotwired/stimulus";const t=class _PasswordVisibility extends s{connect(){this.hidden=this.inputTarget.type==="password",this.class=this.hasHiddenClass?this.hiddenClass:"hidden"}toggle(s){s.preventDefault(),this.inputTarget.type=this.hidden?"text":"password",this.hidden=!this.hidden,this.iconTargets.forEach((s=>s.classList.toggle(this.class)))}};t.targets=["input","icon"],t.classes=["hidden"];let i=t;export{i as default};
