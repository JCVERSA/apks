package com.transsion.baseui.util;

public final class c {

    private static long f42333b;

    private static int f42334c;

    public static final c f42332a = new c();

    public static final int f42335d = 8;

    private c() {
    }

    public final boolean a(int i10, long j10) {
        if (f42334c != i10) {
            f42334c = i10;
            f42333b = System.nanoTime();
            return false;
        }
        if (System.nanoTime() - f42333b <= j10) {
            return true;
        }
        f42334c = i10;
        f42333b = System.nanoTime();
        return false;
    }
}
