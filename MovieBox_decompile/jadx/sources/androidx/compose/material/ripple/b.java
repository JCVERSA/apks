package androidx.compose.material.ripple;

import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.a3;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class b extends Ripple {
    public b(boolean z10, float f10, a3 a3Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, f10, a3Var);
    }

    @Override
    public RippleIndicationInstance c(p.g gVar, boolean z10, float f10, a3 a3Var, a3 a3Var2, androidx.compose.runtime.i iVar, int i10) {
        iVar.P(331259447);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(331259447, i10, -1, "androidx.compose.material.ripple.PlatformRipple.rememberUpdatedRippleInstance (Ripple.android.kt:92)");
        }
        ViewGroup viewGroupE = j.e((View) iVar.l(AndroidCompositionLocals_androidKt.j()));
        boolean zO = ((((i10 & 14) ^ 6) > 4 && iVar.O(gVar)) || (i10 & 6) == 4) | ((((458752 & i10) ^ 196608) > 131072 && iVar.O(this)) || (i10 & 196608) == 131072) | iVar.O(viewGroupE);
        Object objY = iVar.y();
        if (zO || objY == androidx.compose.runtime.i.f3427a.a()) {
            objY = new AndroidRippleIndicationInstance(z10, f10, a3Var, a3Var2, viewGroupE, null);
            iVar.p(objY);
        }
        AndroidRippleIndicationInstance androidRippleIndicationInstance = (AndroidRippleIndicationInstance) objY;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        iVar.K();
        return androidRippleIndicationInstance;
    }

    private b(boolean z10, float f10, a3 a3Var) {
        super(z10, f10, a3Var, null);
    }
}
