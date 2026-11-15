package com.pgl.ssdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.camera2.CameraManager;
import android.telephony.TelephonyManager;

public class v {

    public static int f39383a = -1;

    public static int f39384b = -1;

    static class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            v.f39384b = v.b(x.b());
            SharedPreferences sharedPreferencesA = u0.a(x.b());
            if (sharedPreferencesA != null) {
                sharedPreferencesA.edit().putInt("camera_count", v.f39384b).apply();
            }
        }
    }

    public static int b(Context context) {
        int i10 = f39384b;
        if (i10 != -1) {
            return i10;
        }
        CameraManager cameraManager = (CameraManager) context.getSystemService("camera");
        if (cameraManager != null) {
            try {
                f39384b = cameraManager.getCameraIdList().length;
            } catch (Throwable unused) {
                f39384b = -1;
            }
        } else {
            f39384b = -2;
        }
        return f39384b;
    }

    public static int c(Context context) {
        TelephonyManager telephonyManager;
        if (f39383a == -1 && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            f39383a = telephonyManager.getSimState();
        }
        return f39383a;
    }

    public static int a() {
        int i10;
        int i11 = f39384b;
        if (i11 != -1) {
            return i11;
        }
        SharedPreferences sharedPreferencesA = u0.a(x.b());
        if (sharedPreferencesA == null || (i10 = sharedPreferencesA.getInt("camera_count", -1)) == -1) {
            o0.b(new a());
            return -1;
        }
        f39384b = i10;
        return i10;
    }
}
