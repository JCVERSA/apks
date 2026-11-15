package kotlinx.serialization.internal;

import java.util.Arrays;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

public abstract class n1 {
    public static final int a(kotlinx.serialization.descriptors.f fVar, kotlinx.serialization.descriptors.f[] typeParams) {
        Intrinsics.h(fVar, "<this>");
        Intrinsics.h(typeParams, "typeParams");
        int iHashCode = (fVar.i().hashCode() * 31) + Arrays.hashCode(typeParams);
        Iterable iterableA = kotlinx.serialization.descriptors.g.a(fVar);
        Iterator it = iterableA.iterator();
        int iHashCode2 = 1;
        int i10 = 1;
        while (true) {
            int iHashCode3 = 0;
            if (!it.hasNext()) {
                break;
            }
            int i11 = i10 * 31;
            String strI = ((kotlinx.serialization.descriptors.f) it.next()).i();
            if (strI != null) {
                iHashCode3 = strI.hashCode();
            }
            i10 = i11 + iHashCode3;
        }
        Iterator it2 = iterableA.iterator();
        while (it2.hasNext()) {
            int i12 = iHashCode2 * 31;
            kotlinx.serialization.descriptors.h hVarD = ((kotlinx.serialization.descriptors.f) it2.next()).d();
            iHashCode2 = i12 + (hVarD != null ? hVarD.hashCode() : 0);
        }
        return (((iHashCode * 31) + i10) * 31) + iHashCode2;
    }
}
