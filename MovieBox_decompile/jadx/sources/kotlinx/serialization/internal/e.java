package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

public final class e extends y0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(kotlinx.serialization.descriptors.f elementDesc) {
        super(elementDesc, null);
        Intrinsics.h(elementDesc, "elementDesc");
    }

    @Override
    public String i() {
        return "kotlin.collections.ArrayList";
    }
}
