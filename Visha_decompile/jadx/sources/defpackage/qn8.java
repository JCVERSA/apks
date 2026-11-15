package defpackage;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import kotlin.random.Random;

public abstract class qn8 {
    public static final String a(Object obj, Object obj2) {
        y45.j(obj, "from");
        y45.j(obj2, "until");
        return "Random range is empty: [" + obj + ", " + obj2 + ").";
    }

    public static final void b(double d, double d2) {
        if (d2 <= d) {
            throw new IllegalArgumentException(a(Double.valueOf(d), Double.valueOf(d2)).toString());
        }
    }

    public static final void c(int i, int i2) {
        if (i2 <= i) {
            throw new IllegalArgumentException(a(Integer.valueOf(i), Integer.valueOf(i2)).toString());
        }
    }

    public static final void d(long j, long j2) {
        if (j2 <= j) {
            throw new IllegalArgumentException(a(Long.valueOf(j), Long.valueOf(j2)).toString());
        }
    }

    public static final int e(int i) {
        return 31 - Integer.numberOfLeadingZeros(i);
    }

    public static final int f(Random random, u15 u15Var) {
        y45.j(random, "<this>");
        y45.j(u15Var, SessionDescription.ATTR_RANGE);
        if (!u15Var.isEmpty()) {
            if (u15Var.c() < Integer.MAX_VALUE) {
                return random.nextInt(u15Var.b(), u15Var.c() + 1);
            }
            return u15Var.b() > Integer.MIN_VALUE ? random.nextInt(u15Var.b() - 1, u15Var.c()) + 1 : random.nextInt();
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + u15Var);
    }

    public static final int g(int i, int i2) {
        return (i >>> (32 - i2)) & ((-i2) >> 31);
    }
}
