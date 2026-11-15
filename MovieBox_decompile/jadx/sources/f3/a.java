package f3;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigInteger;
import k2.m0;
import k2.n0;
import k2.s;
import k2.u;

final class a implements g {

    private final f f59971a;

    private final long f59972b;

    private final long f59973c;

    private final i f59974d;

    private int f59975e;

    private long f59976f;

    private long f59977g;

    private long f59978h;

    private long f59979i;

    private long f59980j;

    private long f59981k;

    private long f59982l;

    private final class b implements m0 {
        private b() {
        }

        @Override
        public long getDurationUs() {
            return a.this.f59974d.b(a.this.f59976f);
        }

        @Override
        public m0.a getSeekPoints(long j10) {
            return new m0.a(new n0(j10, a1.q((a.this.f59972b + BigInteger.valueOf(a.this.f59974d.c(j10)).multiply(BigInteger.valueOf(a.this.f59973c - a.this.f59972b)).divide(BigInteger.valueOf(a.this.f59976f)).longValue()) - 30000, a.this.f59972b, a.this.f59973c - 1)));
        }

        @Override
        public boolean isSeekable() {
            return true;
        }
    }

    public a(i iVar, long j10, long j11, long j12, long j13, boolean z10) {
        androidx.media3.common.util.a.a(j10 >= 0 && j11 > j10);
        this.f59974d = iVar;
        this.f59972b = j10;
        this.f59973c = j11;
        if (j12 == j11 - j10 || z10) {
            this.f59976f = j13;
            this.f59975e = 4;
        } else {
            this.f59975e = 0;
        }
        this.f59971a = new f();
    }

    private long g(s sVar) throws IOException {
        if (this.f59979i == this.f59980j) {
            return -1L;
        }
        long position = sVar.getPosition();
        if (!this.f59971a.d(sVar, this.f59980j)) {
            long j10 = this.f59979i;
            if (j10 != position) {
                return j10;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.f59971a.a(sVar, false);
        sVar.resetPeekPosition();
        long j11 = this.f59978h;
        f fVar = this.f59971a;
        long j12 = fVar.f60001c;
        long j13 = j11 - j12;
        int i10 = fVar.f60006h + fVar.f60007i;
        if (0 <= j13 && j13 < 72000) {
            return -1L;
        }
        if (j13 < 0) {
            this.f59980j = position;
            this.f59982l = j12;
        } else {
            this.f59979i = sVar.getPosition() + ((long) i10);
            this.f59981k = this.f59971a.f60001c;
        }
        long j14 = this.f59980j;
        long j15 = this.f59979i;
        if (j14 - j15 < 100000) {
            this.f59980j = j15;
            return j15;
        }
        long position2 = sVar.getPosition() - (((long) i10) * (j13 <= 0 ? 2L : 1L));
        long j16 = this.f59980j;
        long j17 = this.f59979i;
        return a1.q(position2 + ((j13 * (j16 - j17)) / (this.f59982l - this.f59981k)), j17, j16 - 1);
    }

    private void i(s sVar) throws ParserException {
        while (true) {
            this.f59971a.c(sVar);
            this.f59971a.a(sVar, false);
            f fVar = this.f59971a;
            if (fVar.f60001c > this.f59978h) {
                sVar.resetPeekPosition();
                return;
            } else {
                sVar.skipFully(fVar.f60006h + fVar.f60007i);
                this.f59979i = sVar.getPosition();
                this.f59981k = this.f59971a.f60001c;
            }
        }
    }

    @Override
    public long a(s sVar) throws IOException {
        int i10 = this.f59975e;
        if (i10 == 0) {
            long position = sVar.getPosition();
            this.f59977g = position;
            this.f59975e = 1;
            long j10 = this.f59973c - 65307;
            if (j10 > position) {
                return j10;
            }
        } else if (i10 != 1) {
            if (i10 == 2) {
                long jG = g(sVar);
                if (jG != -1) {
                    return jG;
                }
                this.f59975e = 3;
            } else if (i10 != 3) {
                if (i10 == 4) {
                    return -1L;
                }
                throw new IllegalStateException();
            }
            i(sVar);
            this.f59975e = 4;
            return -(this.f59981k + 2);
        }
        this.f59976f = h(sVar);
        this.f59975e = 4;
        return this.f59977g;
    }

    @Override
    public b createSeekMap() {
        if (this.f59976f != 0) {
            return new b();
        }
        return null;
    }

    long h(s sVar) throws ParserException, EOFException {
        this.f59971a.b();
        if (!this.f59971a.c(sVar)) {
            throw new EOFException();
        }
        this.f59971a.a(sVar, false);
        f fVar = this.f59971a;
        sVar.skipFully(fVar.f60006h + fVar.f60007i);
        long j10 = this.f59971a.f60001c;
        while (true) {
            f fVar2 = this.f59971a;
            if ((fVar2.f60000b & 4) == 4 || !fVar2.c(sVar) || sVar.getPosition() >= this.f59973c || !this.f59971a.a(sVar, true)) {
                break;
            }
            f fVar3 = this.f59971a;
            if (!u.e(sVar, fVar3.f60006h + fVar3.f60007i)) {
                break;
            }
            j10 = this.f59971a.f60001c;
        }
        return j10;
    }

    @Override
    public void startSeek(long j10) {
        this.f59978h = a1.q(j10, 0L, this.f59976f - 1);
        this.f59975e = 2;
        this.f59979i = this.f59972b;
        this.f59980j = this.f59973c;
        this.f59981k = 0L;
        this.f59982l = this.f59976f;
    }
}
