package com.hunantv.imgo.data;

public class a {
    private static a b;
    boolean a;

    public static a a() {
        if (b == null) {
            b = new a();
        }
        return b;
    }

    public boolean b() {
        return this.a;
    }

    public void a(boolean z) {
        this.a = z;
    }
}
