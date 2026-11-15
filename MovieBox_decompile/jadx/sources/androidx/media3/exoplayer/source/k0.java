package androidx.media3.exoplayer.source;

import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.v2;
import com.mbridge.msdk.playercommon.exoplayer2.C;

final class k0 implements q, q.a {

    private final q f12534a;

    private final long f12535b;

    private q.a f12536c;

    private static final class a implements f2.u {

        private final f2.u f12537a;

        private final long f12538b;

        public a(f2.u uVar, long j10) {
            this.f12537a = uVar;
            this.f12538b = j10;
        }

        public f2.u a() {
            return this.f12537a;
        }

        @Override
        public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            int iC = this.f12537a.c(s2Var, decoderInputBuffer, i10);
            if (iC == -4) {
                decoderInputBuffer.f10608e += this.f12538b;
            }
            return iC;
        }

        @Override
        public boolean isReady() {
            return this.f12537a.isReady();
        }

        @Override
        public void maybeThrowError() {
            this.f12537a.maybeThrowError();
        }

        @Override
        public int skipData(long j10) {
            return this.f12537a.skipData(j10 - this.f12538b);
        }
    }

    public k0(q qVar, long j10) {
        this.f12534a = qVar;
        this.f12535b = j10;
    }

    @Override
    public boolean a(v2 v2Var) {
        return this.f12534a.a(v2Var.a().f(v2Var.f12738a - this.f12535b).d());
    }

    @Override
    public long b(long j10, c4 c4Var) {
        return this.f12534a.b(j10 - this.f12535b, c4Var) + this.f12535b;
    }

    public q c() {
        return this.f12534a;
    }

    @Override
    public void discardBuffer(long j10, boolean z10) {
        this.f12534a.discardBuffer(j10 - this.f12535b, z10);
    }

    @Override
    public long e(i2.z[] zVarArr, boolean[] zArr, f2.u[] uVarArr, boolean[] zArr2, long j10) {
        f2.u[] uVarArr2 = new f2.u[uVarArr.length];
        int i10 = 0;
        while (true) {
            f2.u uVarA = null;
            if (i10 >= uVarArr.length) {
                break;
            }
            a aVar = (a) uVarArr[i10];
            if (aVar != null) {
                uVarA = aVar.a();
            }
            uVarArr2[i10] = uVarA;
            i10++;
        }
        long jE = this.f12534a.e(zVarArr, zArr, uVarArr2, zArr2, j10 - this.f12535b);
        for (int i11 = 0; i11 < uVarArr.length; i11++) {
            f2.u uVar = uVarArr2[i11];
            if (uVar == null) {
                uVarArr[i11] = null;
            } else {
                f2.u uVar2 = uVarArr[i11];
                if (uVar2 == null || ((a) uVar2).a() != uVar) {
                    uVarArr[i11] = new a(uVar, this.f12535b);
                }
            }
        }
        return jE + this.f12535b;
    }

    @Override
    public void f(q.a aVar, long j10) {
        this.f12536c = aVar;
        this.f12534a.f(this, j10 - this.f12535b);
    }

    @Override
    public void g(q qVar) {
        ((q.a) androidx.media3.common.util.a.e(this.f12536c)).g(this);
    }

    @Override
    public long getBufferedPositionUs() {
        long bufferedPositionUs = this.f12534a.getBufferedPositionUs();
        if (bufferedPositionUs == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return this.f12535b + bufferedPositionUs;
    }

    @Override
    public long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.f12534a.getNextLoadPositionUs();
        if (nextLoadPositionUs == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return this.f12535b + nextLoadPositionUs;
    }

    @Override
    public f2.z getTrackGroups() {
        return this.f12534a.getTrackGroups();
    }

    @Override
    public void h(q qVar) {
        ((q.a) androidx.media3.common.util.a.e(this.f12536c)).h(this);
    }

    @Override
    public boolean isLoading() {
        return this.f12534a.isLoading();
    }

    @Override
    public void maybeThrowPrepareError() {
        this.f12534a.maybeThrowPrepareError();
    }

    @Override
    public long readDiscontinuity() {
        long discontinuity = this.f12534a.readDiscontinuity();
        return discontinuity == C.TIME_UNSET ? C.TIME_UNSET : this.f12535b + discontinuity;
    }

    @Override
    public void reevaluateBuffer(long j10) {
        this.f12534a.reevaluateBuffer(j10 - this.f12535b);
    }

    @Override
    public long seekToUs(long j10) {
        return this.f12534a.seekToUs(j10 - this.f12535b) + this.f12535b;
    }
}
