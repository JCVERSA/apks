package com.hunantv.imgo.util;

public class m {
    private static m a;

    private m() {
    }

    public static m a() {
        if (a == null) {
            a = new m();
        }
        return a;
    }

    public String b() {
        return PreferencesUtil.c("PREF_GPS_MSG", "");
    }
}
