package com.blankj.utilcode.util;

import android.content.res.Resources;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;

public abstract class c {
    public static String a() {
        String string = Settings.Secure.getString(Utils.a().getContentResolver(), "android_id");
        return ("9774d56d682e549c".equals(string) || string == null) ? "" : string;
    }

    public static String b() {
        String str = Build.MODEL;
        return str != null ? str.trim().replaceAll("\\s*", "") : "";
    }

    public static String c() {
        return Build.VERSION.RELEASE;
    }

    public static boolean d() {
        WifiManager wifiManager = (WifiManager) Utils.a().getSystemService("wifi");
        if (wifiManager == null) {
            return false;
        }
        return wifiManager.isWifiEnabled();
    }

    public static boolean e() {
        return (Resources.getSystem().getConfiguration().screenLayout & 15) >= 3;
    }
}
