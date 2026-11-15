package kotlinx.serialization.internal;

import kotlin.jvm.internal.CharCompanionObject;
import kotlin.jvm.internal.Intrinsics;

public final class q extends r1 implements kotlinx.serialization.b {

    public static final q f65216c = new q();

    private q() {
        super(ry.a.A(CharCompanionObject.f64305a));
    }

    @Override
    public int e(char[] cArr) {
        Intrinsics.h(cArr, "<this>");
        return cArr.length;
    }

    @Override
    public char[] r() {
        return new char[0];
    }

    @Override
    public void h(sy.c decoder, int i10, p builder, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        builder.e(decoder.A(getDescriptor(), i10));
    }

    @Override
    public p k(char[] cArr) {
        Intrinsics.h(cArr, "<this>");
        return new p(cArr);
    }

    @Override
    public void u(sy.d encoder, char[] content, int i10) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.n(getDescriptor(), i11, content[i11]);
        }
    }
}
