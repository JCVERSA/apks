package com.google.android.exoplayer2.source.dash;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.q1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import v9.s;
import z9.f;

final class d implements s {

    private final p1 f25215a;

    private long[] f25217c;

    private boolean f25218d;

    private f f25219e;

    private boolean f25220f;

    private int f25221g;

    private final com.google.android.exoplayer2.metadata.emsg.b f25216b = new com.google.android.exoplayer2.metadata.emsg.b();

    private long f25222h = C.TIME_UNSET;

    public d(f fVar, p1 p1Var, boolean z10) {
        this.f25215a = p1Var;
        this.f25219e = fVar;
        this.f25217c = fVar.f76670b;
        d(fVar, z10);
    }

    @Override
    public int a(q1 q1Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        int i11 = this.f25221g;
        boolean z10 = i11 == this.f25217c.length;
        if (z10 && !this.f25218d) {
            decoderInputBuffer.k(4);
            return -4;
        }
        if ((i10 & 2) != 0 || !this.f25220f) {
            q1Var.f24962b = this.f25215a;
            this.f25220f = true;
            return -5;
        }
        if (z10) {
            return -3;
        }
        if ((i10 & 1) == 0) {
            this.f25221g = i11 + 1;
        }
        if ((i10 & 4) == 0) {
            byte[] bArrA = this.f25216b.a(this.f25219e.f76669a[i11]);
            decoderInputBuffer.m(bArrA.length);
            decoderInputBuffer.f24202c.put(bArrA);
        }
        decoderInputBuffer.f24204e = this.f25217c[i11];
        decoderInputBuffer.k(1);
        return -4;
    }

    public String b() {
        return this.f25219e.a();
    }

    public void c(long j10) {
        int iE = p0.e(this.f25217c, j10, true, false);
        this.f25221g = iE;
        if (!this.f25218d || iE != this.f25217c.length) {
            j10 = C.TIME_UNSET;
        }
        this.f25222h = j10;
    }

    public void d(f fVar, boolean z10) {
        int i10 = this.f25221g;
        long j10 = i10 == 0 ? -9223372036854775807L : this.f25217c[i10 - 1];
        this.f25218d = z10;
        this.f25219e = fVar;
        long[] jArr = fVar.f76670b;
        this.f25217c = jArr;
        long j11 = this.f25222h;
        if (j11 != C.TIME_UNSET) {
            c(j11);
        } else if (j10 != C.TIME_UNSET) {
            this.f25221g = p0.e(jArr, j10, false, false);
        }
    }

    @Override
    public boolean isReady() {
        return true;
    }

    @Override
    public int skipData(long j10) {
        int iMax = Math.max(this.f25221g, p0.e(this.f25217c, j10, true, false));
        int i10 = iMax - this.f25221g;
        this.f25221g = iMax;
        return i10;
    }

    @Override
    public void maybeThrowError() {
    }
}
