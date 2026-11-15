package com.facebook.ads.redexgen.core;

public class C5P extends Exception {
    public C5P(String str) {
        super(str);
    }

    public C5P(String str, Throwable th) {
        super(str, th);
    }

    public C5P(Throwable th) {
        super(th);
    }
}
