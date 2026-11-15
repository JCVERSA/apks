package com.yandex.mobile.ads.impl;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import java.io.IOException;

public abstract class jl {
    protected final a a;
    protected final f b;

    @Nullable
    protected c c;
    private final int d;

    public static class a implements ex1 {
        private final d a;
        private final long b;
        private final long c = 0;
        private final long d;
        private final long e;
        private final long f;
        private final long g;

        public a(d dVar, long j, long j2, long j3, long j4, long j5) {
            this.a = dVar;
            this.b = j;
            this.d = j2;
            this.e = j3;
            this.f = j4;
            this.g = j5;
        }

        @Override
        public final boolean b() {
            return true;
        }

        @Override
        public final long c() {
            return this.b;
        }

        @Override
        public final ex1.a b(long j) {
            gx1 gx1Var = new gx1(j, c.a(this.a.a(j), this.c, this.d, this.e, this.f, this.g));
            return new ex1.a(gx1Var, gx1Var);
        }
    }

    public static final class b implements d {
        @Override
        public final long a(long j) {
            return j;
        }
    }

    public static class c {
        private final long a;
        private final long b;
        private final long c;
        private long d;
        private long e;
        private long f;
        private long g;
        private long h;

        public c(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.a = j;
            this.b = j2;
            this.d = j3;
            this.e = j4;
            this.f = j5;
            this.g = j6;
            this.c = j7;
            this.h = a(j2, j3, j4, j5, j6, j7);
        }

        public static long a(long j, long j2, long j3, long j4, long j5, long j6) {
            if (j4 + 1 >= j5 || j2 + 1 >= j3) {
                return j4;
            }
            long j7 = (long) ((j - j2) * ((j5 - j4) / (j3 - j2)));
            long j8 = j7 / 20;
            int i = f92.a;
            return Math.max(j4, Math.min(((j7 + j4) - j6) - j8, j5 - 1));
        }
    }

    public interface d {
        long a(long j);
    }

    public static final class e {
        public static final e d = new e(-3, C.TIME_UNSET, -1);
        private final int a;
        private final long b;
        private final long c;

        private e(int i, long j, long j2) {
            this.a = i;
            this.b = j;
            this.c = j2;
        }

        public static e a(long j, long j2) {
            return new e(-1, j, j2);
        }

        public static e b(long j, long j2) {
            return new e(-2, j, j2);
        }

        public static e a(long j) {
            return new e(0, C.TIME_UNSET, j);
        }
    }

    public interface f {
        e a(wz wzVar, long j) throws IOException;

        default void a() {
        }
    }

    public jl(d dVar, f fVar, long j, long j2, long j3, long j4, long j5, int i) {
        this.b = fVar;
        this.d = i;
        this.a = new a(dVar, j, j2, j3, j4, j5);
    }

    public final a a() {
        return this.a;
    }

    public final boolean b() {
        return this.c != null;
    }

    public final int a(wz wzVar, pj1 pj1Var) throws IOException {
        while (true) {
            c cVar = this.c;
            if (cVar == null) {
                throw new IllegalStateException();
            }
            long j = cVar.f;
            long j2 = cVar.g;
            long j3 = cVar.h;
            if (j2 - j <= this.d) {
                this.c = null;
                this.b.a();
                if (j == wzVar.a()) {
                    return 0;
                }
                pj1Var.a = j;
                return 1;
            }
            long jA = j3 - wzVar.a();
            if (jA < 0 || jA > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                if (j3 == wzVar.a()) {
                    return 0;
                }
                pj1Var.a = j3;
                return 1;
            }
            wzVar.a((int) jA);
            wzVar.c();
            e eVarA = this.b.a(wzVar, cVar.b);
            int i = eVarA.a;
            if (i == -3) {
                this.c = null;
                this.b.a();
                if (j3 == wzVar.a()) {
                    return 0;
                }
                pj1Var.a = j3;
                return 1;
            }
            if (i == -2) {
                long j4 = eVarA.b;
                long j5 = eVarA.c;
                cVar.d = j4;
                cVar.f = j5;
                cVar.h = c.a(cVar.b, j4, cVar.e, j5, cVar.g, cVar.c);
            } else {
                if (i != -1) {
                    if (i != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    long jA2 = eVarA.c - wzVar.a();
                    if (jA2 >= 0 && jA2 <= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                        wzVar.a((int) jA2);
                    }
                    this.c = null;
                    this.b.a();
                    long j6 = eVarA.c;
                    if (j6 == wzVar.a()) {
                        return 0;
                    }
                    pj1Var.a = j6;
                    return 1;
                }
                long j7 = eVarA.b;
                long j8 = eVarA.c;
                cVar.e = j7;
                cVar.g = j8;
                cVar.h = c.a(cVar.b, cVar.d, j7, cVar.f, j8, cVar.c);
            }
        }
    }

    public final void a(long j) {
        c cVar = this.c;
        if (cVar == null || cVar.a != j) {
            long jA = this.a.a.a(j);
            a aVar = this.a;
            this.c = new c(j, jA, aVar.c, aVar.d, aVar.e, aVar.f, aVar.g);
        }
    }
}
