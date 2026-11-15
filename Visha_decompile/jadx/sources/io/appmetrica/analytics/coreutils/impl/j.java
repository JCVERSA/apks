package io.appmetrica.analytics.coreutils.impl;

import android.content.Context;
import android.content.Intent;
import defpackage.c74;
import kotlin.jvm.internal.Lambda;

public final class j extends Lambda implements c74 {
    public final Context a;
    public final Intent b;
    public final int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(Context context, Intent intent, int i) {
        super(0);
        this.a = context;
        this.b = intent;
        this.c = i;
    }

    @Override
    public final Object invoke() {
        return this.a.getPackageManager().resolveService(this.b, this.c);
    }
}
