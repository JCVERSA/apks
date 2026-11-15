package com.hunantv.imgo.b;

import java.util.UUID;

public class c {
    private static final c x = new c();
    public String a;
    public String n;
    public int o;
    public int p;
    public String b = "";
    public String c = "";
    public String d = "";
    public String e = "";
    public String f = UUID.randomUUID().toString();
    public String g = "";
    public String h = "";
    public String i = "";
    public String j = "";
    public String k = "";
    public String l = "";
    public String m = "";
    public String q = "";
    public String r = "";
    public String s = "";
    public String t = "";
    public String u = "";
    public String v = "";
    public String w = "";

    private c() {
    }

    public static c a() {
        return x;
    }

    public String a(boolean z, boolean z2) {
        if (!z2) {
            if ("card".equalsIgnoreCase(a().w)) {
                return "28";
            }
            if ("immersion".equalsIgnoreCase(a().w)) {
                return "22";
            }
            return "detail".equalsIgnoreCase(a().w) ? "29" : "1";
        }
        if ("card".equalsIgnoreCase(a().w)) {
            return z ? "v_card" : "8129";
        }
        if ("immersion".equalsIgnoreCase(a().w)) {
            return z ? "v_immerse" : "1101";
        }
        if ("detail".equalsIgnoreCase(a().w)) {
            return z ? "v_playDetail" : "8176";
        }
        if ("live".equalsIgnoreCase(a().w)) {
            return z ? "live_play" : "8179";
        }
        return z ? "v_play" : "40";
    }
}
