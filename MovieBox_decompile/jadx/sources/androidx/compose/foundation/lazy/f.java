package androidx.compose.foundation.lazy;

public abstract class f {
    public static final androidx.compose.foundation.lazy.layout.h a(LazyListState lazyListState, int i10, androidx.compose.runtime.i iVar, int i11) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-1877443446, i11, -1, "androidx.compose.foundation.lazy.rememberLazyListBeyondBoundsState (LazyListBeyondBoundsModifier.kt:26)");
        }
        boolean z10 = ((((i11 & 14) ^ 6) > 4 && iVar.O(lazyListState)) || (i11 & 6) == 4) | ((((i11 & 112) ^ 48) > 32 && iVar.c(i10)) || (i11 & 48) == 32);
        Object objY = iVar.y();
        if (z10 || objY == androidx.compose.runtime.i.f3427a.a()) {
            objY = new g(lazyListState, i10);
            iVar.p(objY);
        }
        g gVar = (g) objY;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return gVar;
    }
}
