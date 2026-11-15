package com.google.android.exoplayer2.source.hls;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.q1;
import v9.s;

final class l implements s {

    private final int f25364a;

    private final p f25365b;

    private int f25366c = -1;

    public l(p pVar, int i10) {
        this.f25365b = pVar;
        this.f25364a = i10;
    }

    private boolean c() {
        int i10 = this.f25366c;
        return (i10 == -1 || i10 == -3 || i10 == -2) ? false : true;
    }

    @Override
    public int a(q1 q1Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        if (this.f25366c == -3) {
            decoderInputBuffer.a(4);
            return -4;
        }
        if (c()) {
            return this.f25365b.R(this.f25366c, q1Var, decoderInputBuffer, i10);
        }
        return -3;
    }

    public void b() {
        com.google.android.exoplayer2.util.a.a(this.f25366c == -1);
        this.f25366c = this.f25365b.i(this.f25364a);
    }

    public void d() {
        if (this.f25366c != -1) {
            this.f25365b.c0(this.f25364a);
            this.f25366c = -1;
        }
    }

    @Override
    public boolean isReady() {
        return this.f25366c == -3 || (c() && this.f25365b.D(this.f25366c));
    }

    @Override
    public void maybeThrowError() throws SampleQueueMappingException {
        int i10 = this.f25366c;
        if (i10 == -2) {
            throw new SampleQueueMappingException(this.f25365b.getTrackGroups().b(this.f25364a).c(0).f24901l);
        }
        if (i10 == -1) {
            this.f25365b.H();
        } else if (i10 != -3) {
            this.f25365b.I(i10);
        }
    }

    @Override
    public int skipData(long j10) {
        if (c()) {
            return this.f25365b.b0(this.f25366c, j10);
        }
        return 0;
    }
}
