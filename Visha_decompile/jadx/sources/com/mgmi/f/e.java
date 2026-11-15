package com.mgmi.f;

public class e {
    public static boolean i = false;
    public static boolean k = true;
    private static e l = null;
    private static boolean m = true;
    private static boolean n = false;
    private static boolean o = true;
    private static boolean p = true;
    public volatile boolean a = false;
    public volatile boolean b = false;
    public volatile boolean c = false;
    public volatile boolean d = false;
    public volatile boolean e = false;
    public volatile boolean f = false;
    public volatile boolean g = false;
    public volatile boolean h = false;
    public int j = 0;

    public static e a() {
        if (l == null) {
            synchronized (e.class) {
                try {
                    if (l == null) {
                        l = new e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return l;
    }

    public static void c(boolean z) {
        m = z;
    }

    public static void d(boolean z) {
        n = z;
    }

    public static void e(boolean z) {
        o = z;
    }

    public static boolean h() {
        return k;
    }

    public static boolean i() {
        return p;
    }

    public void b(boolean z) {
        this.c = z;
    }

    public void f(boolean z) {
        this.g = z;
    }

    public void g(boolean z) {
        this.h = z;
    }

    public static boolean b() {
        return m;
    }

    public static boolean c() {
        return n;
    }

    public static boolean d() {
        return o;
    }

    public static void h(boolean z) {
        k = z;
    }

    public boolean e() {
        return this.g;
    }

    public boolean f() {
        return this.h;
    }

    public int g() {
        return this.j;
    }

    public void a(boolean z) {
        this.a = z;
    }

    public void a(int i2) {
        this.j = i2;
    }
}
