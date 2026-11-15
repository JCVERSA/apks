package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.ShortCompanionObject;

public final class z1 extends r1 implements kotlinx.serialization.b {

    public static final z1 f65254c = new z1();

    private z1() {
        super(ry.a.F(ShortCompanionObject.f64323a));
    }

    @Override
    public int e(short[] sArr) {
        Intrinsics.h(sArr, "<this>");
        return sArr.length;
    }

    @Override
    public short[] r() {
        return new short[0];
    }

    @Override
    public void h(sy.c decoder, int i10, y1 builder, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        builder.e(decoder.E(getDescriptor(), i10));
    }

    @Override
    public y1 k(short[] sArr) {
        Intrinsics.h(sArr, "<this>");
        return new y1(sArr);
    }

    @Override
    public void u(sy.d encoder, short[] content, int i10) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.D(getDescriptor(), i11, content[i11]);
        }
    }
}
