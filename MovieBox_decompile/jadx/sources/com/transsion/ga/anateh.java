package com.transsion.ga;

import android.os.Bundle;

public class anateh extends Exception {

    public static final int f43005a = 0;

    private final String f43006b;

    private final Bundle f43007c;

    public anateh(String str, Throwable th2) {
        super(str, th2);
        this.f43006b = str;
        this.f43007c = null;
    }

    public static void a(String str, Throwable th2) {
        i.a().c(new anateh(str, th2));
    }

    Bundle b() {
        return this.f43007c;
    }

    String a() {
        return this.f43006b;
    }

    public anateh(String str, Bundle bundle) {
        super(str, null);
        this.f43006b = str;
        this.f43007c = bundle;
    }
}
