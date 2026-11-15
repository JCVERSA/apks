package kotlinx.serialization.internal;

import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;

public final class g0 extends r1 implements kotlinx.serialization.b {

    public static final g0 f65171c = new g0();

    private g0() {
        super(ry.a.C(FloatCompanionObject.f64316a));
    }

    @Override
    public int e(float[] fArr) {
        Intrinsics.h(fArr, "<this>");
        return fArr.length;
    }

    @Override
    public float[] r() {
        return new float[0];
    }

    @Override
    public void h(sy.c decoder, int i10, f0 builder, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        builder.e(decoder.u(getDescriptor(), i10));
    }

    @Override
    public f0 k(float[] fArr) {
        Intrinsics.h(fArr, "<this>");
        return new f0(fArr);
    }

    @Override
    public void u(sy.d encoder, float[] content, int i10) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.s(getDescriptor(), i11, content[i11]);
        }
    }
}
