package com.transsion.ga;

import android.os.Bundle;
import defpackage.zbd;

public class anateh extends Exception {
    public static final int a = 0;
    private final String b;
    private final Bundle c;

    public anateh(String str, Throwable th) {
        super(str, th);
        this.b = str;
        this.c = null;
    }

    public static void a(String str, Throwable th) {
        zbd.a().c(new anateh(str, th));
    }

    public Bundle b() {
        return this.c;
    }

    public String a() {
        return this.b;
    }

    public anateh(String str, Bundle bundle) {
        super(str, null);
        this.b = str;
        this.c = bundle;
    }
}
