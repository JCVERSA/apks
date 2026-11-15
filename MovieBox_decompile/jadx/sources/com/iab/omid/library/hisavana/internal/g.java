package com.iab.omid.library.hisavana.internal;

import android.content.Context;

public class g {

    private static g f32752b = new g();

    private Context f32753a;

    private g() {
    }

    public static g c() {
        return f32752b;
    }

    public Context a() {
        return this.f32753a;
    }

    public void b(Context context) {
        this.f32753a = context != null ? context.getApplicationContext() : null;
    }
}
