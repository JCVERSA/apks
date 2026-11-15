package kotlinx.serialization.internal;

import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.jvm.internal.Intrinsics;

public final class i2 extends r1 implements kotlinx.serialization.b {

    public static final i2 f65186c = new i2();

    private i2() {
        super(ry.a.u(UInt.INSTANCE));
    }

    @Override
    public int e(Object obj) {
        return v(((UIntArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String());
    }

    @Override
    public Object k(Object obj) {
        return y(((UIntArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String());
    }

    @Override
    public Object r() {
        return UIntArray.a(w());
    }

    @Override
    public void u(sy.d dVar, Object obj, int i10) {
        z(dVar, ((UIntArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String(), i10);
    }

    protected int v(int[] collectionSize) {
        Intrinsics.h(collectionSize, "$this$collectionSize");
        return UIntArray.o(collectionSize);
    }

    protected int[] w() {
        return UIntArray.c(0);
    }

    @Override
    public void h(sy.c decoder, int i10, h2 builder, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        builder.e(UInt.b(decoder.r(getDescriptor(), i10).h()));
    }

    protected h2 y(int[] toBuilder) {
        Intrinsics.h(toBuilder, "$this$toBuilder");
        return new h2(toBuilder, null);
    }

    protected void z(sy.d encoder, int[] content, int i10) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.f(getDescriptor(), i11).B(UIntArray.m(content, i11));
        }
    }
}
