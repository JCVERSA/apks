package kotlin.ranges;

import kotlin.jvm.internal.Intrinsics;

public class d {
    public static final void a(boolean z10, Number step) {
        Intrinsics.h(step, "step");
        if (z10) {
            return;
        }
        throw new IllegalArgumentException("Step must be positive, was: " + step + '.');
    }

    public static ClosedFloatingPointRange b(float f10, float f11) {
        return new b(f10, f11);
    }

    public static OpenEndRange c(float f10, float f11) {
        return new c(f10, f11);
    }
}
