package com.transsion.core.deviceinfo;

import android.content.Context;
import android.os.Looper;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.transsion.core.log.LogUtils;
import com.transsion.core.utils.c;

public class DeviceInfo {

    private static String f42832a = "";

    private static String f42833b = "";

    public static String c() {
        if (!TextUtils.isEmpty(f42833b)) {
            return f42833b;
        }
        String string = Settings.Secure.getString(yj.a.a().getContentResolver(), "android_id");
        if (!TextUtils.isEmpty(string)) {
            string = string.trim();
        }
        String strA = TextUtils.isEmpty(string) ? "" : c.a(string);
        f42833b = strA;
        return strA;
    }

    public static String d() {
        String str = f42832a;
        if (str == null || str.length() == 0) {
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        String unused = DeviceInfo.f42832a = a.a(yj.a.a()).a();
                        LogUtils.g("advertisingId is " + DeviceInfo.f42832a);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }).start();
        }
        return f42832a;
    }

    public static String e() {
        if (g()) {
            return d();
        }
        String str = f42832a;
        if (str != null && str.length() != 0) {
            return f42832a;
        }
        try {
            f42832a = a.a(yj.a.a()).a();
            LogUtils.g("advertisingId is " + f42832a);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return f42832a;
    }

    public static String f() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) yj.a.a().getSystemService("phone");
            return telephonyManager == null ? "" : telephonyManager.getSimOperator();
        } catch (Exception unused) {
            return "";
        }
    }

    private static boolean g() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    public static boolean h() {
        Context contextA = yj.a.a();
        return contextA.getResources() != null && (contextA.getResources().getConfiguration().screenLayout & 15) >= 3;
    }
}
