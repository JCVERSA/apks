package z9;

import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.List;

public abstract class k {

    final i f76702a;

    final long f76703b;

    final long f76704c;

    public static abstract class a extends k {

        final long f76705d;

        final long f76706e;

        final List f76707f;

        private final long f76708g;

        private final long f76709h;

        final long f76710i;

        public a(i iVar, long j10, long j11, long j12, long j13, List list, long j14, long j15, long j16) {
            super(iVar, j10, j11);
            this.f76705d = j12;
            this.f76706e = j13;
            this.f76707f = list;
            this.f76710i = j14;
            this.f76708g = j15;
            this.f76709h = j16;
        }

        public long c(long j10, long j11) {
            long jG = g(j10);
            return jG != -1 ? jG : (int) (i((j11 - this.f76709h) + this.f76710i, j10) - d(j10, j11));
        }

        public long d(long j10, long j11) {
            if (g(j10) == -1) {
                long j12 = this.f76708g;
                if (j12 != C.TIME_UNSET) {
                    return Math.max(e(), i((j11 - this.f76709h) - j12, j10));
                }
            }
            return e();
        }

        public long e() {
            return this.f76705d;
        }

        public long f(long j10, long j11) {
            if (this.f76707f != null) {
                return C.TIME_UNSET;
            }
            long jD = d(j10, j11) + c(j10, j11);
            return (j(jD) + h(jD, j10)) - this.f76710i;
        }

        public abstract long g(long j10);

        public final long h(long j10, long j11) {
            List list = this.f76707f;
            if (list != null) {
                return (((d) list.get((int) (j10 - this.f76705d))).f76716b * 1000000) / this.f76703b;
            }
            long jG = g(j11);
            return (jG == -1 || j10 != (e() + jG) - 1) ? (this.f76706e * 1000000) / this.f76703b : j11 - j(j10);
        }

        public long i(long j10, long j11) {
            long jE = e();
            long jG = g(j11);
            if (jG == 0) {
                return jE;
            }
            if (this.f76707f == null) {
                long j12 = this.f76705d + (j10 / ((this.f76706e * 1000000) / this.f76703b));
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
            List list = this.f76707f;
            return p0.N0(list != null ? ((d) list.get((int) (j10 - this.f76705d))).f76715a - this.f76704c : (j10 - this.f76705d) * this.f76706e, 1000000L, this.f76703b);
        }

        public abstract i k(j jVar, long j10);

        public boolean l() {
            return this.f76707f != null;
        }
    }

    public static final class b extends a {

        final List f76711j;

        public b(i iVar, long j10, long j11, long j12, long j13, List list, long j14, List list2, long j15, long j16) {
            super(iVar, j10, j11, j12, j13, list, j14, j15, j16);
            this.f76711j = list2;
        }

        @Override
        public long g(long j10) {
            return this.f76711j.size();
        }

        @Override
        public i k(j jVar, long j10) {
            return (i) this.f76711j.get((int) (j10 - this.f76705d));
        }

        @Override
        public boolean l() {
            return true;
        }
    }

    public static final class c extends a {

        final n f76712j;

        final n f76713k;

        final long f76714l;

        public c(i iVar, long j10, long j11, long j12, long j13, long j14, List list, long j15, n nVar, n nVar2, long j16, long j17) {
            super(iVar, j10, j11, j12, j14, list, j15, j16, j17);
            this.f76712j = nVar;
            this.f76713k = nVar2;
            this.f76714l = j13;
        }

        @Override
        public i a(j jVar) {
            n nVar = this.f76712j;
            if (nVar == null) {
                return super.a(jVar);
            }
            p1 p1Var = jVar.f76689b;
            return new i(nVar.a(p1Var.f24890a, 0L, p1Var.f24897h, 0L), 0L, -1L);
        }

        @Override
        public long g(long j10) {
            List list = this.f76707f;
            if (list != null) {
                return list.size();
            }
            long j11 = this.f76714l;
            if (j11 != -1) {
                return (j11 - this.f76705d) + 1;
            }
            if (j10 != C.TIME_UNSET) {
                return com.google.common.math.a.a(BigInteger.valueOf(j10).multiply(BigInteger.valueOf(this.f76703b)), BigInteger.valueOf(this.f76706e).multiply(BigInteger.valueOf(1000000L)), RoundingMode.CEILING).longValue();
            }
            return -1L;
        }

        @Override
        public i k(j jVar, long j10) {
            List list = this.f76707f;
            long j11 = list != null ? ((d) list.get((int) (j10 - this.f76705d))).f76715a : (j10 - this.f76705d) * this.f76706e;
            n nVar = this.f76713k;
            p1 p1Var = jVar.f76689b;
            return new i(nVar.a(p1Var.f24890a, j10, p1Var.f24897h, j11), 0L, -1L);
        }
    }

    public static final class d {

        final long f76715a;

        final long f76716b;

        public d(long j10, long j11) {
            this.f76715a = j10;
            this.f76716b = j11;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f76715a == dVar.f76715a && this.f76716b == dVar.f76716b;
        }

        public int hashCode() {
            return (((int) this.f76715a) * 31) + ((int) this.f76716b);
        }
    }

    public k(i iVar, long j10, long j11) {
        this.f76702a = iVar;
        this.f76703b = j10;
        this.f76704c = j11;
    }

    public i a(j jVar) {
        return this.f76702a;
    }

    public long b() {
        return p0.N0(this.f76704c, 1000000L, this.f76703b);
    }

    public static class e extends k {

        final long f76717d;

        final long f76718e;

        public e(i iVar, long j10, long j11, long j12, long j13) {
            super(iVar, j10, j11);
            this.f76717d = j12;
            this.f76718e = j13;
        }

        public i c() {
            long j10 = this.f76718e;
            if (j10 <= 0) {
                return null;
            }
            return new i(null, this.f76717d, j10);
        }

        public e() {
            this(null, 1L, 0L, 0L, 0L);
        }
    }
}
