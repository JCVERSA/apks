package androidx.compose.foundation.layout;

public abstract class b0 {
    public static androidx.compose.ui.f a(c0 c0Var, androidx.compose.ui.f fVar, float f10, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: weight");
        }
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return c0Var.a(fVar, f10, z10);
    }
}
