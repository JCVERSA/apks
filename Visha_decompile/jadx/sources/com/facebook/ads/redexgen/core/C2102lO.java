package com.facebook.ads.redexgen.core;

import android.net.Uri;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.EOFException;
import java.io.IOException;

public final class C2102lO implements H1 {
    public final byte[] A00 = new byte[4096];

    @Override
    public final int AI5(AnonymousClass20 anonymousClass20, int i, boolean z) {
        return AbstractC0944Gy.A00(this, anonymousClass20, i, z);
    }

    @Override
    public final void AI7(C4J c4j, int i) {
        AbstractC0944Gy.A01(this, c4j, i);
    }

    @Override
    public final void A6W(C2312or c2312or) {
    }

    @Override
    public final int AI6(AnonymousClass20 anonymousClass20, int i, boolean z, int i2) throws IOException {
        int bytesSkipped = anonymousClass20.read(this.A00, 0, Math.min(this.A00.length, i));
        if (bytesSkipped == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        return bytesSkipped;
    }

    @Override
    public final void AI8(C4J c4j, int i, int i2) {
        c4j.A0g(i);
    }

    @Override
    public final void AIA(long j, int i, int i2, int i3, C0945Gz c0945Gz) {
    }

    @Override
    @MetaExoPlayerCustomization("New API added for Meta")
    public final void AJu(Uri uri) {
    }
}
