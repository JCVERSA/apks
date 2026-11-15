package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.util.Map;
import java.util.UUID;

public final class u50 implements g40 {
    private final g40.a a;

    public u50(g40.a aVar) {
        this.a = (g40.a) hg.a(aVar);
    }

    @Override
    public final void a(@Nullable h40.a aVar) {
    }

    @Override
    public final void b(@Nullable h40.a aVar) {
    }

    @Override
    @Nullable
    public final fv getCryptoConfig() {
        return null;
    }

    @Override
    @Nullable
    public final g40.a getError() {
        return this.a;
    }

    @Override
    public final UUID getSchemeUuid() {
        return rm.a;
    }

    @Override
    public final int getState() {
        return 1;
    }

    @Override
    public final boolean playClearSamplesWithoutKeys() {
        return false;
    }

    @Override
    @Nullable
    public final Map<String, String> queryKeyStatus() {
        return null;
    }

    @Override
    public final boolean requiresSecureDecoder(String str) {
        return false;
    }
}
