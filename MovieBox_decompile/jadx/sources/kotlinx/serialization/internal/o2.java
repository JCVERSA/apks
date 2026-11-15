package kotlinx.serialization.internal;

import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.internal.Intrinsics;

public final class o2 extends r1 implements kotlinx.serialization.b {

    public static final o2 f65209c = new o2();

    private o2() {
        super(ry.a.w(UShort.INSTANCE));
    }

    @Override
    public int e(Object obj) {
        return v(((UShortArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String());
    }

    @Override
    public Object k(Object obj) {
        return y(((UShortArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String());
    }

    @Override
    public Object r() {
        return UShortArray.a(w());
    }

    @Override
    public void u(sy.d dVar, Object obj, int i10) {
        z(dVar, ((UShortArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String(), i10);
    }

    protected int v(short[] collectionSize) {
        Intrinsics.h(collectionSize, "$this$collectionSize");
        return UShortArray.o(collectionSize);
    }

    protected short[] w() {
        return UShortArray.c(0);
    }

    @Override
    public void h(sy.c decoder, int i10, n2 builder, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        builder.e(UShort.b(decoder.r(getDescriptor(), i10).s()));
    }

    protected n2 y(short[] toBuilder) {
        Intrinsics.h(toBuilder, "$this$toBuilder");
        return new n2(toBuilder, null);
    }

    protected void z(sy.d encoder, short[] content, int i10) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.f(getDescriptor(), i11).q(UShortArray.m(content, i11));
        }
    }
}
