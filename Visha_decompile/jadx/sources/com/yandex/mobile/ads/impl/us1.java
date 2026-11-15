package com.yandex.mobile.ads.impl;

import android.os.Build;
import java.io.File;

public final class us1 {
    public static final us1 a = new us1();
    private static final String[] b = {"/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su"};

    private us1() {
    }

    public static boolean a() {
        try {
            if (new File("/system/app/Superuser/Superuser.apk").exists()) {
                return true;
            }
        } catch (Throwable unused) {
        }
        try {
            String[] strArr = b;
            boolean z = false;
            for (int i = 0; i < 8; i++) {
                z = z || (Build.VERSION.SDK_INT < 31 && new File(strArr[i]).exists());
            }
            if (z) {
                return true;
            }
        } catch (Throwable unused2) {
        }
        return false;
    }
}
