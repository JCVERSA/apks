package com.transsion.core.deviceinfo;

import android.os.Looper;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.transsion.core.log.LogUtils;
import defpackage.ja3;
import defpackage.xj1;

public abstract class DeviceInfo {
    public static String a = "";
    public static String b = "";

    public static String c() {
        if (!TextUtils.isEmpty(b)) {
            return b;
        }
        String string = Settings.Secure.getString(xj1.a().getContentResolver(), "android_id");
        if (!TextUtils.isEmpty(string)) {
            string = string.trim();
        }
        String strA = TextUtils.isEmpty(string) ? "" : ja3.a(string);
        b = strA;
        return strA;
    }

    public static String d() {
        String str = a;
        if (str == null || str.length() == 0) {
            new Thread(new Runnable() {
                @Override
                public void run() {
                    try {
                        String unused = DeviceInfo.a = AdvertisingIdClient.a(xj1.a()).a();
                        LogUtils.h("advertisingId is " + DeviceInfo.a);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }).start();
        }
        return a;
    }

    public static String e() {
        if (g()) {
            return d();
        }
        String str = a;
        if (str != null && str.length() != 0) {
            return a;
        }
        try {
            a = AdvertisingIdClient.a(xj1.a()).a();
            LogUtils.h("advertisingId is " + a);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return a;
    }

    public static String f() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) xj1.a().getSystemService("phone");
            return telephonyManager == null ? "" : telephonyManager.getSimOperator();
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean g() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }
}
