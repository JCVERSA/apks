package com.tn.tranpay.helper;

public final class a {

    public static final a f40646a = new a();

    private static long f40647b;

    private static int f40648c;

    private a() {
    }

    public final boolean a(int i10, long j10) {
        if (f40648c != i10) {
            f40648c = i10;
            f40647b = System.currentTimeMillis();
            return false;
        }
        if (System.currentTimeMillis() - f40647b <= j10) {
            return true;
        }
        f40648c = i10;
        f40647b = System.currentTimeMillis();
        return false;
    }
}
