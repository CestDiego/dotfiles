-- Org Protocol Handler
-- Author: Aaron Bieber <aaron@aaronbieber.com>
-- https://github.com/aaronbieber/org-protocol-handler

-- When saved in /Applications, registers a protocol handler with the OS
-- to respond to "org-protocol" requests and launch `emacsclient'. See the
-- accompanying README.md file for more information.

-- These properties are meant to be editable by you.
property emacsClientLocation : "bash /Users/dberrocal/bin/emacs-capture"
property emacsSocketLocation : ""

-- Beyond this point, there be dragons. Proceed at your peril. --
on open location thisURL
	set theCommand to emacsClientLocation & " " & (quoted form of thisURL) & " > /dev/null 2>&1 &"
	display notification theCommand
	try
		set result to do shell script theCommand
	on error number exitCode
		display notification "emacsclient exited with code " & exitCode
	end try

	if urlString contains "capture" then
		if application "Emacs" is running then
			tell application "Emacs" to activate
		end if
	end if
end open location

do shell script "open org-protocol://capture://Templat/URL/Title/Tex"