function GL_CheckCapsLock( e )
{
 kc = e.keyCode?e.keyCode:e.which;
 sk = e.shiftKey?e.shiftKey:((kc == 16)?true:false);
 if(((kc >= 65 && kc <= 90) && !sk)||((kc >= 97 && kc <= 122) && sk))
  document.getElementById('divMayus').style.visibility = 'visible';
 else
  document.getElementById('divMayus').style.visibility = 'hidden';
}

function GL_Login()
	{
var xuserid=document.User_Login.id.value;
var xpassword = document.User_Login.pass.value;
// check for a value in both fields.

if ( xuserid == '') 
{
window.alert('Enter your User Name');
document.User_Login.id.focus();
document.User_Login.id.select();
return false;
}
else if(xpassword == '' )
{
window.alert('Enter your Password');
document.User_Login.pass.focus();
document.User_Login.pass.select();
return false;
}
else {
return true;
      }
   }