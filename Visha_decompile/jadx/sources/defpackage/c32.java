package defpackage;

import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import com.google.android.exoplayer2.ParserException;
import java.io.EOFException;
import java.io.IOException;

public final class c32 implements de7 {
    public final ce7 a;
    public final long b;
    public final long c;
    public final sy9 d;
    public int e;
    public long f;
    public long g;
    public long h;
    public long i;
    public long j;
    public long k;
    public long l;

    public final class b implements ja9 {
        public b() {
        }

        @Override
        public long getDurationUs() {
            return c32.this.d.b(c32.this.f);
        }

        @Override
        public ja9.a getSeekPoints(long j) {
            return new ja9.a(new la9(j, blb.q((c32.this.b + ((c32.this.d.c(j) * (c32.this.c - c32.this.b)) / c32.this.f)) - 30000, c32.this.b, c32.this.c - 1)));
        }

        @Override
        public boolean isSeekable() {
            return true;
        }
    }

    public c32(sy9 sy9Var, long j, long j2, long j3, long j4, boolean z) {
        zi.a(j >= 0 && j2 > j);
        this.d = sy9Var;
        this.b = j;
        this.c = j2;
        if (j3 == j2 - j || z) {
            this.f = j4;
            this.e = 4;
        } else {
            this.e = 0;
        }
        this.a = new ce7();
    }

    @Override
    public long a(pk3 pk3Var) throws IOException {
        int i = this.e;
        if (i == 0) {
            long position = pk3Var.getPosition();
            this.g = position;
            this.e = 1;
            long j = this.c - 65307;
            if (j > position) {
                return j;
            }
        } else if (i != 1) {
            if (i == 2) {
                long jG = g(pk3Var);
                if (jG != -1) {
                    return jG;
                }
                this.e = 3;
            } else if (i != 3) {
                if (i == 4) {
                    return -1L;
                }
                throw new IllegalStateException();
            }
            i(pk3Var);
            this.e = 4;
            return -(this.k + 2);
        }
        this.f = h(pk3Var);
        this.e = 4;
        return this.g;
    }

    @Override
    public b createSeekMap() {
        if (this.f != 0) {
            return new b();
        }
        return null;
    }

    public final long g(pk3 pk3Var) throws IOException {
        if (this.i == this.j) {
            return -1L;
        }
        long position = pk3Var.getPosition();
        if (!this.a.d(pk3Var, this.j)) {
            long j = this.i;
            if (j != position) {
                return j;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.a.a(pk3Var, false);
        pk3Var.resetPeekPosition();
        long j2 = this.h;
        ce7 ce7Var = this.a;
        long j3 = ce7Var.c;
        long j4 = j2 - j3;
        int i = ce7Var.h + ce7Var.i;
        if (0 <= j4 && j4 < 72000) {
            return -1L;
        }
        if (j4 < 0) {
            this.j = position;
            this.l = j3;
        } else {
            this.i = pk3Var.getPosition() + ((long) i);
            this.k = this.a.c;
        }
        long j5 = this.j;
        long j6 = this.i;
        if (j5 - j6 < SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US) {
            this.j = j6;
            return j6;
        }
        long position2 = pk3Var.getPosition() - (((long) i) * (j4 <= 0 ? 2L : 1L));
        long j7 = this.j;
        long j8 = this.i;
        return blb.q(position2 + ((j4 * (j7 - j8)) / (this.l - this.k)), j8, j7 - 1);
    }

    public long h(pk3 pk3Var) throws ParserException, EOFException {
        this.a.b();
        if (!this.a.c(pk3Var)) {
            throw new EOFException();
        }
        this.a.a(pk3Var, false);
        ce7 ce7Var = this.a;
        pk3Var.skipFully(ce7Var.h + ce7Var.i);
        long j = this.a.c;
        while (true) {
            ce7 ce7Var2 = this.a;
            if ((ce7Var2.b & 4) == 4 || !ce7Var2.c(pk3Var) || pk3Var.getPosition() >= this.c || !this.a.a(pk3Var, true)) {
                break;
            }
            ce7 ce7Var3 = this.a;
            if (!rk3.e(pk3Var, ce7Var3.h + ce7Var3.i)) {
                break;
            }
            j = this.a.c;
        }
        return j;
    }

    public final void i(pk3 pk3Var) throws ParserException {
        while (true) {
            this.a.c(pk3Var);
            this.a.a(pk3Var, false);
            ce7 ce7Var = this.a;
            if (ce7Var.c > this.h) {
                pk3Var.resetPeekPosition();
                return;
            } else {
                pk3Var.skipFully(ce7Var.h + ce7Var.i);
                this.i = pk3Var.getPosition();
                this.k = this.a.c;
            }
        }
    }

    @Override
    public void startSeek(long j) {
        this.h = blb.q(j, 0L, this.f - 1);
        this.e = 2;
        this.i = this.b;
        this.j = this.c;
        this.k = 0L;
        this.l = this.f;
    }
}
