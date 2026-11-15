package com.pgl.ssdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.input.InputManager;
import android.os.Build;
import android.view.InputDevice;
import android.view.MotionEvent;
import org.json.JSONException;
import org.json.JSONObject;

public class w {

    private static int f39385a;

    private static int f39386b;

    private static int f39387c;

    private static int f39388d;

    private static int f39389e;

    private static int f39390f;

    private static boolean f39391g;

    private static InputManager f39392h;

    static class a implements Runnable {

        final Context f39393a;

        final int f39394b;

        a(Context context, int i10) {
            this.f39393a = context;
            this.f39394b = i10;
        }

        @Override
        public void run() {
            InputManager inputManagerB = w.b(this.f39393a);
            if (inputManagerB == null) {
                return;
            }
            InputDevice inputDevice = inputManagerB.getInputDevice(this.f39394b);
            w.h();
            if (inputDevice == null) {
                w.b();
                w.c();
                w.c("nihc");
            } else if (inputDevice.isVirtual()) {
                w.d();
                w.e();
                w.c("vihc");
            } else {
                if (Build.VERSION.SDK_INT < 29 || !inputDevice.isExternal()) {
                    return;
                }
                w.f();
                w.g();
                w.c("eihc");
            }
        }
    }

    static int b() {
        int i10 = f39387c;
        f39387c = i10 + 1;
        return i10;
    }

    static int c() {
        int i10 = f39390f;
        f39390f = i10 + 1;
        return i10;
    }

    static int d() {
        int i10 = f39385a;
        f39385a = i10 + 1;
        return i10;
    }

    static int e() {
        int i10 = f39388d;
        f39388d = i10 + 1;
        return i10;
    }

    static int f() {
        int i10 = f39386b;
        f39386b = i10 + 1;
        return i10;
    }

    static int g() {
        int i10 = f39389e;
        f39389e = i10 + 1;
        return i10;
    }

    public static void h() {
        if (f39391g) {
            return;
        }
        try {
            SharedPreferences sharedPreferencesA = u0.a(x.b());
            if (sharedPreferencesA != null) {
                f39390f = sharedPreferencesA.getInt("nihc", 0);
                f39389e = sharedPreferencesA.getInt("eihc", 0);
                f39388d = sharedPreferencesA.getInt("vihc", 0);
                f39391g = true;
            }
        } catch (Throwable unused) {
        }
    }

    public static int b(String str) {
        h();
        str.hashCode();
        switch (str) {
            case "eic":
                return f39386b;
            case "nic":
                return f39387c;
            case "vic":
                return f39385a;
            case "eihc":
                return f39389e;
            case "nihc":
                return f39390f;
            case "vihc":
                return f39388d;
            default:
                return -1;
        }
    }

    public static void c(String str) {
        try {
            SharedPreferences sharedPreferencesA = u0.a(x.b());
            if (sharedPreferencesA != null) {
                sharedPreferencesA.edit().putInt(str, sharedPreferencesA.getInt(str, 0) + 1).apply();
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(MotionEvent motionEvent, Context context) {
        if (motionEvent == null || context == null) {
            return;
        }
        if (motionEvent.getRawX() > 0.0f || motionEvent.getRawY() > 0.0f) {
            o0.b(new a(context, motionEvent.getDeviceId()));
        }
    }

    public static void a(JSONObject jSONObject) {
        h();
        try {
            jSONObject.put("vihc", f39388d);
            jSONObject.put("eihc", f39389e);
            jSONObject.put("nihc", f39390f);
            jSONObject.put("vic", f39385a);
            jSONObject.put("nic", f39387c);
            jSONObject.put("eic", f39386b);
        } catch (JSONException unused) {
        }
    }

    public static InputManager b(Context context) {
        if (f39392h == null) {
            f39392h = (InputManager) context.getSystemService("input");
        }
        return f39392h;
    }
}
