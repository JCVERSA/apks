package com.facebook.ads.redexgen.core;

import androidx.media3.datasource.cache.CacheDataSink;

public final class C1967iz implements InterfaceC06434t {
    public InterfaceC1062Ln A02;
    public long A01 = CacheDataSink.DEFAULT_FRAGMENT_SIZE;
    public int A00 = CacheDataSink.DEFAULT_BUFFER_SIZE;

    public final C1967iz A00(InterfaceC1062Ln interfaceC1062Ln) {
        this.A02 = interfaceC1062Ln;
        return this;
    }

    @Override
    public final C1966iy A59() {
        return new C1966iy((InterfaceC1062Ln) C3M.A01(this.A02), this.A01, this.A00);
    }
}
