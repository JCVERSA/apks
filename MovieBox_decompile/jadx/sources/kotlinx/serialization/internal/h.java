package kotlinx.serialization.internal;

import kotlin.jvm.internal.BooleanCompanionObject;
import kotlin.jvm.internal.Intrinsics;

public final class h extends r1 implements kotlinx.serialization.b {

    public static final h f65176c = new h();

    private h() {
        super(ry.a.y(BooleanCompanionObject.f64302a));
    }

    @Override
    public int e(boolean[] zArr) {
        Intrinsics.h(zArr, "<this>");
        return zArr.length;
    }

    @Override
    public boolean[] r() {
        return new boolean[0];
    }

    @Override
    public void h(sy.c decoder, int i10, g builder, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        builder.e(decoder.C(getDescriptor(), i10));
    }

    @Override
    public g k(boolean[] zArr) {
        Intrinsics.h(zArr, "<this>");
        return new g(zArr);
    }

    @Override
    public void u(sy.d encoder, boolean[] content, int i10) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.x(getDescriptor(), i11, content[i11]);
        }
    }
}
