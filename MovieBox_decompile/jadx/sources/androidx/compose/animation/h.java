package androidx.compose.animation;

import android.view.ViewConfiguration;
import androidx.compose.animation.core.w;
import androidx.compose.animation.core.y;
import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import androidx.compose.ui.platform.CompositionLocalsKt;

public abstract class h {

    private static final float f2214a = ViewConfiguration.getScrollFriction();

    public static final float a() {
        return f2214a;
    }

    public static final w b(i iVar, int i10) {
        if (k.H()) {
            k.Q(904445851, i10, -1, "androidx.compose.animation.rememberSplineBasedDecay (SplineBasedFloatDecayAnimationSpec.android.kt:40)");
        }
        o0.e eVar = (o0.e) iVar.l(CompositionLocalsKt.c());
        boolean zB = iVar.b(eVar.getDensity());
        Object objY = iVar.y();
        if (zB || objY == i.f3427a.a()) {
            objY = y.a(new g(eVar));
            iVar.p(objY);
        }
        w wVar = (w) objY;
        if (k.H()) {
            k.P();
        }
        return wVar;
    }
}
