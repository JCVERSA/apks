package androidx.media3.exoplayer.source;

import androidx.media3.common.util.a1;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.v2;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class b implements q, q.a {

    public final q f12370a;

    private q.a f12371b;

    private a[] f12372c = new a[0];

    private long f12373d;

    long f12374e;

    long f12375f;

    private ClippingMediaSource.IllegalClippingException f12376g;

    private final class a implements f2.u {

        public final f2.u f12377a;

        private boolean f12378b;

        public a(f2.u uVar) {
            this.f12377a = uVar;
        }

        public void a() {
            this.f12378b = false;
        }

        @Override
        public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            if (b.this.j()) {
                return -3;
            }
            if (this.f12378b) {
                decoderInputBuffer.setFlags(4);
                return -4;
            }
            long bufferedPositionUs = b.this.getBufferedPositionUs();
            int iC = this.f12377a.c(s2Var, decoderInputBuffer, i10);
            if (iC == -5) {
                androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(s2Var.f12258b);
                int i11 = rVar.H;
                if (i11 != 0 || rVar.I != 0) {
                    b bVar = b.this;
                    if (bVar.f12374e != 0) {
                        i11 = 0;
                    }
                    s2Var.f12258b = rVar.b().Z(i11).a0(bVar.f12375f == Long.MIN_VALUE ? rVar.I : 0).N();
                }
                return -5;
            }
            long j10 = b.this.f12375f;
            if (j10 == Long.MIN_VALUE || ((iC != -4 || decoderInputBuffer.f10608e < j10) && !(iC == -3 && bufferedPositionUs == Long.MIN_VALUE && !decoderInputBuffer.f10607d))) {
                return iC;
            }
            decoderInputBuffer.clear();
            decoderInputBuffer.setFlags(4);
            this.f12378b = true;
            return -4;
        }

        @Override
        public boolean isReady() {
            return !b.this.j() && this.f12377a.isReady();
        }

        @Override
        public void maybeThrowError() {
            this.f12377a.maybeThrowError();
        }

        @Override
        public int skipData(long j10) {
            if (b.this.j()) {
                return -3;
            }
            return this.f12377a.skipData(j10);
        }
    }

    public b(q qVar, boolean z10, long j10, long j11) {
        this.f12370a = qVar;
        this.f12373d = z10 ? j10 : C.TIME_UNSET;
        this.f12374e = j10;
        this.f12375f = j11;
    }

    private c4 c(long j10, c4 c4Var) {
        long jQ = a1.q(c4Var.f11035a, 0L, j10 - this.f12374e);
        long j11 = c4Var.f11036b;
        long j12 = this.f12375f;
        long jQ2 = a1.q(j11, 0L, j12 == Long.MIN_VALUE ? Long.MAX_VALUE : j12 - j10);
        return (jQ == c4Var.f11035a && jQ2 == c4Var.f11036b) ? c4Var : new c4(jQ, jQ2);
    }

    private static long i(long j10, long j11, long j12) {
        long jMax = Math.max(j10, j11);
        return j12 != Long.MIN_VALUE ? Math.min(jMax, j12) : jMax;
    }

    private static boolean m(long j10, long j11, i2.z[] zVarArr) {
        if (j10 < j11) {
            return true;
        }
        if (j10 != 0) {
            for (i2.z zVar : zVarArr) {
                if (zVar != null) {
                    androidx.media3.common.r selectedFormat = zVar.getSelectedFormat();
                    if (!androidx.media3.common.y.a(selectedFormat.f9849o, selectedFormat.f9845k)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override
    public boolean a(v2 v2Var) {
        return this.f12370a.a(v2Var);
    }

    @Override
    public long b(long j10, c4 c4Var) {
        long j11 = this.f12374e;
        if (j10 == j11) {
            return j11;
        }
        return this.f12370a.b(j10, c(j10, c4Var));
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
        this.f12370a.discardBuffer(j10, z10);
    }

    @Override
    public long e(i2.z[] zVarArr, boolean[] zArr, f2.u[] uVarArr, boolean[] zArr2, long j10) {
        this.f12372c = new a[uVarArr.length];
        f2.u[] uVarArr2 = new f2.u[uVarArr.length];
        int i10 = 0;
        while (true) {
            f2.u uVar = null;
            if (i10 >= uVarArr.length) {
                break;
            }
            a[] aVarArr = this.f12372c;
            a aVar = (a) uVarArr[i10];
            aVarArr[i10] = aVar;
            if (aVar != null) {
                uVar = aVar.f12377a;
            }
            uVarArr2[i10] = uVar;
            i10++;
        }
        long jE = this.f12370a.e(zVarArr, zArr, uVarArr2, zArr2, j10);
        long jI = i(jE, j10, this.f12375f);
        this.f12373d = (j() && m(jE, j10, zVarArr)) ? jI : C.TIME_UNSET;
        for (int i11 = 0; i11 < uVarArr.length; i11++) {
            f2.u uVar2 = uVarArr2[i11];
            if (uVar2 == null) {
                this.f12372c[i11] = null;
            } else {
                a[] aVarArr2 = this.f12372c;
                a aVar2 = aVarArr2[i11];
                if (aVar2 == null || aVar2.f12377a != uVar2) {
                    aVarArr2[i11] = new a(uVar2);
                }
            }
            uVarArr[i11] = this.f12372c[i11];
        }
        return jI;
    }

    @Override
    public void f(q.a aVar, long j10) {
        this.f12371b = aVar;
        this.f12370a.f(this, j10);
    }

    @Override
    public void g(q qVar) {
        if (this.f12376g != null) {
            return;
        }
        ((q.a) androidx.media3.common.util.a.e(this.f12371b)).g(this);
    }

    @Override
    public long getBufferedPositionUs() {
        long bufferedPositionUs = this.f12370a.getBufferedPositionUs();
        if (bufferedPositionUs != Long.MIN_VALUE) {
            long j10 = this.f12375f;
            if (j10 == Long.MIN_VALUE || bufferedPositionUs < j10) {
                return bufferedPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override
    public long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.f12370a.getNextLoadPositionUs();
        if (nextLoadPositionUs != Long.MIN_VALUE) {
            long j10 = this.f12375f;
            if (j10 == Long.MIN_VALUE || nextLoadPositionUs < j10) {
                return nextLoadPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override
    public f2.z getTrackGroups() {
        return this.f12370a.getTrackGroups();
    }

    @Override
    public boolean isLoading() {
        return this.f12370a.isLoading();
    }

    boolean j() {
        return this.f12373d != C.TIME_UNSET;
    }

    @Override
    public void h(q qVar) {
        ((q.a) androidx.media3.common.util.a.e(this.f12371b)).h(this);
    }

    public void l(ClippingMediaSource.IllegalClippingException illegalClippingException) {
        this.f12376g = illegalClippingException;
    }

    @Override
    public void maybeThrowPrepareError() throws ClippingMediaSource.IllegalClippingException {
        ClippingMediaSource.IllegalClippingException illegalClippingException = this.f12376g;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        this.f12370a.maybeThrowPrepareError();
    }

    public void n(long j10, long j11) {
        this.f12374e = j10;
        this.f12375f = j11;
    }

    @Override
    public long readDiscontinuity() {
        if (!j()) {
            long discontinuity = this.f12370a.readDiscontinuity();
            return discontinuity == C.TIME_UNSET ? C.TIME_UNSET : i(discontinuity, this.f12374e, this.f12375f);
        }
        long j10 = this.f12373d;
        this.f12373d = C.TIME_UNSET;
        long discontinuity2 = readDiscontinuity();
        return discontinuity2 != C.TIME_UNSET ? discontinuity2 : j10;
    }

    @Override
    public void reevaluateBuffer(long j10) {
        this.f12370a.reevaluateBuffer(j10);
    }

    @Override
    public long seekToUs(long j10) {
        this.f12373d = C.TIME_UNSET;
        for (a aVar : this.f12372c) {
            if (aVar != null) {
                aVar.a();
            }
        }
        return i(this.f12370a.seekToUs(j10), this.f12374e, this.f12375f);
    }
}
