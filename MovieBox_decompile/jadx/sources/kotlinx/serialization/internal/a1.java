package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;

public final class a1 extends r1 implements kotlinx.serialization.b {

    public static final a1 f65137c = new a1();

    private a1() {
        super(ry.a.E(LongCompanionObject.f64318a));
    }

    @Override
    public int e(long[] jArr) {
        Intrinsics.h(jArr, "<this>");
        return jArr.length;
    }

    @Override
    public long[] r() {
        return new long[0];
    }

    @Override
    public void h(sy.c decoder, int i10, z0 builder, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        builder.e(decoder.f(getDescriptor(), i10));
    }

    @Override
    public z0 k(long[] jArr) {
        Intrinsics.h(jArr, "<this>");
        return new z0(jArr);
    }

    @Override
    public void u(sy.d encoder, long[] content, int i10) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.F(getDescriptor(), i11, content[i11]);
        }
    }
}
