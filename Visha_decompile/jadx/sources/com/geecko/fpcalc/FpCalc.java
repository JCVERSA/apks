package com.geecko.fpcalc;

public abstract class FpCalc {
    static {
        try {
            System.loadLibrary("fpcalc");
        } catch (SecurityException | UnsatisfiedLinkError e) {
            e.printStackTrace();
        }
    }

    public static native String fpCalc(String[] strArr);
}
