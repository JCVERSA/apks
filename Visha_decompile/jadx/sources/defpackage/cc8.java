package defpackage;

import java.util.Arrays;
import java.util.Iterator;
import kotlinx.serialization.descriptors.a;

public abstract class cc8 {
    public static final int a(a aVar, a[] aVarArr) {
        y45.j(aVar, "<this>");
        y45.j(aVarArr, "typeParams");
        int iHashCode = (aVar.h().hashCode() * 31) + Arrays.hashCode(aVarArr);
        Iterable iterableA = gd9.a(aVar);
        Iterator it = iterableA.iterator();
        int iHashCode2 = 1;
        int i = 1;
        while (true) {
            int iHashCode3 = 0;
            if (!it.hasNext()) {
                break;
            }
            int i2 = i * 31;
            String strH = ((a) it.next()).h();
            if (strH != null) {
                iHashCode3 = strH.hashCode();
            }
            i = i2 + iHashCode3;
        }
        Iterator it2 = iterableA.iterator();
        while (it2.hasNext()) {
            int i3 = iHashCode2 * 31;
            id9 kind = ((a) it2.next()).getKind();
            iHashCode2 = i3 + (kind != null ? kind.hashCode() : 0);
        }
        return (((iHashCode * 31) + i) * 31) + iHashCode2;
    }
}
