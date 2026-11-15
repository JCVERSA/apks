package kotlinx.serialization.json;

import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.UStringsKt;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;

final class p implements kotlinx.serialization.b {

    public static final p f65386a = new p();

    private static final kotlinx.serialization.descriptors.f f65387b = SerialDescriptorsKt.a("kotlinx.serialization.json.JsonLiteral", kotlinx.serialization.descriptors.e.i.f65092a);

    private p() {
    }

    @Override
    public o deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        h hVarG = k.d(decoder).g();
        if (hVarG instanceof o) {
            return (o) hVarG;
        }
        throw kotlinx.serialization.json.internal.w.f(-1, "Unexpected JSON element, expected JsonLiteral, had " + Reflection.b(hVarG.getClass()), hVarG.toString());
    }

    @Override
    public void serialize(sy.f encoder, o value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        k.h(encoder);
        if (value.c()) {
            encoder.G(value.a());
            return;
        }
        Long lN = j.n(value);
        if (lN != null) {
            encoder.m(lN.longValue());
            return;
        }
        ULong uLongH = UStringsKt.h(value.a());
        if (uLongH != null) {
            encoder.l(ry.a.v(ULong.INSTANCE).getDescriptor()).m(uLongH.getData());
            return;
        }
        Double dH = j.h(value);
        if (dH != null) {
            encoder.g(dH.doubleValue());
            return;
        }
        Boolean boolE = j.e(value);
        if (boolE != null) {
            encoder.r(boolE.booleanValue());
        } else {
            encoder.G(value.a());
        }
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f65387b;
    }
}
