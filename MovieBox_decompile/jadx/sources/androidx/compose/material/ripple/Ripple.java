package androidx.compose.material.ripple;

import androidx.compose.foundation.x;
import androidx.compose.foundation.y;
import androidx.compose.runtime.a3;
import androidx.compose.runtime.g0;
import androidx.compose.runtime.r2;
import androidx.compose.ui.graphics.u1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class Ripple implements x {

    private final boolean f3133a;

    private final float f3134b;

    private final a3 f3135c;

    public Ripple(boolean z10, float f10, a3 a3Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, f10, a3Var);
    }

    @Override
    public final y a(p.g gVar, androidx.compose.runtime.i iVar, int i10) {
        long jA;
        iVar.P(988743187);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(988743187, i10, -1, "androidx.compose.material.ripple.Ripple.rememberUpdatedInstance (Ripple.kt:196)");
        }
        i iVar2 = (i) iVar.l(RippleThemeKt.d());
        if (((u1) this.f3135c.getValue()).u() != 16) {
            iVar.P(-303571590);
            iVar.K();
            jA = ((u1) this.f3135c.getValue()).u();
        } else {
            iVar.P(-303521246);
            jA = iVar2.a(iVar, 0);
            iVar.K();
        }
        a3 a3VarI = r2.i(u1.g(jA), iVar, 0);
        a3 a3VarI2 = r2.i(iVar2.b(iVar, 0), iVar, 0);
        int i11 = i10 & 14;
        RippleIndicationInstance rippleIndicationInstanceC = c(gVar, this.f3133a, this.f3134b, a3VarI, a3VarI2, iVar, i11 | ((i10 << 12) & 458752));
        boolean zA = iVar.A(rippleIndicationInstanceC) | (((i11 ^ 6) > 4 && iVar.O(gVar)) || (i10 & 6) == 4);
        Object objY = iVar.y();
        if (zA || objY == androidx.compose.runtime.i.f3427a.a()) {
            objY = new Ripple$rememberUpdatedInstance$1$1(gVar, rippleIndicationInstanceC, null);
            iVar.p(objY);
        }
        g0.c(rippleIndicationInstanceC, gVar, (Function2) objY, iVar, (i10 << 3) & 112);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        iVar.K();
        return rippleIndicationInstanceC;
    }

    public abstract RippleIndicationInstance c(p.g gVar, boolean z10, float f10, a3 a3Var, a3 a3Var2, androidx.compose.runtime.i iVar, int i10);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Ripple)) {
            return false;
        }
        Ripple ripple = (Ripple) obj;
        return this.f3133a == ripple.f3133a && o0.i.i(this.f3134b, ripple.f3134b) && Intrinsics.c(this.f3135c, ripple.f3135c);
    }

    public int hashCode() {
        return (((androidx.compose.foundation.e.a(this.f3133a) * 31) + o0.i.j(this.f3134b)) * 31) + this.f3135c.hashCode();
    }

    private Ripple(boolean z10, float f10, a3 a3Var) {
        this.f3133a = z10;
        this.f3134b = f10;
        this.f3135c = a3Var;
    }
}
