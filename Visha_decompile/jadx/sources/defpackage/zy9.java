package defpackage;

import java.util.Set;
import kotlinx.serialization.descriptors.a;

public abstract class zy9 {
    public static final Set a = ye9.j(qn0.F(keb.c).getDescriptor(), qn0.G(qeb.c).getDescriptor(), qn0.E(zdb.c).getDescriptor(), qn0.H(bfb.c).getDescriptor());

    public static final boolean a(a aVar) {
        y45.j(aVar, "<this>");
        return aVar.isInline() && y45.e(aVar, la5.l());
    }

    public static final boolean b(a aVar) {
        y45.j(aVar, "<this>");
        return aVar.isInline() && a.contains(aVar);
    }
}
