package defpackage;

import androidx.exifinterface.media.ExifInterface;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.time.DurationUnit;
import okhttp3.internal.http2.Http2Connection;
import org.mozilla.javascript.ES6Iterator;

public final class t33 implements Comparable {
    public static final a c = new a(null);
    public static final long d = i(0);
    public static final long e = v33.j(4611686018427387903L);
    public static final long f = v33.j(-4611686018427387903L);
    public final long b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return t33.e;
        }

        public final long b() {
            return t33.d;
        }

        public final long c(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            try {
                return v33.p(str, true);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid ISO duration string format: '" + str + "'.", e);
            }
        }

        public a() {
        }
    }

    public t33(long j) {
        this.b = j;
    }

    public static final boolean A(long j) {
        return j == e || j == f;
    }

    public static final boolean B(long j) {
        return j < 0;
    }

    public static final long C(long j, long j2) {
        if (A(j)) {
            if (x(j2) || (j2 ^ j) >= 0) {
                return j;
            }
            throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
        }
        if (A(j2)) {
            return j2;
        }
        if ((((int) j) & 1) != (((int) j2) & 1)) {
            return y(j) ? d(j, v(j), v(j2)) : d(j, v(j2), v(j));
        }
        long jV = v(j) + v(j2);
        return z(j) ? v33.m(jV) : v33.k(jV);
    }

    public static final int D(long j, DurationUnit durationUnit) {
        y45.j(durationUnit, "unit");
        return (int) wn8.l(F(j, durationUnit), -2147483648L, 2147483647L);
    }

    public static final String E(long j) {
        StringBuilder sb = new StringBuilder();
        if (B(j)) {
            sb.append('-');
        }
        sb.append("PT");
        long jK = k(j);
        long jN = n(jK);
        int iR = r(jK);
        int iT = t(jK);
        int iS = s(jK);
        if (A(j)) {
            jN = 9999999999999L;
        }
        boolean z = false;
        boolean z2 = jN != 0;
        boolean z3 = (iT == 0 && iS == 0) ? false : true;
        if (iR != 0 || (z3 && z2)) {
            z = true;
        }
        if (z2) {
            sb.append(jN);
            sb.append('H');
        }
        if (z) {
            sb.append(iR);
            sb.append('M');
        }
        if (z3 || (!z2 && !z)) {
            e(j, sb, iT, iS, 9, ExifInterface.LATITUDE_SOUTH, true);
        }
        return sb.toString();
    }

    public static final long F(long j, DurationUnit durationUnit) {
        y45.j(durationUnit, "unit");
        if (j == e) {
            return Long.MAX_VALUE;
        }
        if (j == f) {
            return Long.MIN_VALUE;
        }
        return x33.b(v(j), u(j), durationUnit);
    }

    public static String G(long j) {
        if (j == 0) {
            return "0s";
        }
        if (j == e) {
            return "Infinity";
        }
        if (j == f) {
            return "-Infinity";
        }
        boolean zB = B(j);
        StringBuilder sb = new StringBuilder();
        if (zB) {
            sb.append('-');
        }
        long jK = k(j);
        long jM = m(jK);
        int iL = l(jK);
        int iR = r(jK);
        int iT = t(jK);
        int iS = s(jK);
        int i = 0;
        boolean z = jM != 0;
        boolean z2 = iL != 0;
        boolean z3 = iR != 0;
        boolean z4 = (iT == 0 && iS == 0) ? false : true;
        if (z) {
            sb.append(jM);
            sb.append('d');
            i = 1;
        }
        if (z2 || (z && (z3 || z4))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iL);
            sb.append('h');
            i = i2;
        }
        if (z3 || (z4 && (z2 || z))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(iR);
            sb.append('m');
            i = i3;
        }
        if (z4) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            if (iT != 0 || z || z2 || z3) {
                e(j, sb, iT, iS, 9, "s", false);
            } else if (iS >= 1000000) {
                e(j, sb, iS / 1000000, iS % 1000000, 6, "ms", false);
            } else if (iS >= 1000) {
                e(j, sb, iS / 1000, iS % 1000, 3, "us", false);
            } else {
                sb.append(iS);
                sb.append("ns");
            }
            i = i4;
        }
        if (zB && i > 1) {
            sb.insert(1, '(').append(')');
        }
        return sb.toString();
    }

    public static final long H(long j) {
        return v33.i(-v(j), ((int) j) & 1);
    }

    public static final long d(long j, long j2, long j3) {
        long jO = v33.o(j3);
        long j4 = j2 + jO;
        if (-4611686018426L > j4 || j4 >= 4611686018427L) {
            return v33.j(wn8.l(j4, -4611686018427387903L, 4611686018427387903L));
        }
        return v33.l(v33.n(j4) + (j3 - v33.n(jO)));
    }

    public static final void e(long j, StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
        sb.append(i);
        if (i2 != 0) {
            sb.append('.');
            String strX0 = j1a.x0(String.valueOf(i2), i3, '0');
            int i4 = -1;
            int length = strX0.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i5 = length - 1;
                    if (strX0.charAt(length) != '0') {
                        i4 = length;
                        break;
                    } else if (i5 < 0) {
                        break;
                    } else {
                        length = i5;
                    }
                }
            }
            int i6 = i4 + 1;
            if (z || i6 >= 3) {
                sb.append((CharSequence) strX0, 0, ((i4 + 3) / 3) * 3);
                y45.i(sb, "append(...)");
            } else {
                sb.append((CharSequence) strX0, 0, i6);
                y45.i(sb, "append(...)");
            }
        }
        sb.append(str);
    }

    public static final t33 f(long j) {
        return new t33(j);
    }

    public static int h(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return y45.m(j, j2);
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return B(j) ? -i : i;
    }

    public static long i(long j) {
        if (u33.a()) {
            if (z(j)) {
                long jV = v(j);
                if (-4611686018426999999L > jV || jV >= 4611686018427000000L) {
                    throw new AssertionError(v(j) + " ns is out of nanoseconds range");
                }
            } else {
                long jV2 = v(j);
                if (-4611686018427387903L > jV2 || jV2 >= 4611686018427387904L) {
                    throw new AssertionError(v(j) + " ms is out of milliseconds range");
                }
                long jV3 = v(j);
                if (-4611686018426L <= jV3 && jV3 < 4611686018427L) {
                    throw new AssertionError(v(j) + " ms is denormalized");
                }
            }
        }
        return j;
    }

    public static boolean j(long j, Object obj) {
        return (obj instanceof t33) && j == ((t33) obj).I();
    }

    public static final long k(long j) {
        return B(j) ? H(j) : j;
    }

    public static final int l(long j) {
        if (A(j)) {
            return 0;
        }
        return (int) (n(j) % ((long) 24));
    }

    public static final long m(long j) {
        return F(j, DurationUnit.DAYS);
    }

    public static final long n(long j) {
        return F(j, DurationUnit.HOURS);
    }

    public static final long o(long j) {
        return F(j, DurationUnit.MINUTES);
    }

    public static final long p(long j) {
        long jV = v(j);
        if (z(j)) {
            return jV;
        }
        if (jV > 9223372036854L) {
            return Long.MAX_VALUE;
        }
        if (jV < -9223372036854L) {
            return Long.MIN_VALUE;
        }
        return v33.n(jV);
    }

    public static final long q(long j) {
        return F(j, DurationUnit.SECONDS);
    }

    public static final int r(long j) {
        if (A(j)) {
            return 0;
        }
        return (int) (o(j) % ((long) 60));
    }

    public static final int s(long j) {
        if (A(j)) {
            return 0;
        }
        return (int) (y(j) ? v33.n(v(j) % ((long) 1000)) : v(j) % ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS));
    }

    public static final int t(long j) {
        if (A(j)) {
            return 0;
        }
        return (int) (q(j) % ((long) 60));
    }

    public static final DurationUnit u(long j) {
        return z(j) ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
    }

    public static final long v(long j) {
        return j >> 1;
    }

    public static int w(long j) {
        return Long.hashCode(j);
    }

    public static final boolean x(long j) {
        return !A(j);
    }

    public static final boolean y(long j) {
        return (((int) j) & 1) == 1;
    }

    public static final boolean z(long j) {
        return (((int) j) & 1) == 0;
    }

    public final long I() {
        return this.b;
    }

    @Override
    public int compareTo(Object obj) {
        return g(((t33) obj).I());
    }

    public boolean equals(Object obj) {
        return j(this.b, obj);
    }

    public int g(long j) {
        return h(this.b, j);
    }

    public int hashCode() {
        return w(this.b);
    }

    public String toString() {
        return G(this.b);
    }
}
