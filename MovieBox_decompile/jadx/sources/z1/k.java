package z1;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.List;

public abstract class k {

    final i f76569a;

    final long f76570b;

    final long f76571c;

    public static abstract class a extends k {

        final long f76572d;

        final long f76573e;

        final List f76574f;

        private final long f76575g;

        private final long f76576h;

        final long f76577i;

        public a(i iVar, long j10, long j11, long j12, long j13, List list, long j14, long j15, long j16) {
            super(iVar, j10, j11);
            this.f76572d = j12;
            this.f76573e = j13;
            this.f76574f = list;
            this.f76577i = j14;
            this.f76575g = j15;
            this.f76576h = j16;
        }

        public long c(long j10, long j11) {
            long jG = g(j10);
            return jG != -1 ? jG : (int) (i((j11 - this.f76576h) + this.f76577i, j10) - d(j10, j11));
        }

        public long d(long j10, long j11) {
            if (g(j10) == -1) {
                long j12 = this.f76575g;
                if (j12 != C.TIME_UNSET) {
                    return Math.max(e(), i((j11 - this.f76576h) - j12, j10));
                }
            }
            return e();
        }

        public long e() {
            return this.f76572d;
        }

        public long f(long j10, long j11) {
            if (this.f76574f != null) {
                return C.TIME_UNSET;
            }
            long jD = d(j10, j11) + c(j10, j11);
            return (j(jD) + h(jD, j10)) - this.f76577i;
        }

        public abstract long g(long j10);

        public final long h(long j10, long j11) {
            List list = this.f76574f;
            if (list != null) {
                return (((d) list.get((int) (j10 - this.f76572d))).f76583b * 1000000) / this.f76570b;
            }
            long jG = g(j11);
            return (jG == -1 || j10 != (e() + jG) - 1) ? (this.f76573e * 1000000) / this.f76570b : j11 - j(j10);
        }

        public long i(long j10, long j11) {
            long jE = e();
            long jG = g(j11);
            if (jG == 0) {
                return jE;
            }
            if (this.f76574f == null) {
                long j12 = this.f76572d + (j10 / ((this.f76573e * 1000000) / this.f76570b));
                if (j12 < jE) {
                    return jE;
                }
                return jG == -1 ? j12 : Math.min(j12, (jE + jG) - 1);
            }
            long j13 = (jG + jE) - 1;
            long j14 = jE;
            while (j14 <= j13) {
                long j15 = ((j13 - j14) / 2) + j14;
                long j16 = j(j15);
                if (j16 < j10) {
                    j14 = j15 + 1;
                } else {
                    if (j16 <= j10) {
                        return j15;
                    }
                    j13 = j15 - 1;
                }
            }
            return j14 == jE ? j14 : j13;
        }

        public final long j(long j10) {
            List list = this.f76574f;
            return a1.e1(list != null ? ((d) list.get((int) (j10 - this.f76572d))).f76582a - this.f76571c : (j10 - this.f76572d) * this.f76573e, 1000000L, this.f76570b);
        }

        public abstract i k(j jVar, long j10);

        public boolean l() {
            return this.f76574f != null;
        }
    }

    public static final class b extends a {

        final List f76578j;

        public b(i iVar, long j10, long j11, long j12, long j13, List list, long j14, List list2, long j15, long j16) {
            super(iVar, j10, j11, j12, j13, list, j14, j15, j16);
            this.f76578j = list2;
        }

        @Override
        public long g(long j10) {
            return this.f76578j.size();
        }

        @Override
        public i k(j jVar, long j10) {
            return (i) this.f76578j.get((int) (j10 - this.f76572d));
        }

        @Override
        public boolean l() {
            return true;
        }
    }

    public static final class c extends a {

        final n f76579j;

        final n f76580k;

        final long f76581l;

        public c(i iVar, long j10, long j11, long j12, long j13, long j14, List list, long j15, n nVar, n nVar2, long j16, long j17) {
            super(iVar, j10, j11, j12, j14, list, j15, j16, j17);
            this.f76579j = nVar;
            this.f76580k = nVar2;
            this.f76581l = j13;
        }

        @Override
        public i a(j jVar) {
            n nVar = this.f76579j;
            if (nVar == null) {
                return super.a(jVar);
            }
            r rVar = jVar.f76556b;
            return new i(nVar.a(rVar.f9835a, 0L, rVar.f9844j, 0L), 0L, -1L);
        }

        @Override
        public long g(long j10) {
            List list = this.f76574f;
            if (list != null) {
                return list.size();
            }
            long j11 = this.f76581l;
            if (j11 != -1) {
                return (j11 - this.f76572d) + 1;
            }
            if (j10 != C.TIME_UNSET) {
                return com.google.common.math.a.a(BigInteger.valueOf(j10).multiply(BigInteger.valueOf(this.f76570b)), BigInteger.valueOf(this.f76573e).multiply(BigInteger.valueOf(1000000L)), RoundingMode.CEILING).longValue();
            }
            return -1L;
        }

        @Override
        public i k(j jVar, long j10) {
            List list = this.f76574f;
            long j11 = list != null ? ((d) list.get((int) (j10 - this.f76572d))).f76582a : (j10 - this.f76572d) * this.f76573e;
            n nVar = this.f76580k;
            r rVar = jVar.f76556b;
            return new i(nVar.a(rVar.f9835a, j10, rVar.f9844j, j11), 0L, -1L);
        }
    }

    public static final class d {

        final long f76582a;

        final long f76583b;

        public d(long j10, long j11) {
            this.f76582a = j10;
            this.f76583b = j11;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f76582a == dVar.f76582a && this.f76583b == dVar.f76583b;
        }

        public int hashCode() {
            return (((int) this.f76582a) * 31) + ((int) this.f76583b);
        }
    }

    public k(i iVar, long j10, long j11) {
        this.f76569a = iVar;
        this.f76570b = j10;
        this.f76571c = j11;
    }

    public i a(j jVar) {
        return this.f76569a;
    }

    public long b() {
        return a1.e1(this.f76571c, 1000000L, this.f76570b);
    }

    public static class e extends k {

        final long f76584d;

        final long f76585e;

        public e(i iVar, long j10, long j11, long j12, long j13) {
            super(iVar, j10, j11);
            this.f76584d = j12;
            this.f76585e = j13;
        }

        public i c() {
            long j10 = this.f76585e;
            if (j10 <= 0) {
                return null;
            }
            return new i(null, this.f76584d, j10);
        }

        public e() {
            this(null, 1L, 0L, 0L, 0L);
        }
    }
}
