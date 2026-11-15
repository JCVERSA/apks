package defpackage;

import java.util.Collection;
import java.util.Iterator;
import kotlin.time.DurationUnit;
import org.slf4j.Marker;

public abstract class v33 {
    public static final long i(long j, int i) {
        return t33.i((j << 1) + ((long) i));
    }

    public static final long j(long j) {
        return t33.i((j << 1) + 1);
    }

    public static final long k(long j) {
        return (-4611686018426L > j || j >= 4611686018427L) ? j(wn8.l(j, -4611686018427387903L, 4611686018427387903L)) : l(n(j));
    }

    public static final long l(long j) {
        return t33.i(j << 1);
    }

    public static final long m(long j) {
        return (-4611686018426999999L > j || j >= 4611686018427000000L) ? j(o(j)) : l(j);
    }

    public static final long n(long j) {
        return j * ((long) 1000000);
    }

    public static final long o(long j) {
        return j / ((long) 1000000);
    }

    public static final long p(String str, boolean z) {
        char cCharAt;
        char cCharAt2;
        char cCharAt3;
        int length = str.length();
        if (length == 0) {
            throw new IllegalArgumentException("The string is empty");
        }
        t33.a aVar = t33.c;
        long jB = aVar.b();
        char cCharAt4 = str.charAt(0);
        boolean z2 = true;
        int length2 = (cCharAt4 == '+' || cCharAt4 == '-') ? 1 : 0;
        boolean z3 = length2 > 0;
        boolean z4 = z3 && j1a.R0(str, '-', false, 2, null);
        if (length <= length2) {
            throw new IllegalArgumentException("No components");
        }
        char c = ':';
        char c2 = '0';
        if (str.charAt(length2) == 'P') {
            int i = length2 + 1;
            if (i == length) {
                throw new IllegalArgumentException();
            }
            DurationUnit durationUnit = null;
            boolean z5 = false;
            while (i < length) {
                if (str.charAt(i) != 'T') {
                    int i2 = i;
                    while (i2 < str.length() && ((c2 <= (cCharAt3 = str.charAt(i2)) && cCharAt3 < c) || j1a.W("+-.", cCharAt3, false, 2, null))) {
                        i2++;
                        c = ':';
                        c2 = '0';
                    }
                    y45.h(str, "null cannot be cast to non-null type java.lang.String");
                    String strSubstring = str.substring(i, i2);
                    y45.i(strSubstring, "substring(...)");
                    if (strSubstring.length() == 0) {
                        throw new IllegalArgumentException();
                    }
                    int length3 = i + strSubstring.length();
                    if (length3 < 0 || length3 >= str.length()) {
                        throw new IllegalArgumentException("Missing unit for value " + strSubstring);
                    }
                    char cCharAt5 = str.charAt(length3);
                    int i3 = length3 + 1;
                    DurationUnit durationUnitE = y33.e(cCharAt5, z5);
                    if (durationUnit != null && durationUnit.compareTo(durationUnitE) <= 0) {
                        throw new IllegalArgumentException("Unexpected order of duration components");
                    }
                    int iL0 = j1a.l0(strSubstring, '.', 0, false, 6, null);
                    if (durationUnitE != DurationUnit.SECONDS || iL0 <= 0) {
                        jB = t33.C(jB, t(q(strSubstring), durationUnitE));
                    } else {
                        y45.h(strSubstring, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring2 = strSubstring.substring(0, iL0);
                        y45.i(strSubstring2, "substring(...)");
                        long jC = t33.C(jB, t(q(strSubstring2), durationUnitE));
                        y45.h(strSubstring, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring3 = strSubstring.substring(iL0);
                        y45.i(strSubstring3, "substring(...)");
                        jB = t33.C(jC, r(Double.parseDouble(strSubstring3), durationUnitE));
                    }
                    i = i3;
                    durationUnit = durationUnitE;
                    c = ':';
                    c2 = '0';
                    z2 = true;
                } else {
                    if (z5 || (i = i + 1) == length) {
                        throw new IllegalArgumentException();
                    }
                    z5 = z2;
                }
            }
        } else {
            if (z) {
                throw new IllegalArgumentException();
            }
            String str2 = "Unexpected order of duration components";
            long jC2 = jB;
            if (g1a.H(str, length2, "Infinity", 0, Math.max(length - length2, 8), true)) {
                jB = aVar.a();
            } else {
                boolean z6 = !z3;
                if (z3 && str.charAt(length2) == '(' && l1a.q1(str) == ')') {
                    length2++;
                    length--;
                    if (length2 == length) {
                        throw new IllegalArgumentException("No components");
                    }
                    z6 = true;
                }
                DurationUnit durationUnit2 = null;
                boolean z7 = false;
                while (length2 < length) {
                    if (z7 && z6) {
                        while (length2 < str.length() && str.charAt(length2) == ' ') {
                            length2++;
                        }
                    }
                    int i4 = length2;
                    while (i4 < str.length() && (('0' <= (cCharAt2 = str.charAt(i4)) && cCharAt2 < ':') || cCharAt2 == '.')) {
                        i4++;
                    }
                    y45.h(str, "null cannot be cast to non-null type java.lang.String");
                    String strSubstring4 = str.substring(length2, i4);
                    y45.i(strSubstring4, "substring(...)");
                    if (strSubstring4.length() == 0) {
                        throw new IllegalArgumentException();
                    }
                    int length4 = length2 + strSubstring4.length();
                    int i5 = length4;
                    while (i5 < str.length() && 'a' <= (cCharAt = str.charAt(i5)) && cCharAt < '{') {
                        i5++;
                    }
                    y45.h(str, "null cannot be cast to non-null type java.lang.String");
                    String strSubstring5 = str.substring(length4, i5);
                    y45.i(strSubstring5, "substring(...)");
                    length2 = length4 + strSubstring5.length();
                    DurationUnit durationUnitF = y33.f(strSubstring5);
                    if (durationUnit2 != null && durationUnit2.compareTo(durationUnitF) <= 0) {
                        throw new IllegalArgumentException(str2);
                    }
                    String str3 = str2;
                    int iL1 = j1a.l0(strSubstring4, '.', 0, false, 6, null);
                    if (iL1 > 0) {
                        y45.h(strSubstring4, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring6 = strSubstring4.substring(0, iL1);
                        y45.i(strSubstring6, "substring(...)");
                        long jC3 = t33.C(jC2, t(Long.parseLong(strSubstring6), durationUnitF));
                        y45.h(strSubstring4, "null cannot be cast to non-null type java.lang.String");
                        String strSubstring7 = strSubstring4.substring(iL1);
                        y45.i(strSubstring7, "substring(...)");
                        jC2 = t33.C(jC3, r(Double.parseDouble(strSubstring7), durationUnitF));
                        if (length2 < length) {
                            length2 = length2;
                            throw new IllegalArgumentException("Fractional component must be last");
                        }
                        length2 = length2;
                    } else {
                        jC2 = t33.C(jC2, t(Long.parseLong(strSubstring4), durationUnitF));
                    }
                    str2 = str3;
                    durationUnit2 = durationUnitF;
                    z7 = true;
                }
                jB = jC2;
            }
        }
        return z4 ? t33.H(jB) : jB;
    }

    public static final long q(String str) {
        int length = str.length();
        int i = (length <= 0 || !j1a.W("+-", str.charAt(0), false, 2, null)) ? 0 : 1;
        if (length - i > 16) {
            Iterable u15Var = new u15(i, j1a.g0(str));
            if (!(u15Var instanceof Collection) || !((Collection) u15Var).isEmpty()) {
                Iterator it = u15Var.iterator();
                while (true) {
                    if (it.hasNext()) {
                        char cCharAt = str.charAt(((q15) it).nextInt());
                        if ('0' > cCharAt || cCharAt >= ':') {
                        }
                    }
                }
            }
            return str.charAt(0) == '-' ? Long.MIN_VALUE : Long.MAX_VALUE;
        }
        if (g1a.R(str, Marker.ANY_NON_NULL_MARKER, false, 2, null)) {
            str = l1a.n1(str, 1);
        }
        return Long.parseLong(str);
    }

    public static final long r(double d, DurationUnit durationUnit) {
        y45.j(durationUnit, "unit");
        double dA = x33.a(d, durationUnit, DurationUnit.NANOSECONDS);
        if (Double.isNaN(dA)) {
            throw new IllegalArgumentException("Duration value cannot be NaN.");
        }
        long jD = s86.d(dA);
        return (-4611686018426999999L > jD || jD >= 4611686018427000000L) ? k(s86.d(x33.a(d, durationUnit, DurationUnit.MILLISECONDS))) : l(jD);
    }

    public static final long s(int i, DurationUnit durationUnit) {
        y45.j(durationUnit, "unit");
        return durationUnit.compareTo(DurationUnit.SECONDS) <= 0 ? l(x33.c(i, durationUnit, DurationUnit.NANOSECONDS)) : t(i, durationUnit);
    }

    public static final long t(long j, DurationUnit durationUnit) {
        y45.j(durationUnit, "unit");
        DurationUnit durationUnit2 = DurationUnit.NANOSECONDS;
        long jC = x33.c(4611686018426999999L, durationUnit2, durationUnit);
        return ((-jC) > j || j > jC) ? j(wn8.l(x33.b(j, durationUnit, DurationUnit.MILLISECONDS), -4611686018427387903L, 4611686018427387903L)) : l(x33.c(j, durationUnit, durationUnit2));
    }
}
