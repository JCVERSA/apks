package io.appmetrica.analytics.coreutils.impl;

import android.content.ComponentName;
import android.content.Context;
import defpackage.c74;
import kotlin.jvm.internal.Lambda;

public final class a extends Lambda implements c74 {
    public final Context a;
    public final ComponentName b;
    public final int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, ComponentName componentName, int i) {
        super(0);
        this.a = context;
        this.b = componentName;
        this.c = i;
    }

    @Override
    public final Object invoke() {
        return this.a.getPackageManager().getActivityInfo(this.b, this.c);
    }
}
