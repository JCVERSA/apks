package androidx.compose.foundation.layout;

import kotlin.ranges.RangesKt;

public final class d0 implements c0 {

    public static final d0 f2540a = new d0();

    private d0() {
    }

    @Override
    public androidx.compose.ui.f a(androidx.compose.ui.f fVar, float f10, boolean z10) {
        if (f10 > 0.0d) {
            return fVar.e(new LayoutWeightElement(RangesKt.g(f10, Float.MAX_VALUE), z10));
        }
        throw new IllegalArgumentException(("invalid weight " + f10 + "; must be greater than zero").toString());
    }
}
