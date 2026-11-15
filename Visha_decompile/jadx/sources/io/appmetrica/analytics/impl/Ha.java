package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdvertisingIdsHolder;
import io.appmetrica.analytics.coreapi.internal.identifiers.SimpleAdvertisingIdGetter;

public interface Ha extends SimpleAdvertisingIdGetter, Ml {
    AdvertisingIdsHolder a();

    AdvertisingIdsHolder a(InterfaceC2968wi interfaceC2968wi);

    @Override
    void a(@NonNull Hl hl);

    void b(boolean z);

    AdvertisingIdsHolder getIdentifiers();

    void init();
}
