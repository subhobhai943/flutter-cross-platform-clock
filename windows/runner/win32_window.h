#ifndef RUNNER_WIN32_WINDOW_H_
#define RUNNER_WIN32_WINDOW_H_

#include <windows.h>

#include <functional>
#include <memory>
#include <string>

class Win32Window {
 public:
  struct Point {
    unsigned int x;
    unsigned int y;
    Point(unsigned int x, unsigned int y) : x(x), y(y) {}
  };

  struct Size {
    unsigned int width;
    unsigned int height;
    Size(unsigned int width, unsigned int height)
        : width(width), height(height) {}
  };

  Win32Window();
  virtual ~Win32Window();

  bool Create(const std::wstring& title, const Point& origin, const Size& size);

  void Show();

  HWND GetHandle();

  void SetQuitOnClose(bool quit_on_close);

 protected:
  virtual bool OnCreate();

  virtual void OnDestroy();

  virtual LRESULT MessageHandler(HWND window,
                                 UINT const message,
                                 WPARAM const wparam,
                                 LPARAM const lparam) noexcept;

 private:
  friend class FlutterWindow;

  static LRESULT CALLBACK WndProc(HWND const window,
                                  UINT const message,
                                  WPARAM const wparam,
                                  LPARAM const lparam) noexcept;

  static Win32Window* GetThisFromHandle(HWND const window) noexcept;

  bool quit_on_close_ = false;

  void InitializeChild(const wchar_t* title,
                       const Point& origin,
                       const Size& size);

  HWND window_handle_ = nullptr;

  HWND child_content_ = nullptr;

  void SetChildContent(HWND content);

  const wchar_t* GetWindowClass();

  RECT GetClientArea();

  void UpdateTheme(HWND const window);

  int Scale(int source, double scale_factor);

  void Destroy();
};

#endif  // RUNNER_WIN32_WINDOW_H_
