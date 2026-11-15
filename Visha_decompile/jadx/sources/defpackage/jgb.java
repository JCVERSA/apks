package defpackage;

import kotlin.text.a;

public abstract class jgb {
    public static final int a(int i, int i2) {
        return y45.l(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE);
    }

    public static final int b(long j, long j2) {
        return y45.m(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE);
    }

    public static final String c(long j, int i) {
        if (j >= 0) {
            String string = Long.toString(j, a.a(i));
            y45.i(string, "toString(...)");
            return string;
        }
        long j2 = i;
        long j3 = ((j >>> 1) / j2) << 1;
        long j4 = j - (j3 * j2);
        if (j4 >= j2) {
            j4 -= j2;
            j3++;
        }
        StringBuilder sb = new StringBuilder();
        String string2 = Long.toString(j3, a.a(i));
        y45.i(string2, "toString(...)");
        sb.append(string2);
        String string3 = Long.toString(j4, a.a(i));
        y45.i(string3, "toString(...)");
        sb.append(string3);
        return sb.toString();
    }
}
