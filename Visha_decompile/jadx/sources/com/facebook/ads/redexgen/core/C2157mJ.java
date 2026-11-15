package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;

public final class C2157mJ implements InterfaceC0833Cr, InterfaceC0834Cs {
    public final int A00;
    public final C9A A01;

    public C2157mJ(C9A c9a, int i) {
        this.A01 = c9a;
        this.A00 = i;
    }

    @Override
    @MetaExoPlayerCustomization("Added in D21840558 for FBVP")
    public final long A81() {
        return this.A01.A0L[this.A00].A0S();
    }

    @Override
    public final boolean AAV() {
        return this.A01.A0f(this.A00);
    }

    @Override
    public final void ABs() throws IOException {
        this.A01.A0d(this.A00);
    }

    @Override
    public final int AGf(C6N c6n, C2234nY c2234nY, int i) {
        return this.A01.A0Y(this.A00, c6n, c2234nY, i);
    }

    @Override
    public final int AJI(long j) {
        return this.A01.A0X(this.A00, j);
    }
}
