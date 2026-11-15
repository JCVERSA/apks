package io.appmetrica.analytics.impl;

import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;

public final class C2701m0 implements Ia {
    public final Handler a;
    public final IHandlerExecutor b;
    public final C2929v4 c;

    public C2701m0() {
        IHandlerExecutor iHandlerExecutorA = C2879t4.i().e().a();
        this.b = iHandlerExecutorA;
        this.a = iHandlerExecutorA.getHandler();
        this.c = new C2929v4();
    }

    @Override
    public final void a(@Nullable AppMetricaConfig appMetricaConfig, @NonNull InterfaceC2413ab interfaceC2413ab) {
    }

    @Override
    @NonNull
    public final Handler b() {
        return this.a;
    }

    @Override
    @NonNull
    public final W1 c() {
        return new W1();
    }

    @Override
    @NonNull
    public final C2812qb d() {
        return new C2812qb();
    }

    @Override
    @NonNull
    public final ICommonExecutor getDefaultExecutor() {
        return this.b;
    }

    @Override
    @NonNull
    public final C2929v4 a() {
        return this.c;
    }
}
