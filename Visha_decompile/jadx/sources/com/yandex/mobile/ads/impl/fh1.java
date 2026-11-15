package com.yandex.mobile.ads.impl;

import android.app.KeyguardManager;
import android.content.Context;
import android.os.PowerManager;
import defpackage.y45;

public final class fh1 {
    private final Context a;

    /* JADX WARN: Illegal instructions before constructor call */
    public fh1(Context context) {
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, applicationContext);
    }

    public final dh1 a() {
        Object systemService = this.a.getSystemService("power");
        PowerManager powerManager = systemService instanceof PowerManager ? (PowerManager) systemService : null;
        Boolean boolValueOf = powerManager != null ? Boolean.valueOf(powerManager.isInteractive()) : null;
        if (boolValueOf != null && !boolValueOf.booleanValue()) {
            return dh1.c;
        }
        Object systemService2 = this.a.getSystemService("keyguard");
        KeyguardManager keyguardManager = systemService2 instanceof KeyguardManager ? (KeyguardManager) systemService2 : null;
        return (keyguardManager == null || !keyguardManager.isKeyguardLocked()) ? dh1.d : dh1.b;
    }

    public fh1(Context context, Context context2) {
        y45.j(context, "context");
        y45.j(context2, "appContext");
        this.a = context2;
    }
}
