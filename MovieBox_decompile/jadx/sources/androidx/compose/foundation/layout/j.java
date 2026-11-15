package androidx.compose.foundation.layout;

public abstract class j {
    public static androidx.compose.ui.f a(k kVar, androidx.compose.ui.f fVar, float f10, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: weight");
        }
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return kVar.a(fVar, f10, z10);
    }
}
