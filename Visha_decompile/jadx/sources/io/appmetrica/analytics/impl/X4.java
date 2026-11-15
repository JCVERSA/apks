package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;

public abstract class X4 extends B5 {
    public X4(@NonNull BaseRequestConfig.ComponentLoader<Object, Object, W5> componentLoader, @NonNull Hl hl, @NonNull BaseRequestConfig.BaseRequestArguments<F4, Object> baseRequestArguments) {
        super(componentLoader, hl, baseRequestArguments);
    }

    @Override
    public final void a(@NonNull Object obj) {
        F4 f4 = (F4) obj;
        synchronized (this) {
            super.a((Object) f4);
        }
    }

    public final synchronized void a(@NonNull F4 f4) {
        super.a((Object) f4);
    }
}
