package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.q1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class b implements n, n.a {

    public final n f25058a;

    private n.a f25059b;

    private a[] f25060c = new a[0];

    private long f25061d;

    long f25062e;

    long f25063f;

    private ClippingMediaSource.IllegalClippingException f25064g;

    private final class a implements v9.s {

        public final v9.s f25065a;

        private boolean f25066b;

        public a(v9.s sVar) {
            this.f25065a = sVar;
        }

        @Override
        public int a(q1 q1Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            if (b.this.c()) {
                return -3;
            }
            if (this.f25066b) {
                decoderInputBuffer.k(4);
                return -4;
            }
            int iA = this.f25065a.a(q1Var, decoderInputBuffer, i10);
            if (iA == -5) {
                p1 p1Var = (p1) com.google.android.exoplayer2.util.a.e(q1Var.f24962b);
                int i11 = p1Var.B;
                if (i11 != 0 || p1Var.C != 0) {
                    b bVar = b.this;
                    if (bVar.f25062e != 0) {
                        i11 = 0;
                    }
                    q1Var.f24962b = p1Var.b().N(i11).O(bVar.f25063f == Long.MIN_VALUE ? p1Var.C : 0).E();
                }
                return -5;
            }
            b bVar2 = b.this;
            long j10 = bVar2.f25063f;
            if (j10 == Long.MIN_VALUE || ((iA != -4 || decoderInputBuffer.f24204e < j10) && !(iA == -3 && bVar2.getBufferedPositionUs() == Long.MIN_VALUE && !decoderInputBuffer.f24203d))) {
                return iA;
            }
            decoderInputBuffer.b();
            decoderInputBuffer.k(4);
            this.f25066b = true;
            return -4;
        }

        public void b() {
            this.f25066b = false;
        }

        @Override
        public boolean isReady() {
            return !b.this.c() && this.f25065a.isReady();
        }

        @Override
        public void maybeThrowError() {
            this.f25065a.maybeThrowError();
        }

        @Override
        public int skipData(long j10) {
            if (b.this.c()) {
                return -3;
            }
            return this.f25065a.skipData(j10);
        }
    }

    public b(n nVar, boolean z10, long j10, long j11) {
        this.f25058a = nVar;
        this.f25061d = z10 ? j10 : C.TIME_UNSET;
        this.f25062e = j10;
        this.f25063f = j11;
    }

    private d3 a(long j10, d3 d3Var) {
        long jR = p0.r(d3Var.f24199a, 0L, j10 - this.f25062e);
        long j11 = d3Var.f24200b;
        long j12 = this.f25063f;
        long jR2 = p0.r(j11, 0L, j12 == Long.MIN_VALUE ? Long.MAX_VALUE : j12 - j10);
        return (jR == d3Var.f24199a && jR2 == d3Var.f24200b) ? d3Var : new d3(jR, jR2);
    }

    private static boolean k(long j10, na.s[] sVarArr) {
        if (j10 != 0) {
            for (na.s sVar : sVarArr) {
                if (sVar != null) {
                    p1 selectedFormat = sVar.getSelectedFormat();
                    if (!com.google.android.exoplayer2.util.w.a(selectedFormat.f24901l, selectedFormat.f24898i)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override
    public long b(long j10, d3 d3Var) {
        long j11 = this.f25062e;
        if (j10 == j11) {
            return j11;
        }
        return this.f25058a.b(j10, a(j10, d3Var));
    }

    boolean c() {
        return this.f25061d != C.TIME_UNSET;
    }

    @Override
    public boolean continueLoading(long j10) {
        return this.f25058a.continueLoading(j10);
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
        this.f25058a.discardBuffer(j10, z10);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0043  */
    /* JADX WARN: Code duplicated, block: B:27:0x0063  */
    @Override
    public long e(na.s[] sVarArr, boolean[] zArr, v9.s[] sVarArr2, boolean[] zArr2, long j10) {
        long j11;
        boolean z10;
        this.f25060c = new a[sVarArr2.length];
        v9.s[] sVarArr3 = new v9.s[sVarArr2.length];
        int i10 = 0;
        while (true) {
            v9.s sVar = null;
            if (i10 >= sVarArr2.length) {
                break;
            }
            a[] aVarArr = this.f25060c;
            a aVar = (a) sVarArr2[i10];
            aVarArr[i10] = aVar;
            if (aVar != null) {
                sVar = aVar.f25065a;
            }
            sVarArr3[i10] = sVar;
            i10++;
        }
        long jE = this.f25058a.e(sVarArr, zArr, sVarArr3, zArr2, j10);
        if (c()) {
            long j12 = this.f25062e;
            if (j10 == j12 && k(j12, sVarArr)) {
                j11 = jE;
            } else {
                j11 = C.TIME_UNSET;
            }
        } else {
            j11 = C.TIME_UNSET;
        }
        this.f25061d = j11;
        if (jE != j10) {
            if (jE >= this.f25062e) {
                long j13 = this.f25063f;
                z10 = j13 == Long.MIN_VALUE || jE <= j13;
            }
        }
        com.google.android.exoplayer2.util.a.g(z10);
        for (int i11 = 0; i11 < sVarArr2.length; i11++) {
            v9.s sVar2 = sVarArr3[i11];
            if (sVar2 == null) {
                this.f25060c[i11] = null;
            } else {
                a[] aVarArr2 = this.f25060c;
                a aVar2 = aVarArr2[i11];
                if (aVar2 == null || aVar2.f25065a != sVar2) {
                    aVarArr2[i11] = new a(sVar2);
                }
            }
            sVarArr2[i11] = this.f25060c[i11];
        }
        return jE;
    }

    @Override
    public void f(n.a aVar, long j10) {
        this.f25059b = aVar;
        this.f25058a.f(this, j10);
    }

    @Override
    public long getBufferedPositionUs() {
        long bufferedPositionUs = this.f25058a.getBufferedPositionUs();
        if (bufferedPositionUs != Long.MIN_VALUE) {
            long j10 = this.f25063f;
            if (j10 == Long.MIN_VALUE || bufferedPositionUs < j10) {
                return bufferedPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override
    public long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.f25058a.getNextLoadPositionUs();
        if (nextLoadPositionUs != Long.MIN_VALUE) {
            long j10 = this.f25063f;
            if (j10 == Long.MIN_VALUE || nextLoadPositionUs < j10) {
                return nextLoadPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override
    public v9.y getTrackGroups() {
        return this.f25058a.getTrackGroups();
    }

    @Override
    public void h(n nVar) {
        if (this.f25064g != null) {
            return;
        }
        ((n.a) com.google.android.exoplayer2.util.a.e(this.f25059b)).h(this);
    }

    @Override
    public void g(n nVar) {
        ((n.a) com.google.android.exoplayer2.util.a.e(this.f25059b)).g(this);
    }

    @Override
    public boolean isLoading() {
        return this.f25058a.isLoading();
    }

    public void j(ClippingMediaSource.IllegalClippingException illegalClippingException) {
        this.f25064g = illegalClippingException;
    }

    public void l(long j10, long j11) {
        this.f25062e = j10;
        this.f25063f = j11;
    }

    @Override
    public void maybeThrowPrepareError() throws ClippingMediaSource.IllegalClippingException {
        ClippingMediaSource.IllegalClippingException illegalClippingException = this.f25064g;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        this.f25058a.maybeThrowPrepareError();
    }

    @Override
    public long readDiscontinuity() {
        if (c()) {
            long j10 = this.f25061d;
            this.f25061d = C.TIME_UNSET;
            long discontinuity = readDiscontinuity();
            return discontinuity != C.TIME_UNSET ? discontinuity : j10;
        }
        long discontinuity2 = this.f25058a.readDiscontinuity();
        if (discontinuity2 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        com.google.android.exoplayer2.util.a.g(discontinuity2 >= this.f25062e);
        long j11 = this.f25063f;
        com.google.android.exoplayer2.util.a.g(j11 == Long.MIN_VALUE || discontinuity2 <= j11);
        return discontinuity2;
    }

    @Override
    public void reevaluateBuffer(long j10) {
        this.f25058a.reevaluateBuffer(j10);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0034  */
    @Override
    public long seekToUs(long j10) {
        this.f25061d = C.TIME_UNSET;
        boolean z10 = false;
        for (a aVar : this.f25060c) {
            if (aVar != null) {
                aVar.b();
            }
        }
        long jSeekToUs = this.f25058a.seekToUs(j10);
        if (jSeekToUs == j10) {
            z10 = true;
        } else if (jSeekToUs >= this.f25062e) {
            long j11 = this.f25063f;
            if (j11 == Long.MIN_VALUE || jSeekToUs <= j11) {
                z10 = true;
            }
        }
        com.google.android.exoplayer2.util.a.g(z10);
        return jSeekToUs;
    }
}
