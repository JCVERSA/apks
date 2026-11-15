package io.appmetrica.analytics.coreutils.impl;

import android.content.Context;
import defpackage.c74;
import kotlin.jvm.internal.Lambda;

public final class g extends Lambda implements c74 {
    public final Context a;
    public final String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(Context context, String str) {
        super(0);
        this.a = context;
        this.b = str;
    }

    @Override
    public final Object invoke() {
        return Boolean.valueOf(this.a.getPackageManager().hasSystemFeature(this.b));
    }
}
