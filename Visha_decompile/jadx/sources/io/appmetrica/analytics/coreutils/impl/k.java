package io.appmetrica.analytics.coreutils.impl;

import android.content.ComponentName;
import android.content.Context;
import defpackage.c74;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class k extends Lambda implements c74 {
    public final Context a;
    public final ComponentName b;
    public final int c;
    public final int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(Context context, ComponentName componentName, int i, int i2) {
        super(0);
        this.a = context;
        this.b = componentName;
        this.c = i;
        this.d = i2;
    }

    @Override
    public final Object invoke() {
        this.a.getPackageManager().setComponentEnabledSetting(this.b, this.c, this.d);
        return zfb.a;
    }
}
