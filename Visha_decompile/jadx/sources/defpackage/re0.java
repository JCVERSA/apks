package defpackage;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.C;

public abstract class re0 {
    public final a a;
    public final f b;
    public c c;
    public final int d;

    public static class a implements ja9 {
        public final d a;
        public final long b;
        public final long c;
        public final long d;
        public final long e;
        public final long f;
        public final long g;

        public a(d dVar, long j, long j2, long j3, long j4, long j5, long j6) {
            this.a = dVar;
            this.b = j;
            this.c = j2;
            this.d = j3;
            this.e = j4;
            this.f = j5;
            this.g = j6;
        }

        public long f(long j) {
            return this.a.timeUsToTargetTime(j);
        }

        @Override
        public long getDurationUs() {
            return this.b;
        }

        @Override
        public ja9.a getSeekPoints(long j) {
            return new ja9.a(new la9(j, c.h(this.a.timeUsToTargetTime(j), this.c, this.d, this.e, this.f, this.g)));
        }

        @Override
        public boolean isSeekable() {
            return true;
        }
    }

    public static final class b implements d {
        @Override
        public long timeUsToTargetTime(long j) {
            return j;
        }
    }

    public static class c {
        public final long a;
        public final long b;
        public final long c;
        public long d;
        public long e;
        public long f;
        public long g;
        public long h;

        public c(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.a = j;
            this.b = j2;
            this.d = j3;
            this.e = j4;
            this.f = j5;
            this.g = j6;
            this.c = j7;
            this.h = h(j2, j3, j4, j5, j6, j7);
        }

        public static long h(long j, long j2, long j3, long j4, long j5, long j6) {
            if (j4 + 1 >= j5 || j2 + 1 >= j3) {
                return j4;
            }
            long j7 = (long) ((j - j2) * ((j5 - j4) / (j3 - j2)));
            return blb.q(((j7 + j4) - j6) - (j7 / 20), j4, j5 - 1);
        }

        public final long i() {
            return this.g;
        }

        public final long j() {
            return this.f;
        }

        public final long k() {
            return this.h;
        }

        public final long l() {
            return this.a;
        }

        public final long m() {
            return this.b;
        }

        public final void n() {
            this.h = h(this.b, this.d, this.e, this.f, this.g, this.c);
        }

        public final void o(long j, long j2) {
            this.e = j;
            this.g = j2;
            n();
        }

        public final void p(long j, long j2) {
            this.d = j;
            this.f = j2;
            n();
        }
    }

    public interface d {
        long timeUsToTargetTime(long j);
    }

    public static final class e {
        public static final e d = new e(-3, C.TIME_UNSET, -1);
        public final int a;
        public final long b;
        public final long c;

        public e(int i, long j, long j2) {
            this.a = i;
            this.b = j;
            this.c = j2;
        }

        public static e d(long j, long j2) {
            return new e(-1, j, j2);
        }

        public static e e(long j) {
            return new e(0, C.TIME_UNSET, j);
        }

        public static e f(long j, long j2) {
            return new e(-2, j, j2);
        }
    }

    public interface f {
        e a(pk3 pk3Var, long j);

        default void onSeekFinished() {
        }
    }

    public re0(d dVar, f fVar, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.b = fVar;
        this.d = i;
        this.a = new a(dVar, j, j2, j3, j4, j5, j6);
    }

    public c a(long j) {
        return new c(j, this.a.f(j), this.a.c, this.a.d, this.a.e, this.a.f, this.a.g);
    }

    public final ja9 b() {
        return this.a;
    }

    public int c(pk3 pk3Var, id8 id8Var) {
        while (true) {
            c cVar = (c) zi.i(this.c);
            long j = cVar.j();
            long jI = cVar.i();
            long jK = cVar.k();
            if (jI - j <= this.d) {
                e(false, j);
                return g(pk3Var, j, id8Var);
            }
            if (!i(pk3Var, jK)) {
                return g(pk3Var, jK, id8Var);
            }
            pk3Var.resetPeekPosition();
            e eVarA = this.b.a(pk3Var, cVar.m());
            int i = eVarA.a;
            if (i == -3) {
                e(false, jK);
                return g(pk3Var, jK, id8Var);
            }
            if (i == -2) {
                cVar.p(eVarA.b, eVarA.c);
            } else {
                if (i != -1) {
                    if (i != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    i(pk3Var, eVarA.c);
                    e(true, eVarA.c);
                    return g(pk3Var, eVarA.c, id8Var);
                }
                cVar.o(eVarA.b, eVarA.c);
            }
        }
    }

    public final boolean d() {
        return this.c != null;
    }

    public final void e(boolean z, long j) {
        this.c = null;
        this.b.onSeekFinished();
        f(z, j);
    }

    public void f(boolean z, long j) {
    }

    public final int g(pk3 pk3Var, long j, id8 id8Var) {
        if (j == pk3Var.getPosition()) {
            return 0;
        }
        id8Var.a = j;
        return 1;
    }

    public final void h(long j) {
        c cVar = this.c;
        if (cVar == null || cVar.l() != j) {
            this.c = a(j);
        }
    }

    public final boolean i(pk3 pk3Var, long j) {
        long position = j - pk3Var.getPosition();
        if (position < 0 || position > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            return false;
        }
        pk3Var.skipFully((int) position);
        return true;
    }
}
