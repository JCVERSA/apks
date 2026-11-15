package androidx.compose.material.ripple;

import android.view.ViewGroup;
import androidx.compose.runtime.a3;
import androidx.compose.runtime.b2;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import androidx.compose.ui.graphics.h0;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.u1;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.n0;
import y.m;

public final class AndroidRippleIndicationInstance extends RippleIndicationInstance implements b2, e {

    private final boolean f3119c;

    private final float f3120d;

    private final a3 f3121e;

    private final a3 f3122f;

    private final ViewGroup f3123g;

    private RippleContainer f3124h;

    private final i1 f3125i;

    private final i1 f3126j;

    private long f3127k;

    private int f3128l;

    private final Function0 f3129m;

    public AndroidRippleIndicationInstance(boolean z10, float f10, a3 a3Var, a3 a3Var2, ViewGroup viewGroup, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, f10, a3Var, a3Var2, viewGroup);
    }

    private final void h() {
        RippleContainer rippleContainer = this.f3124h;
        if (rippleContainer != null) {
            rippleContainer.disposeRippleIfNeeded(this);
        }
    }

    public final boolean i() {
        return ((Boolean) this.f3126j.getValue()).booleanValue();
    }

    private final RippleContainer j() {
        RippleContainer rippleContainer = this.f3124h;
        if (rippleContainer != null) {
            Intrinsics.e(rippleContainer);
            return rippleContainer;
        }
        RippleContainer rippleContainerC = j.c(this.f3123g);
        this.f3124h = rippleContainerC;
        Intrinsics.e(rippleContainerC);
        return rippleContainerC;
    }

    private final RippleHostView k() {
        return (RippleHostView) this.f3125i.getValue();
    }

    public final void l(boolean z10) {
        this.f3126j.setValue(Boolean.valueOf(z10));
    }

    private final void m(RippleHostView rippleHostView) {
        this.f3125i.setValue(rippleHostView);
    }

    @Override
    public void a(z.c cVar) {
        this.f3127k = cVar.i();
        this.f3128l = Float.isNaN(this.f3120d) ? MathKt.d(d.a(cVar, this.f3119c, cVar.i())) : cVar.c0(this.f3120d);
        long jU = ((u1) this.f3121e.getValue()).u();
        float fD = ((c) this.f3122f.getValue()).d();
        cVar.X0();
        c(cVar, this.f3120d, jU);
        m1 m1VarE = cVar.G0().e();
        i();
        RippleHostView rippleHostViewK = k();
        if (rippleHostViewK != null) {
            rippleHostViewK.m79setRippleProperties07v42R4(cVar.i(), jU, fD);
            rippleHostViewK.draw(h0.d(m1VarE));
        }
    }

    @Override
    public void b(p.k.b bVar, n0 n0Var) {
        RippleHostView rippleHostView = j().getRippleHostView(this);
        rippleHostView.m78addRippleKOepWvA(bVar, this.f3119c, this.f3127k, this.f3128l, ((u1) this.f3121e.getValue()).u(), ((c) this.f3122f.getValue()).d(), this.f3129m);
        m(rippleHostView);
    }

    @Override
    public void d(p.k.b bVar) {
        RippleHostView rippleHostViewK = k();
        if (rippleHostViewK != null) {
            rippleHostViewK.removeRipple();
        }
    }

    @Override
    public void onAbandoned() {
        h();
    }

    @Override
    public void onForgotten() {
        h();
    }

    @Override
    public void u0() {
        m(null);
    }

    private AndroidRippleIndicationInstance(boolean z10, float f10, a3 a3Var, a3 a3Var2, ViewGroup viewGroup) {
        super(z10, a3Var2);
        this.f3119c = z10;
        this.f3120d = f10;
        this.f3121e = a3Var;
        this.f3122f = a3Var2;
        this.f3123g = viewGroup;
        this.f3125i = u2.c(null, null, 2, null);
        this.f3126j = u2.c(Boolean.TRUE, null, 2, null);
        this.f3127k = m.f76020b.b();
        this.f3128l = -1;
        this.f3129m = new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m76invoke();
                return Unit.f64096a;
            }

            public final void m76invoke() {
                AndroidRippleIndicationInstance androidRippleIndicationInstance = this.this$0;
                androidRippleIndicationInstance.l(!androidRippleIndicationInstance.i());
            }
        };
    }

    @Override
    public void onRemembered() {
    }
}
