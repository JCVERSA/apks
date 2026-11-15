package com.iab.omid.library.mmadbridge.internal;

import android.content.Context;

public class g {

    private static g f32871b = new g();

    private Context f32872a;

    private g() {
    }

    public static g c() {
        return f32871b;
    }

    public Context a() {
        return this.f32872a;
    }

    public void b(Context context) {
        this.f32872a = context != null ? context.getApplicationContext() : null;
    }
}
