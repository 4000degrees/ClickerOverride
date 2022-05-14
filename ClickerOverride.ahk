#SingleInstance Force

SetTitleMatchMode, 2

getWindowTitle() {
	
	WindowTitles := ["PowerPoint Presenter View", "Pympress Content"]
	
	for index, element in WindowTitles
	{
		IfWinExist, %element%
		{
			return %element%
		}

	}	
}

*PgUp::
	ControlSend,,{PgUp},% getWindowTitle()
	return

*PgDn::
	ControlSend,,{PgDn},% getWindowTitle()
	return