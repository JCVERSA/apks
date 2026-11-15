package com.google.android.exoplayer2.mediacodec;

import defpackage.blb;
import defpackage.op5;
import defpackage.qp6;

public final class b implements c.b {
    public int a = 0;
    public boolean b;

    @Override
    public c a(c.a aVar) {
        int i;
        int i2 = blb.a;
        if (i2 < 23 || ((i = this.a) != 1 && (i != 0 || i2 < 31))) {
            return new f.b().a(aVar);
        }
        int iF = qp6.f(aVar.c.m);
        op5.f("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type " + blb.e0(iF));
        return new a.b(iF, this.b).a(aVar);
    }
}
