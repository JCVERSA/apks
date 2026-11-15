package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

public final class d extends y0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(kotlinx.serialization.descriptors.f elementDesc) {
        super(elementDesc, null);
        Intrinsics.h(elementDesc, "elementDesc");
    }

    @Override
    public String i() {
        return "kotlin.Array";
    }
}
