package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import com.android.installreferrer.api.InstallReferrerClient;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;

public final class Xf implements Va {
    public final InstallReferrerClient a;
    public final ICommonExecutor b;

    public Xf(@NonNull Context context, @NonNull ICommonExecutor iCommonExecutor) throws Throwable {
        this(InstallReferrerClient.newBuilder(context).build(), iCommonExecutor);
    }

    @Override
    public final void a(@NonNull InterfaceC2593hg interfaceC2593hg) throws Throwable {
        this.a.startConnection(new Vf(this, interfaceC2593hg));
    }

    public Xf(InstallReferrerClient installReferrerClient, ICommonExecutor iCommonExecutor) {
        this.a = installReferrerClient;
        this.b = iCommonExecutor;
    }
}
