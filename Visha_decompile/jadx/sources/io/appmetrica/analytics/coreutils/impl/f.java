package io.appmetrica.analytics.coreutils.impl;

import android.content.ComponentName;
import android.content.Context;
import defpackage.c74;
import kotlin.jvm.internal.Lambda;

public final class f extends Lambda implements c74 {
    public final Context a;
    public final ComponentName b;
    public final int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Context context, ComponentName componentName, int i) {
        super(0);
        this.a = context;
        this.b = componentName;
        this.c = i;
    }

    @Override
    public final Object invoke() {
        return this.a.getPackageManager().getServiceInfo(this.b, this.c);
    }
}
