package r9;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.p0;
import i9.b0;
import i9.c0;
import i9.m;
import i9.o;
import java.io.EOFException;
import java.io.IOException;

final class a implements g {

    private final f f70868a;

    private final long f70869b;

    private final long f70870c;

    private final i f70871d;

    private int f70872e;

    private long f70873f;

    private long f70874g;

    private long f70875h;

    private long f70876i;

    private long f70877j;

    private long f70878k;

    private long f70879l;

    private final class b implements b0 {
        private b() {
        }

        @Override
        public long getDurationUs() {
            return a.this.f70871d.b(a.this.f70873f);
        }

        @Override
        public b0.a getSeekPoints(long j10) {
            return new b0.a(new c0(j10, p0.r((a.this.f70869b + ((a.this.f70871d.c(j10) * (a.this.f70870c - a.this.f70869b)) / a.this.f70873f)) - 30000, a.this.f70869b, a.this.f70870c - 1)));
        }

        @Override
        public boolean isSeekable() {
            return true;
        }
    }

    public a(i iVar, long j10, long j11, long j12, long j13, boolean z10) {
        com.google.android.exoplayer2.util.a.a(j10 >= 0 && j11 > j10);
        this.f70871d = iVar;
        this.f70869b = j10;
        this.f70870c = j11;
        if (j12 == j11 - j10 || z10) {
            this.f70873f = j13;
            this.f70872e = 4;
        } else {
            this.f70872e = 0;
        }
        this.f70868a = new f();
    }

    private long g(m mVar) throws IOException {
        if (this.f70876i == this.f70877j) {
            return -1L;
        }
        long position = mVar.getPosition();
        if (!this.f70868a.d(mVar, this.f70877j)) {
            long j10 = this.f70876i;
            if (j10 != position) {
                return j10;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.f70868a.a(mVar, false);
        mVar.resetPeekPosition();
        long j11 = this.f70875h;
        f fVar = this.f70868a;
        long j12 = fVar.f70898c;
        long j13 = j11 - j12;
        int i10 = fVar.f70903h + fVar.f70904i;
        if (0 <= j13 && j13 < 72000) {
            return -1L;
        }
        if (j13 < 0) {
            this.f70877j = position;
            this.f70879l = j12;
        } else {
            this.f70876i = mVar.getPosition() + ((long) i10);
            this.f70878k = this.f70868a.f70898c;
        }
        long j14 = this.f70877j;
        long j15 = this.f70876i;
        if (j14 - j15 < 100000) {
            this.f70877j = j15;
            return j15;
        }
        long position2 = mVar.getPosition() - (((long) i10) * (j13 <= 0 ? 2L : 1L));
        long j16 = this.f70877j;
        long j17 = this.f70876i;
        return p0.r(position2 + ((j13 * (j16 - j17)) / (this.f70879l - this.f70878k)), j17, j16 - 1);
    }

    private void i(m mVar) throws ParserException {
        while (true) {
            this.f70868a.c(mVar);
            this.f70868a.a(mVar, false);
            f fVar = this.f70868a;
            if (fVar.f70898c > this.f70875h) {
                mVar.resetPeekPosition();
                return;
            } else {
                mVar.skipFully(fVar.f70903h + fVar.f70904i);
                this.f70876i = mVar.getPosition();
                this.f70878k = this.f70868a.f70898c;
            }
        }
    }

    @Override
    public long a(m mVar) throws IOException {
        int i10 = this.f70872e;
        if (i10 == 0) {
            long position = mVar.getPosition();
            this.f70874g = position;
            this.f70872e = 1;
            long j10 = this.f70870c - 65307;
            if (j10 > position) {
                return j10;
            }
        } else if (i10 != 1) {
            if (i10 == 2) {
                long jG = g(mVar);
                if (jG != -1) {
                    return jG;
                }
                this.f70872e = 3;
            } else if (i10 != 3) {
                if (i10 == 4) {
                    return -1L;
                }
                throw new IllegalStateException();
            }
            i(mVar);
            this.f70872e = 4;
            return -(this.f70878k + 2);
        }
        this.f70873f = h(mVar);
        this.f70872e = 4;
        return this.f70874g;
    }

    @Override
    public b createSeekMap() {
        if (this.f70873f != 0) {
            return new b();
        }
        return null;
    }

    long h(m mVar) throws ParserException, EOFException {
        this.f70868a.b();
        if (!this.f70868a.c(mVar)) {
            throw new EOFException();
        }
        this.f70868a.a(mVar, false);
        f fVar = this.f70868a;
        mVar.skipFully(fVar.f70903h + fVar.f70904i);
        long j10 = this.f70868a.f70898c;
        while (true) {
            f fVar2 = this.f70868a;
            if ((fVar2.f70897b & 4) == 4 || !fVar2.c(mVar) || mVar.getPosition() >= this.f70870c || !this.f70868a.a(mVar, true)) {
                break;
            }
            f fVar3 = this.f70868a;
            if (!o.e(mVar, fVar3.f70903h + fVar3.f70904i)) {
                break;
            }
            j10 = this.f70868a.f70898c;
        }
        return j10;
    }

    @Override
    public void startSeek(long j10) {
        this.f70875h = p0.r(j10, 0L, this.f70873f - 1);
        this.f70872e = 2;
        this.f70876i = this.f70869b;
        this.f70877j = this.f70870c;
        this.f70878k = 0L;
        this.f70879l = this.f70873f;
    }
}
