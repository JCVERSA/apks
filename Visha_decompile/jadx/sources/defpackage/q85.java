package defpackage;

import kotlin.reflect.jvm.internal.impl.types.TypeUsage;

public abstract class q85 {
    public static final p85 a(TypeUsage typeUsage, boolean z, boolean z2, hcb hcbVar) {
        y45.j(typeUsage, "<this>");
        return new p85(typeUsage, null, z2, z, hcbVar != null ? xe9.d(hcbVar) : null, null, 34, null);
    }

    public static p85 b(TypeUsage typeUsage, boolean z, boolean z2, hcb hcbVar, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        if ((i & 4) != 0) {
            hcbVar = null;
        }
        return a(typeUsage, z, z2, hcbVar);
    }
}
