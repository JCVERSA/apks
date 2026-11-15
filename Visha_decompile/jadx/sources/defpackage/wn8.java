package defpackage;

import java.util.NoSuchElementException;
import kotlin.random.Random;

public abstract class wn8 extends vn8 {
    public static float c(float f, float f2) {
        return f < f2 ? f2 : f;
    }

    public static int d(int i, int i2) {
        return i < i2 ? i2 : i;
    }

    public static long e(long j, long j2) {
        return j < j2 ? j2 : j;
    }

    public static float f(float f, float f2) {
        return f > f2 ? f2 : f;
    }

    public static int g(int i, int i2) {
        return i > i2 ? i2 : i;
    }

    public static long h(long j, long j2) {
        return j > j2 ? j2 : j;
    }

    public static double i(double d, double d2, double d3) {
        if (d2 <= d3) {
            if (d < d2) {
                return d2;
            }
            return d > d3 ? d3 : d;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d3 + " is less than minimum " + d2 + '.');
    }

    public static float j(float f, float f2, float f3) {
        if (f2 <= f3) {
            if (f < f2) {
                return f2;
            }
            return f > f3 ? f3 : f;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f3 + " is less than minimum " + f2 + '.');
    }

    public static int k(int i, int i2, int i3) {
        if (i2 <= i3) {
            if (i < i2) {
                return i2;
            }
            return i > i3 ? i3 : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i3 + " is less than minimum " + i2 + '.');
    }

    public static long l(long j, long j2, long j3) {
        if (j2 <= j3) {
            if (j < j2) {
                return j2;
            }
            return j > j3 ? j3 : j;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j3 + " is less than minimum " + j2 + '.');
    }

    public static s15 m(int i, int i2) {
        return s15.e.a(i, i2, -1);
    }

    public static int n(u15 u15Var, Random random) {
        y45.j(u15Var, "<this>");
        y45.j(random, "random");
        try {
            return qn8.f(random, u15Var);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    public static s15 o(s15 s15Var) {
        y45.j(s15Var, "<this>");
        return s15.e.a(s15Var.c(), s15Var.b(), -s15Var.f());
    }

    public static s15 p(s15 s15Var, int i) {
        y45.j(s15Var, "<this>");
        vn8.a(i > 0, Integer.valueOf(i));
        s15.a aVar = s15.e;
        int iB = s15Var.b();
        int iC = s15Var.c();
        if (s15Var.f() <= 0) {
            i = -i;
        }
        return aVar.a(iB, iC, i);
    }

    public static u15 q(int i, int i2) {
        return i2 <= Integer.MIN_VALUE ? u15.f.a() : new u15(i, i2 - 1);
    }
}
