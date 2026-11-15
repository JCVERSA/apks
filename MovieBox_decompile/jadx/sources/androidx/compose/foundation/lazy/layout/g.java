package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.unit.LayoutDirection;

public abstract class g {
    public static final androidx.compose.ui.f b(androidx.compose.ui.f fVar, h hVar, e eVar, boolean z10, LayoutDirection layoutDirection, Orientation orientation, boolean z11, androidx.compose.runtime.i iVar, int i10) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(1331498025, i10, -1, "androidx.compose.foundation.lazy.layout.lazyLayoutBeyondBoundsModifier (LazyLayoutBeyondBoundsModifierLocal.kt:51)");
        }
        if (z11) {
            iVar.P(-1890632411);
            boolean z12 = ((((i10 & 112) ^ 48) > 32 && iVar.O(hVar)) || (i10 & 48) == 32) | ((((i10 & 896) ^ 384) > 256 && iVar.O(eVar)) || (i10 & 384) == 256) | ((((i10 & 7168) ^ 3072) > 2048 && iVar.a(z10)) || (i10 & 3072) == 2048) | ((((57344 & i10) ^ 24576) > 16384 && iVar.O(layoutDirection)) || (i10 & 24576) == 16384) | ((((458752 & i10) ^ 196608) > 131072 && iVar.O(orientation)) || (i10 & 196608) == 131072);
            Object objY = iVar.y();
            if (z12 || objY == androidx.compose.runtime.i.f3427a.a()) {
                objY = new f(hVar, eVar, z10, layoutDirection, orientation);
                iVar.p(objY);
            }
            fVar = fVar.e((f) objY);
            iVar.K();
        } else {
            iVar.P(-1890658823);
            iVar.K();
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return fVar;
    }

    public static final Void c() {
        throw new IllegalStateException("Lazy list does not support beyond bounds layout for the specified direction");
    }
}
