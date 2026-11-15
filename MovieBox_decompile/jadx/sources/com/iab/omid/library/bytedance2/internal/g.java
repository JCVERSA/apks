package com.iab.omid.library.bytedance2.internal;

import android.annotation.SuppressLint;
import android.content.Context;

public class g {

    @SuppressLint({"StaticFieldLeak"})
    private static g f32622b = new g();

    private Context f32623a;

    private g() {
    }

    public static g b() {
        return f32622b;
    }

    public Context a() {
        return this.f32623a;
    }

    public void a(Context context) {
        this.f32623a = context != null ? context.getApplicationContext() : null;
    }
}
