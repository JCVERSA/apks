package androidx.compose.material.ripple;

import android.view.View;
import androidx.compose.ui.graphics.h0;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.x1;
import androidx.compose.ui.node.o;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

public final class AndroidRippleNode extends RippleNode implements e {

    private RippleContainer f3130y;

    private RippleHostView f3131z;

    public AndroidRippleNode(p.g gVar, boolean z10, float f10, x1 x1Var, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, z10, f10, x1Var, function0);
    }

    private final RippleContainer Q1() {
        RippleContainer rippleContainer = this.f3130y;
        if (rippleContainer != null) {
            Intrinsics.e(rippleContainer);
            return rippleContainer;
        }
        RippleContainer rippleContainerC = j.c(j.e((View) androidx.compose.ui.node.e.a(this, AndroidCompositionLocals_androidKt.j())));
        this.f3130y = rippleContainerC;
        Intrinsics.e(rippleContainerC);
        return rippleContainerC;
    }

    private final void R1(RippleHostView rippleHostView) {
        this.f3131z = rippleHostView;
        o.a(this);
    }

    @Override
    public void H1(p.k.b bVar, long j10, float f10) {
        RippleHostView rippleHostView = Q1().getRippleHostView(this);
        rippleHostView.m78addRippleKOepWvA(bVar, J1(), j10, MathKt.d(f10), L1(), ((c) K1().invoke()).d(), new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m77invoke();
                return Unit.f64096a;
            }

            public final void m77invoke() {
                o.a(this.this$0);
            }
        });
        R1(rippleHostView);
    }

    @Override
    public void I1(z.g gVar) {
        m1 m1VarE = gVar.G0().e();
        RippleHostView rippleHostView = this.f3131z;
        if (rippleHostView != null) {
            rippleHostView.m79setRippleProperties07v42R4(M1(), L1(), ((c) K1().invoke()).d());
            rippleHostView.draw(h0.d(m1VarE));
        }
    }

    @Override
    public void O1(p.k.b bVar) {
        RippleHostView rippleHostView = this.f3131z;
        if (rippleHostView != null) {
            rippleHostView.removeRipple();
        }
    }

    @Override
    public void n1() {
        RippleContainer rippleContainer = this.f3130y;
        if (rippleContainer != null) {
            rippleContainer.disposeRippleIfNeeded(this);
        }
    }

    @Override
    public void u0() {
        R1(null);
    }

    private AndroidRippleNode(p.g gVar, boolean z10, float f10, x1 x1Var, Function0 function0) {
        super(gVar, z10, f10, x1Var, function0, null);
    }
}
