/**
	The clipboard library.
*/
module clipboard;

import std.stdio;

/**
	Read a string from the clipboard.
*/
public string readClipboard() {
	version(Windows) {
		import clipboard_windows;
		return clipboard_windows.readClipboard();
	} else version(OSX) {
		import clipboard_darwin;
		return clipboard_darwin.readClipboard();
	} else version(linux) {
		import clipboard_linux;
		return clipboard_linux.readClipboard();
	} else {
		writeln("This plattform is not supported.");
	}
}

/**
	Write a string to the clipboard.
*/
public void writeClipboard(string text) {
	version(Windows) {
		import clipboard_windows;
		clipboard_windows.writeClipboard(text);
	} else version(OSX) {
		import clipboard_darwin;
		return clipboard_darwin.writeClipboard(text);
	} else version(linux) {
		import clipboard_linux;
		return clipboard_linux.writeClipboard(text);
	} else {
		writeln("This plattform is not supported.");
	}
}

/**
	Clears the clipboard.
*/
public void clearClipboard() {
	version(Windows) {
		import clipboard_windows;
		clipboard_windows.clearClipboard();
	} else version(OSX) {
		import clipboard_darwin;
		return clipboard_darwin.clearClipboard();
	} else version(linux) {
		import clipboard_linux;
		return clipboard_linux.clearClipboard();
	} else {
		writeln("This plattform is not supported.");
	}
}

/**
	Prepare the console in order to read and write UTF8 strings.
*/
public void prepareConsole() {
	version(Windows) {
		import clipboard_windows;
		clipboard_windows.prepareConsole();
	} else version(OSX) {
		import clipboard_darwin;
		return clipboard_darwin.prepareConsole();
	} else version(linux) {
		import clipboard_linux;
		return clipboard_linux.prepareConsole();
	} else {
		writeln("This plattform is not supported.");
	}
}
