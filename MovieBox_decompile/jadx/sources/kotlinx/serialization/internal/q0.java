package kotlinx.serialization.internal;

import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;

public final class q0 extends r1 implements kotlinx.serialization.b {

    public static final q0 f65217c = new q0();

    private q0() {
        super(ry.a.D(IntCompanionObject.f64317a));
    }

    @Override
    public int e(int[] iArr) {
        Intrinsics.h(iArr, "<this>");
        return iArr.length;
    }

    @Override
    public int[] r() {
        return new int[0];
    }

    @Override
    public void h(sy.c decoder, int i10, p0 builder, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        builder.e(decoder.i(getDescriptor(), i10));
    }

    @Override
    public p0 k(int[] iArr) {
        Intrinsics.h(iArr, "<this>");
        return new p0(iArr);
    }

    @Override
    public void u(sy.d encoder, int[] content, int i10) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.w(getDescriptor(), i11, content[i11]);
        }
    }
}
