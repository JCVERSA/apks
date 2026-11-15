package kotlinx.serialization.internal;

import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.Intrinsics;

public final class b0 extends r1 implements kotlinx.serialization.b {

    public static final b0 f65140c = new b0();

    private b0() {
        super(ry.a.B(DoubleCompanionObject.f64314a));
    }

    @Override
    public int e(double[] dArr) {
        Intrinsics.h(dArr, "<this>");
        return dArr.length;
    }

    @Override
    public double[] r() {
        return new double[0];
    }

    @Override
    public void h(sy.c decoder, int i10, a0 builder, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        builder.e(decoder.F(getDescriptor(), i10));
    }

    @Override
    public a0 k(double[] dArr) {
        Intrinsics.h(dArr, "<this>");
        return new a0(dArr);
    }

    @Override
    public void u(sy.d encoder, double[] content, int i10) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.E(getDescriptor(), i11, content[i11]);
        }
    }
}
