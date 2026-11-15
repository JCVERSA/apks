package io.appmetrica.analytics.coreutils.impl;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import defpackage.c74;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import kotlin.jvm.internal.Lambda;

public final class c extends Lambda implements c74 {
    public final SafePackageManager a;
    public final Context b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(SafePackageManager safePackageManager, Context context) {
        super(0);
        this.a = safePackageManager;
        this.b = context;
    }

    @Override
    public final Object invoke() {
        SafePackageManager safePackageManager = this.a;
        Context context = this.b;
        ApplicationInfo applicationInfo = safePackageManager.getApplicationInfo(context, context.getPackageName(), 128);
        if (applicationInfo != null) {
            return applicationInfo.metaData;
        }
        return null;
    }
}
