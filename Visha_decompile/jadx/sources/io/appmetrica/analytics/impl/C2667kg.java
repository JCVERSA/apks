package io.appmetrica.analytics.impl;

import android.content.Context;
import com.android.installreferrer.api.InstallReferrerClient;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;

public final class C2667kg {
    public C2667kg(Va va) {
    }

    public static Va a(Context context, IHandlerExecutor iHandlerExecutor) {
        Xf xf;
        if (ReflectionUtils.detectClassExists("com.android.installreferrer.api.InstallReferrerClient")) {
            try {
                xf = new Xf(InstallReferrerClient.newBuilder(context).build(), iHandlerExecutor);
            } catch (Throwable unused) {
                xf = null;
            }
        } else {
            xf = null;
        }
        return xf == null ? new C2642jg() : xf;
    }
}
