package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.io.SslSocketFactoryProvider;

public interface V2 extends SslSocketFactoryProvider, Ml {
    @Override
    void a(@NonNull Hl hl);
}
