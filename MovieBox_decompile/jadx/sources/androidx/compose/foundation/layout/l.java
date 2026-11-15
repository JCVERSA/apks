package androidx.compose.foundation.layout;

import kotlin.ranges.RangesKt;

public final class l implements k {

    public static final l f2551a = new l();

    private l() {
    }

    @Override
    public androidx.compose.ui.f a(androidx.compose.ui.f fVar, float f10, boolean z10) {
        if (f10 > 0.0d) {
            return fVar.e(new LayoutWeightElement(RangesKt.g(f10, Float.MAX_VALUE), z10));
        }
        throw new IllegalArgumentException(("invalid weight " + f10 + "; must be greater than zero").toString());
    }

    @Override
    public androidx.compose.ui.f b(androidx.compose.ui.f fVar, androidx.compose.ui.b.InterfaceC0036b interfaceC0036b) {
        return fVar.e(new HorizontalAlignElement(interfaceC0036b));
    }
}
