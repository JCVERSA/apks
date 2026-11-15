package io.appmetrica.analytics.coreutils.impl;

import android.content.Context;
import defpackage.c74;
import kotlin.jvm.internal.Lambda;

public final class b extends Lambda implements c74 {
    public final Context a;
    public final String b;
    public final int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Context context, String str, int i) {
        super(0);
        this.a = context;
        this.b = str;
        this.c = i;
    }

    @Override
    public final Object invoke() {
        return this.a.getPackageManager().getApplicationInfo(this.b, this.c);
    }
}
