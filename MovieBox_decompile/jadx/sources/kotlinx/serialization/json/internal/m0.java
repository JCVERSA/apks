package kotlinx.serialization.json.internal;

import java.util.Set;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;

public abstract class m0 {

    private static final Set f65367a = SetsKt.j(ry.a.u(UInt.INSTANCE).getDescriptor(), ry.a.v(ULong.INSTANCE).getDescriptor(), ry.a.t(UByte.INSTANCE).getDescriptor(), ry.a.w(UShort.INSTANCE).getDescriptor());

    public static final boolean a(kotlinx.serialization.descriptors.f fVar) {
        Intrinsics.h(fVar, "<this>");
        return fVar.isInline() && f65367a.contains(fVar);
    }
}
