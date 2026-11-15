package kotlinx.serialization.internal;

import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.jvm.internal.Intrinsics;

public final class f2 extends r1 implements kotlinx.serialization.b {

    public static final f2 f65168c = new f2();

    private f2() {
        super(ry.a.t(UByte.INSTANCE));
    }

    @Override
    public int e(Object obj) {
        return v(((UByteArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String());
    }

    @Override
    public Object k(Object obj) {
        return y(((UByteArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String());
    }

    @Override
    public Object r() {
        return UByteArray.a(w());
    }

    @Override
    public void u(sy.d dVar, Object obj, int i10) {
        z(dVar, ((UByteArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String(), i10);
    }

    protected int v(byte[] collectionSize) {
        Intrinsics.h(collectionSize, "$this$collectionSize");
        return UByteArray.o(collectionSize);
    }

    protected byte[] w() {
        return UByteArray.c(0);
    }

    @Override
    public void h(sy.c decoder, int i10, e2 builder, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        builder.e(UByte.b(decoder.r(getDescriptor(), i10).H()));
    }

    protected e2 y(byte[] toBuilder) {
        Intrinsics.h(toBuilder, "$this$toBuilder");
        return new e2(toBuilder, null);
    }

    protected void z(sy.d encoder, byte[] content, int i10) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.f(getDescriptor(), i11).h(UByteArray.m(content, i11));
        }
    }
}
