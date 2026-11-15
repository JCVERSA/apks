package io.appmetrica.analytics.impl;

import android.content.Context;

public final class C2401a {
    public final Context a;

    public C2401a(Context context) {
        this.a = context;
    }

    public final byte[] a() {
        try {
            return Wi.a(new StringBuilder(this.a.getPackageName()).reverse().toString());
        } catch (Throwable unused) {
            return new byte[16];
        }
    }

    public final byte[] b() {
        try {
            return Wi.a(this.a.getPackageName());
        } catch (Throwable unused) {
            return new byte[16];
        }
    }
}
