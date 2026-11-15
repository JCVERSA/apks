package androidx.compose.ui.layout;

public abstract class k {
    public static y.i a(l lVar, l lVar2, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: localBoundingBoxOf");
        }
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return lVar.O(lVar2, z10);
    }
}
