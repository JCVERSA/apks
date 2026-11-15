package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.w;

public final class j implements l.b {

    private int f24746a = 0;

    private boolean f24747b;

    @Override
    public l a(l.a aVar) {
        int i10;
        int i11 = p0.f26854a;
        if (i11 < 23 || ((i10 = this.f24746a) != 1 && (i10 != 0 || i11 < 31))) {
            return new u.b().a(aVar);
        }
        int iK = w.k(aVar.f24755c.f24901l);
        com.google.android.exoplayer2.util.s.f("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type " + p0.m0(iK));
        return new b.C0344b(iK, this.f24747b).a(aVar);
    }
}
