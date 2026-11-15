package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.random.RandomKt;

public class e extends d {
    public static float d(float f10, float f11) {
        return f10 < f11 ? f11 : f10;
    }

    public static int e(int i10, int i11) {
        return i10 < i11 ? i11 : i10;
    }

    public static long f(long j10, long j11) {
        return j10 < j11 ? j11 : j10;
    }

    public static float g(float f10, float f11) {
        return f10 > f11 ? f11 : f10;
    }

    public static int h(int i10, int i11) {
        return i10 > i11 ? i11 : i10;
    }

    public static long i(long j10, long j11) {
        return j10 > j11 ? j11 : j10;
    }

    public static double j(double d10, double d11, double d12) {
        if (d11 <= d12) {
            if (d10 < d11) {
                return d11;
            }
            return d10 > d12 ? d12 : d10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d12 + " is less than minimum " + d11 + '.');
    }

    public static float k(float f10, float f11, float f12) {
        if (f11 <= f12) {
            if (f10 < f11) {
                return f11;
            }
            return f10 > f12 ? f12 : f10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f12 + " is less than minimum " + f11 + '.');
    }

    public static int l(int i10, int i11, int i12) {
        if (i11 <= i12) {
            if (i10 < i11) {
                return i11;
            }
            return i10 > i12 ? i12 : i10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i12 + " is less than minimum " + i11 + '.');
    }

    public static long m(long j10, long j11, long j12) {
        if (j11 <= j12) {
            if (j10 < j11) {
                return j11;
            }
            return j10 > j12 ? j12 : j10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j12 + " is less than minimum " + j11 + '.');
    }

    public static Comparable n(Comparable comparable, ClosedFloatingPointRange range) {
        Intrinsics.h(comparable, "<this>");
        Intrinsics.h(range, "range");
        if (!range.isEmpty()) {
            if (!range.c(comparable, range.j()) || range.c(range.j(), comparable)) {
                return (!range.c(range.e(), comparable) || range.c(comparable, range.e())) ? comparable : range.e();
            }
            return range.j();
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }

    public static IntProgression o(int i10, int i11) {
        return IntProgression.INSTANCE.a(i10, i11, -1);
    }

    public static int p(IntRange intRange, Random random) {
        Intrinsics.h(intRange, "<this>");
        Intrinsics.h(random, "random");
        try {
            return RandomKt.f(random, intRange);
        } catch (IllegalArgumentException e10) {
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    public static IntProgression q(IntProgression intProgression) {
        Intrinsics.h(intProgression, "<this>");
        return IntProgression.INSTANCE.a(intProgression.getLast(), intProgression.getFirst(), -intProgression.getStep());
    }

    public static IntProgression r(IntProgression intProgression, int i10) {
        Intrinsics.h(intProgression, "<this>");
        d.a(i10 > 0, Integer.valueOf(i10));
        IntProgression.Companion companion = IntProgression.INSTANCE;
        int iF = intProgression.getFirst();
        int i11 = intProgression.getLast();
        if (intProgression.getStep() <= 0) {
            i10 = -i10;
        }
        return companion.a(iF, i11, i10);
    }

    public static IntRange s(int i10, int i11) {
        return i11 <= Integer.MIN_VALUE ? IntRange.INSTANCE.a() : new IntRange(i10, i11 - 1);
    }
}
