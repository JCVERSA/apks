package kotlinx.serialization.internal;

import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.jvm.internal.Intrinsics;

public final class l2 extends r1 implements kotlinx.serialization.b {

    public static final l2 f65198c = new l2();

    private l2() {
        super(ry.a.v(ULong.INSTANCE));
    }

    @Override
    public int e(Object obj) {
        return v(((ULongArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String());
    }

    @Override
    public Object k(Object obj) {
        return y(((ULongArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String());
    }

    @Override
    public Object r() {
        return ULongArray.a(w());
    }

    @Override
    public void u(sy.d dVar, Object obj, int i10) {
        z(dVar, ((ULongArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String(), i10);
    }

    protected int v(long[] collectionSize) {
        Intrinsics.h(collectionSize, "$this$collectionSize");
        return ULongArray.o(collectionSize);
    }

    protected long[] w() {
        return ULongArray.c(0);
    }

    @Override
    public void h(sy.c decoder, int i10, k2 builder, boolean z10) {
        Intrinsics.h(decoder, "decoder");
        Intrinsics.h(builder, "builder");
        builder.e(ULong.b(decoder.r(getDescriptor(), i10).l()));
    }

    protected k2 y(long[] toBuilder) {
        Intrinsics.h(toBuilder, "$this$toBuilder");
        return new k2(toBuilder, null);
    }

    protected void z(sy.d encoder, long[] content, int i10) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(content, "content");
        for (int i11 = 0; i11 < i10; i11++) {
            encoder.f(getDescriptor(), i11).m(ULongArray.m(content, i11));
        }
    }
}
