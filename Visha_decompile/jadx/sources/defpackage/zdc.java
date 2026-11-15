package defpackage;

import android.app.Application;
import android.content.Context;

public abstract class zdc {
    public static int a = 1;
    public static int b = 2;
    public static volatile int c = 3;
    public static volatile boolean d = false;
    public static volatile boolean e = false;
    public static volatile boolean f = true;
    public static volatile boolean g = true;
    public static volatile boolean h = true;
    public static volatile boolean i = false;
    public static volatile boolean j = true;
    public static volatile boolean k = false;
    public static volatile boolean l = false;
    public static volatile boolean m = false;
    public static String n;
    public static String o;
    public static String p;
    public static String q;
    public static String r;
    public static String s;
    public static String t;
    public static String u;
    public static String v;
    public static int w;
    public static boolean x;
    public static Application y;

    public static String a() {
        return r0a.g(o) ? "" : o;
    }

    public static String b() {
        return r0a.g(n) ? "" : n;
    }

    public static String c() {
        return r0a.g(p) ? "" : p;
    }

    public static String d() {
        return r0a.g(r) ? "" : r;
    }

    public static String e() {
        return r0a.g(v) ? "" : v;
    }

    public static int f() {
        return w;
    }

    public static String g() {
        return r0a.g(t) ? "" : t;
    }

    public static String h() {
        return r0a.g(u) ? "" : u;
    }

    public static String i() {
        return r0a.g(s) ? "" : s;
    }

    public static void j(Application application) {
        y = application;
        k(application);
    }

    public static void k(Context context) {
        c = w6c.d(context, "simultaneous_download_mode", 3);
        d = w6c.c(context, "allow_mobile_data", false);
        e = w6c.c(context, "allow_mobile_data_play", false);
        f = w6c.c(context, "break_point_mode_switch", true);
        g = w6c.c(context, "allow_show_history", true);
        h = w6c.c(context, "allow_stream_auto_play", true);
        k = w6c.c(context, "private_browsing", false);
        l = w6c.c(context, "show_private_room", true);
        x = w6c.c(context, "search_lrc_save_title_artist", true);
        w = w6c.d(context, "visha_last_play_state", 0);
        m = qqb.d(context);
    }

    public static boolean l() {
        return x;
    }

    public static void m(String str) {
        o = str;
    }

    public static void n(String str) {
        n = str;
    }

    public static void o(String str) {
        p = str;
    }

    public static void p(boolean z) {
        x = z;
        w6c.r(y, "search_lrc_save_title_artist", z);
    }

    public static void q(String str) {
        r = str;
    }

    public static void r(String str) {
        q = str;
    }

    public static void s(String str) {
        v = str;
    }

    public static void t(int i2) {
        w = i2;
        w6c.t(y, "visha_last_play_state", i2);
    }

    public static void u(String str) {
        t = str;
    }

    public static void v(String str) {
        u = str;
    }

    public static void w(String str) {
        s = str;
    }
}
