#pragma once
#include <windows.h>
#include <string>

// aryan_island' settings as one .ini file: the panel's choices from the registry plus aryan_island.ini itself
namespace backup {

bool Export(HWND owner, const std::wstring& iniPath); // asks where with a save dialog; false if cancelled or not written
bool Import(HWND owner, const std::wstring& iniPath); // asks which file; true once it's applied and aryan_island should restart
void Reset(); // every panel setting back to its default; the caller restarts
bool ExportTo(const std::wstring& file, const std::wstring& iniPath, const wchar_t* regKey); // the work behind the dialogs, on any key
bool ImportFrom(const std::wstring& file, const std::wstring& iniPath, const wchar_t* regKey);
void ResetKey(const wchar_t* regKey);

}
