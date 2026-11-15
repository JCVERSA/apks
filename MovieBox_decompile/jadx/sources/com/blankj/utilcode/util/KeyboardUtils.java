package com.blankj.utilcode.util;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import java.lang.reflect.Field;

public abstract class KeyboardUtils {

    private static int f19393a;

    public static void a(Activity activity) {
        b(activity.getWindow());
    }

    public static void b(Window window) {
        InputMethodManager inputMethodManager = (InputMethodManager) Utils.a().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        String[] strArr = {"mLastSrvView", "mCurRootView", "mServedView", "mNextServedView"};
        for (int i10 = 0; i10 < 4; i10++) {
            try {
                Field declaredField = InputMethodManager.class.getDeclaredField(strArr[i10]);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                Object obj = declaredField.get(inputMethodManager);
                if ((obj instanceof View) && ((View) obj).getRootView() == window.getDecorView().getRootView()) {
                    declaredField.set(inputMethodManager, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    private static int c(Window window) {
        View decorView = window.getDecorView();
        Rect rect = new Rect();
        decorView.getWindowVisibleDisplayFrame(rect);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getDecorViewInvisibleHeight: ");
        sb2.append(decorView.getBottom() - rect.bottom);
        int iAbs = Math.abs(decorView.getBottom() - rect.bottom);
        if (iAbs > e0.p() + e0.s()) {
            return iAbs - f19393a;
        }
        f19393a = iAbs;
        return 0;
    }

    public static void d(Activity activity) {
        if (activity == null) {
            return;
        }
        f(activity.getWindow());
    }

    public static void e(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) Utils.a().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public static void f(Window window) {
        if (window == null) {
            return;
        }
        View currentFocus = window.getCurrentFocus();
        if (currentFocus == null) {
            View decorView = window.getDecorView();
            View viewFindViewWithTag = decorView.findViewWithTag("keyboardTagView");
            if (viewFindViewWithTag == null) {
                viewFindViewWithTag = new EditText(window.getContext());
                viewFindViewWithTag.setTag("keyboardTagView");
                ((ViewGroup) decorView).addView(viewFindViewWithTag, 0, 0);
            }
            currentFocus = viewFindViewWithTag;
            currentFocus.requestFocus();
        }
        e(currentFocus);
    }

    public static boolean g(Activity activity) {
        return c(activity.getWindow()) > 0;
    }

    public static void h() {
        InputMethodManager inputMethodManager = (InputMethodManager) Utils.a().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.toggleSoftInput(2, 1);
    }

    public static void i(View view) {
        j(view, 0);
    }

    public static void j(View view, int i10) {
        InputMethodManager inputMethodManager = (InputMethodManager) Utils.a().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        view.setFocusable(true);
        view.setFocusableInTouchMode(true);
        view.requestFocus();
        inputMethodManager.showSoftInput(view, i10, new ResultReceiver(new Handler()) {
            @Override
            protected void onReceiveResult(int i11, Bundle bundle) {
                if (i11 == 1 || i11 == 3) {
                    KeyboardUtils.k();
                }
            }
        });
        inputMethodManager.toggleSoftInput(2, 1);
    }

    public static void k() {
        InputMethodManager inputMethodManager = (InputMethodManager) Utils.a().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.toggleSoftInput(0, 0);
    }
}
