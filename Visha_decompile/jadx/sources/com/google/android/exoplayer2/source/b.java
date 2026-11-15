package com.google.android.exoplayer2.source;

import androidx.media3.common.C;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import defpackage.blb;
import defpackage.eva;
import defpackage.h19;
import defpackage.ka9;
import defpackage.o44;
import defpackage.qi3;
import defpackage.qp6;
import defpackage.zi;

public final class b implements h, h.a {
    public final h b;
    public h.a c;
    public a[] d = new a[0];
    public long e;
    public long f;
    public long g;
    public ClippingMediaSource.IllegalClippingException h;

    public final class a implements h19 {
        public final h19 a;
        public boolean b;

        public a(h19 h19Var) {
            this.a = h19Var;
        }

        @Override
        public int a(o44 o44Var, DecoderInputBuffer decoderInputBuffer, int i) {
            if (b.this.f()) {
                return -3;
            }
            if (this.b) {
                decoderInputBuffer.k(4);
                return -4;
            }
            int iA = this.a.a(o44Var, decoderInputBuffer, i);
            if (iA == -5) {
                com.google.android.exoplayer2.k kVar = (com.google.android.exoplayer2.k) zi.e(o44Var.b);
                int i2 = kVar.C;
                if (i2 != 0 || kVar.D != 0) {
                    b bVar = b.this;
                    if (bVar.f != 0) {
                        i2 = 0;
                    }
                    o44Var.b = kVar.b().N(i2).O(bVar.g == Long.MIN_VALUE ? kVar.D : 0).E();
                }
                return -5;
            }
            b bVar2 = b.this;
            long j = bVar2.g;
            if (j == Long.MIN_VALUE || ((iA != -4 || decoderInputBuffer.f < j) && !(iA == -3 && bVar2.getBufferedPositionUs() == Long.MIN_VALUE && !decoderInputBuffer.e))) {
                return iA;
            }
            decoderInputBuffer.b();
            decoderInputBuffer.k(4);
            this.b = true;
            return -4;
        }

        public void b() {
            this.b = false;
        }

        @Override
        public boolean isReady() {
            return !b.this.f() && this.a.isReady();
        }

        @Override
        public void maybeThrowError() {
            this.a.maybeThrowError();
        }

        @Override
        public int skipData(long j) {
            if (b.this.f()) {
                return -3;
            }
            return this.a.skipData(j);
        }
    }

    public b(h hVar, boolean z, long j, long j2) {
        this.b = hVar;
        this.e = z ? j : C.TIME_UNSET;
        this.f = j;
        this.g = j2;
    }

