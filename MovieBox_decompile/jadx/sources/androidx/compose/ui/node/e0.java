package androidx.compose.ui.node;

public abstract class e0 {
    public static final androidx.compose.ui.f.c b(f fVar) {
        int iA = s0.a(4);
        int iA2 = s0.a(2);
        androidx.compose.ui.f.c cVarA1 = fVar.getNode().a1();
        if (cVarA1 == null || (cVarA1.Z0() & iA) == 0) {
            return null;
        }
        while (cVarA1 != null && (cVarA1.e1() & iA2) == 0) {
            if ((cVarA1.e1() & iA) != 0) {
                return cVarA1;
            }
            cVarA1 = cVarA1.a1();
        }
        return null;
    }
}
