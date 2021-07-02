Contact = InputBox("Entrez le nom du contact" & vbNewLine & vbNewLine &  "N'utilisez pas d'accent !", "WhatsApp DDos")
Message = InputBox("Quel message voulez vous envoyer ?","WhatsApp DDos")
T = InputBox("Combien de fois voulez vous envoyer le message ?" & vbNewLine & vbNewLine & "Entrez un nombre !","WhatsApp DDos")
If MsgBox("Voulez-vous continuer ?" & vbNewLine & vbNewLine & "Cliquez sur NON pour annuler.", vbYesNo + vbQuestion + vbSystemModal, "WhatsApp DDos") = vbYes Then
 
	Set WshShell = WScript.CreateObject("WScript.Shell")
	Return = WshShell.Run("https://web.whatsapp.com/", 1)

 
	If MsgBox("Whatsapp Web est-il ouvert ?" & vbNewLine & vbNewLine & "Attendez que la page charge !" & vbNewLine & vbNewLine & "Cliquez sur NON pour annuler !", vbYesNo + vbQuestion + vbSystemModal, "WhatsApp DDos") = vbYes Then
 
	MsgBox "Ne touchez pas au navigateur pendant l'attaque !" & vbNewLine & vbNewLine & "Demmarrage dans 10 secondes.", 1024 + vbSystemModal, "Preparation du DDoS"
 
	WScript.Sleep 50
	WshShell.SendKeys "{TAB}"
 
	WScript.Sleep 50
	WshShell.SendKeys Contact
	WScript.Sleep 5000
	WshShell.SendKeys "{ENTER}"
	WScript.Sleep 5000
 
	For i = 0 to T
	WScript.Sleep 5
	WshShell.SendKeys Message
	WScript.Sleep 5
	WshShell.SendKeys "{ENTER}"
	Next
 
	WScript.Sleep 3000
	MsgBox "DDosing sur " + Contact + " fini., visitez mon github : mattlasardine.", 1024 + vbSystemModal, "DDos Fini"
 
	Else
	MsgBox "Le processus à été annulé avec succès.", vbSystemModal, "DDos Annulé"
	End If
Else
MsgBox "Le processus n'as pas pu continuer.", vbSystemModal, "DDos Annulé"
End If

' Abre o Limontec.com
Set WshShell = WScript.CreateObject("WScript.Shell")
Return = WshShell.Run("https://github.com/MattLaSardine", 1)