    public static boolean j(long j, qi3[] qi3VarArr) {
        if (j != 0) {
            for (qi3 qi3Var : qi3VarArr) {
                if (qi3Var != null) {
                    com.google.android.exoplayer2.k selectedFormat = qi3Var.getSelectedFormat();
                    if (!qp6.a(selectedFormat.m, selectedFormat.j)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0043  */
    /* JADX WARN: Code duplicated, block: B:27:0x0063  */
    @Override
    public long a(qi3[] qi3VarArr, boolean[] zArr, h19[] h19VarArr, boolean[] zArr2, long j) {
        long j2;
        boolean z;
        this.d = new a[h19VarArr.length];
        h19[] h19VarArr2 = new h19[h19VarArr.length];
        int i = 0;
        while (true) {
            h19 h19Var = null;
            if (i >= h19VarArr.length) {
                break;
            }
            a[] aVarArr = this.d;
            a aVar = (a) h19VarArr[i];
            aVarArr[i] = aVar;
            if (aVar != null) {
                h19Var = aVar.a;
            }
            h19VarArr2[i] = h19Var;
            i++;
        }
        long jA = this.b.a(qi3VarArr, zArr, h19VarArr2, zArr2, j);
        if (f()) {
            long j3 = this.f;
            if (j == j3 && j(j3, qi3VarArr)) {
                j2 = jA;
            } else {
                j2 = C.TIME_UNSET;
            }
        } else {
            j2 = C.TIME_UNSET;
        }
        this.e = j2;
        if (jA != j) {
            if (jA >= this.f) {
                long j4 = this.g;
                z = j4 == Long.MIN_VALUE || jA <= j4;
            }
        }
        zi.g(z);
        for (int i2 = 0; i2 < h19VarArr.length; i2++) {
            h19 h19Var2 = h19VarArr2[i2];
            if (h19Var2 == null) {
                this.d[i2] = null;
            } else {
                a[] aVarArr2 = this.d;
                a aVar2 = aVarArr2[i2];
                if (aVar2 == null || aVar2.a != h19Var2) {
                    aVarArr2[i2] = new a(h19Var2);
                }
            }
            h19VarArr[i2] = this.d[i2];
        }
        return jA;
    }

    @Override
    public long c(long j, ka9 ka9Var) {
        long j2 = this.f;
        if (j == j2) {
            return j2;
        }
        return this.b.c(j, e(j, ka9Var));
    }

    @Override
    public boolean continueLoading(long j) {
        return this.b.continueLoading(j);
    }

    @Override
    public void d(h hVar) {
        if (this.h != null) {
            return;
        }
        ((h.a) zi.e(this.c)).d(this);
    }

    @Override
    public void discardBuffer(long j, boolean z) {
        this.b.discardBuffer(j, z);
    }

    public final ka9 e(long j, ka9 ka9Var) {
        long jQ = blb.q(ka9Var.a, 0L, j - this.f);
        long j2 = ka9Var.b;
        long j3 = this.g;
        long jQ2 = blb.q(j2, 0L, j3 == Long.MIN_VALUE ? Long.MAX_VALUE : j3 - j);
        return (jQ == ka9Var.a && jQ2 == ka9Var.b) ? ka9Var : new ka9(jQ, jQ2);
    }

    public boolean f() {
        return this.e != C.TIME_UNSET;
    }

    @Override
    public void g(h.a aVar, long j) {
        this.c = aVar;
        this.b.g(this, j);
    }

    @Override
    public long getBufferedPositionUs() {
        long bufferedPositionUs = this.b.getBufferedPositionUs();
        if (bufferedPositionUs != Long.MIN_VALUE) {
            long j = this.g;
            if (j == Long.MIN_VALUE || bufferedPositionUs < j) {
                return bufferedPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override
    public long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.b.getNextLoadPositionUs();
        if (nextLoadPositionUs != Long.MIN_VALUE) {
            long j = this.g;
            if (j == Long.MIN_VALUE || nextLoadPositionUs < j) {
                return nextLoadPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override
    public eva getTrackGroups() {
        return this.b.getTrackGroups();
    }

    @Override
    public void b(h hVar) {
        ((h.a) zi.e(this.c)).b(this);
    }

    public void i(ClippingMediaSource.IllegalClippingException illegalClippingException) {
        this.h = illegalClippingException;
    }

    @Override
    public boolean isLoading() {
        return this.b.isLoading();
    }

    public void k(long j, long j2) {
        this.f = j;
        this.g = j2;
    }

    @Override
    public void maybeThrowPrepareError() throws ClippingMediaSource.IllegalClippingException {
        ClippingMediaSource.IllegalClippingException illegalClippingException = this.h;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        this.b.maybeThrowPrepareError();
    }

    @Override
    public long readDiscontinuity() {
        if (f()) {
            long j = this.e;
            this.e = C.TIME_UNSET;
            long discontinuity = readDiscontinuity();
            return discontinuity != C.TIME_UNSET ? discontinuity : j;
        }
        long discontinuity2 = this.b.readDiscontinuity();
        if (discontinuity2 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        zi.g(discontinuity2 >= this.f);
        long j2 = this.g;
        zi.g(j2 == Long.MIN_VALUE || discontinuity2 <= j2);
        return discontinuity2;
    }

    @Override
    public void reevaluateBuffer(long j) {
        this.b.reevaluateBuffer(j);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0034  */
    @Override
    public long seekToUs(long j) {
        this.e = C.TIME_UNSET;
        boolean z = false;
        for (a aVar : this.d) {
            if (aVar != null) {
                aVar.b();
            }
        }
        long jSeekToUs = this.b.seekToUs(j);
        if (jSeekToUs == j) {
            z = true;
        } else if (jSeekToUs >= this.f) {
            long j2 = this.g;
            if (j2 == Long.MIN_VALUE || jSeekToUs <= j2) {
                z = true;
            }
        }
        zi.g(z);
        return jSeekToUs;
    }
}
