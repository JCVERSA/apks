package com.iab.omid.library.vungle.internal;

import android.content.Context;

public class g {

    private static g f32982b = new g();

    private Context f32983a;

    private g() {
    }

    public static g c() {
        return f32982b;
    }

    public Context a() {
        return this.f32983a;
    }

    public void b(Context context) {
        this.f32983a = context != null ? context.getApplicationContext() : null;
    }
}
