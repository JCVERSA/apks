package androidx.compose.ui.node;

public abstract class r0 {
    public static final androidx.compose.ui.f.c b(f fVar, int i10, int i11) {
        androidx.compose.ui.f.c cVarA1 = fVar.getNode().a1();
        if (cVarA1 == null || (cVarA1.Z0() & i10) == 0) {
            return null;
        }
        while (cVarA1 != null) {
            int iE1 = cVarA1.e1();
            if ((iE1 & i11) != 0) {
                return null;
            }
            if ((iE1 & i10) != 0) {
                return cVarA1;
            }
            cVarA1 = cVarA1.a1();
        }
        return null;
    }
}
