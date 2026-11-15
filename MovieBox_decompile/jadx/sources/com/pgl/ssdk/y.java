package com.pgl.ssdk;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.text.TextUtils;
import android.view.Display;

public class y {

    private static volatile DisplayManager.DisplayListener f39399a;

    private static volatile boolean f39400b;

    private static String f39401c;

    private static String f39402d;

    private static String f39403e;

    private static DisplayManager f39404f;

    static class a implements DisplayManager.DisplayListener {
        a() {
        }

        @Override
        public void onDisplayAdded(int i10) {
            y.b(i10, 1);
        }

        @Override
        public void onDisplayChanged(int i10) {
            y.b(i10, 3);
        }

        @Override
        public void onDisplayRemoved(int i10) {
            y.b(i10, 2);
        }
    }

    public static void b(int i10, int i11) {
        if (i10 == 0) {
            return;
        }
        try {
            String strA = a(i10);
            if (i11 == 1) {
                if (strA.equals(f39401c)) {
                    return;
                }
                f39401c = strA;
            } else if (i11 == 2) {
                if (strA.equals(f39402d)) {
                    return;
                }
                f39402d = strA;
            } else {
                if (i11 != 3 || strA.equals(f39403e)) {
                    return;
                }
                f39403e = strA;
            }
        } catch (Throwable unused) {
        }
    }

    public static void c(Context context) {
        Handler handlerB;
        if (f39400b) {
            return;
        }
        f39400b = true;
        if (f39399a == null) {
            f39399a = new a();
        }
        if (f39404f == null) {
            f39404f = (DisplayManager) context.getSystemService("display");
        }
        if (f39404f == null || (handlerB = o0.b()) == null) {
            return;
        }
        try {
            f39404f.registerDisplayListener(f39399a, handlerB);
        } catch (Exception unused) {
        }
    }

    private static String a(Display display) {
        String name = display.getName();
        Object objA = s0.a(display, display.getClass(), "getType", new Class[0], new Object[0]);
        Object objA2 = s0.a(display, display.getClass(), "getOwnerPackageName", new Class[0], new Object[0]);
        Object objA3 = s0.a(null, display.getClass(), "TYPE_VIRTUAL", null);
        return String.format("%s#%s#%b", objA2, name, Boolean.valueOf((objA == null || objA3 == null || ((Integer) objA).intValue() != ((Integer) objA3).intValue()) ? false : true));
    }

    public static boolean b(Context context) {
        if (f39401c == null && f39402d == null && f39403e == null) {
            return (context == null || TextUtils.isEmpty(a(context))) ? false : true;
        }
        return true;
    }

    private static String a(int i10) {
        Display display = f39404f.getDisplay(i10);
        return display != null ? a(display) : "pd";
    }

    public static String a(Context context) {
        Display[] displays;
        if (f39404f == null) {
            f39404f = (DisplayManager) context.getSystemService("display");
        }
        DisplayManager displayManager = f39404f;
        if (displayManager == null || (displays = displayManager.getDisplays()) == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < displays.length; i10++) {
            Display display = displays[i10];
            if (display != null && display.getDisplayId() != 0) {
                stringBuffer.append(a(displays[i10]));
                if (i10 != displays.length - 1) {
                    stringBuffer.append(",");
                }
            }
        }
        return stringBuffer.toString();
    }
}
