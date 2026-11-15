package kotlinx.serialization.internal;

import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;

public final class k extends r1 implements kotlinx.serialization.b {

    public static final k f65191c = new k();

    private k() {
        super(ry.a.z(ByteCompanionObject.f64303a));
    }

    @Override
    public int e(byte[] bArr) {
        Intrinsics.h(bArr, "<this>");
        return bArr.length;
    }

    @Override
    public byte[] r() {
        return new byte[0];
    }

    @Override
    public void h(sy.c decoder, int i10, j builder, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        builder.e(decoder.B(getDescriptor(), i10));
    }

    @Override
    public j k(byte[] bArr) {
        Intrinsics.h(bArr, "<this>");
        return new j(bArr);
    }

    @Override
    public void u(sy.d encoder, byte[] content, int i10) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.p(getDescriptor(), i11, content[i11]);
        }
    }
}
