package com.mgtv.thirdsdk.config;

import com.hunantv.imgo.util.PreferencesUtil;

public class a {
    public static boolean a() {
        return !"0".equals(PreferencesUtil.c("player_merge", "0"));
    }

    public static String b() {
        return PreferencesUtil.c("player_merge", "0");
    }

    public static boolean c() {
        return PreferencesUtil.b("p2p_delay", false);
    }

    public static boolean d() {
        return PreferencesUtil.b("tcp_alive", true);
    }
}
