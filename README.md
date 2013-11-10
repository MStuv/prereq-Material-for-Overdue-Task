prereq-Material-for-Overdue-Task
================================

Information to help with Overdue Task List Assignment

1. PCH Files
		* The PCH file allows imports, defines and other macros that will automatically be included at the begininning
			of ever .h file created.

		* The PCH file  is a precompiler file so before any of the additionals are used,
			the project needs to be "cleaned" in order for the project to be aware of the added connands.
			(Clean HotKey = Command-Shift K)

___________________________________________________

2. TextView and the Keyboard

		* Conformed the VC to the UITextViewDelegate Protocol in VC.h file

		* In VC.m: in the viewDidLoad, set the UITextViewDelegate delegate property to self

		* in VC.m: implemented an optional UITextViewDelegate Method to program the TextView to dismiss the keyboard from the view when the user hits return

		* Used if statement to see if the text action was equal to \n (return)

		* If the if statement was true, resigned the first responder (keyboard) and returned NO, telling the TextView to not allow further text changes

		* if the if statement was false, return YES telling the textView to continue allow changes.

