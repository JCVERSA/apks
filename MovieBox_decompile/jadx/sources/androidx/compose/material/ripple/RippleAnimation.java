package androidx.compose.material.ripple;

import androidx.compose.animation.core.Animatable;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import androidx.compose.ui.graphics.t1;
import androidx.compose.ui.graphics.u1;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.w;
import kotlinx.coroutines.y;
import y.m;

public final class RippleAnimation {

    private y.g f3138a;

    private final float f3139b;

    private final boolean f3140c;

    private Float f3141d;

    private y.g f3142e;

    private final Animatable f3143f;

    private final Animatable f3144g;

    private final Animatable f3145h;

    private final w f3146i;

    private final i1 f3147j;

    private final i1 f3148k;

    public RippleAnimation(y.g gVar, float f10, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, f10, z10);
    }

    private final Object f(Continuation continuation) {
        Object objE = o0.e(new RippleAnimation$fadeIn$2(this, null), continuation);
        return objE == IntrinsicsKt.f() ? objE : Unit.f64096a;
    }

    private final Object g(Continuation continuation) {
        Object objE = o0.e(new RippleAnimation$fadeOut$2(this, null), continuation);
        return objE == IntrinsicsKt.f() ? objE : Unit.f64096a;
    }

    private final boolean i() {
        return ((Boolean) this.f3148k.getValue()).booleanValue();
    }

    private final boolean j() {
        return ((Boolean) this.f3147j.getValue()).booleanValue();
    }

    private final void k(boolean z10) {
        this.f3148k.setValue(Boolean.valueOf(z10));
    }

    private final void l(boolean z10) {
        this.f3147j.setValue(Boolean.valueOf(z10));
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0071 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(Continuation continuation) {
        RippleAnimation$animate$1 rippleAnimation$animate$1;
        RippleAnimation rippleAnimation;
        if (continuation instanceof RippleAnimation$animate$1) {
            rippleAnimation$animate$1 = (RippleAnimation$animate$1) continuation;
            int i10 = rippleAnimation$animate$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                rippleAnimation$animate$1.label = i10 - Integer.MIN_VALUE;
            } else {
                rippleAnimation$animate$1 = new RippleAnimation$animate$1(this, continuation);
            }
        } else {
            rippleAnimation$animate$1 = new RippleAnimation$animate$1(this, continuation);
        }
        Object obj = rippleAnimation$animate$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = rippleAnimation$animate$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                rippleAnimation = (RippleAnimation) rippleAnimation$animate$1.L$0;
                ResultKt.b(obj);
            } else if (i11 == 2) {
                rippleAnimation = (RippleAnimation) rippleAnimation$animate$1.L$0;
                ResultKt.b(obj);
                rippleAnimation$animate$1.L$0 = null;
                rippleAnimation$animate$1.label = 3;
                if (rippleAnimation.g(rippleAnimation$animate$1) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        rippleAnimation$animate$1.L$0 = this;
        rippleAnimation$animate$1.label = 1;
        if (f(rippleAnimation$animate$1) == objF) {
            return objF;
        }
        rippleAnimation = this;
        rippleAnimation.l(true);
        w wVar = rippleAnimation.f3146i;
        rippleAnimation$animate$1.L$0 = rippleAnimation;
        rippleAnimation$animate$1.label = 2;
        if (wVar.f(rippleAnimation$animate$1) == objF) {
            return objF;
        }
        rippleAnimation$animate$1.L$0 = null;
        rippleAnimation$animate$1.label = 3;
        if (rippleAnimation.g(rippleAnimation$animate$1) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    public final void e(z.g gVar, long j10) {
        if (this.f3141d == null) {
            this.f3141d = Float.valueOf(d.b(gVar.i()));
        }
        if (this.f3138a == null) {
            this.f3138a = y.g.d(gVar.N0());
        }
        if (this.f3142e == null) {
            this.f3142e = y.g.d(y.h.a(m.i(gVar.i()) / 2.0f, m.g(gVar.i()) / 2.0f));
        }
        float fFloatValue = (!i() || j()) ? ((Number) this.f3143f.k()).floatValue() : 1.0f;
        Float f10 = this.f3141d;
        Intrinsics.e(f10);
        float fB = q0.b.b(f10.floatValue(), this.f3139b, ((Number) this.f3144g.k()).floatValue());
        y.g gVar2 = this.f3138a;
        Intrinsics.e(gVar2);
        float fM = y.g.m(gVar2.v());
        y.g gVar3 = this.f3142e;
        Intrinsics.e(gVar3);
        float fB2 = q0.b.b(fM, y.g.m(gVar3.v()), ((Number) this.f3145h.k()).floatValue());
        y.g gVar4 = this.f3138a;
        Intrinsics.e(gVar4);
        float fN = y.g.n(gVar4.v());
        y.g gVar5 = this.f3142e;
        Intrinsics.e(gVar5);
        long jA = y.h.a(fB2, q0.b.b(fN, y.g.n(gVar5.v()), ((Number) this.f3145h.k()).floatValue()));
        long jK = u1.k(j10, u1.n(j10) * fFloatValue, 0.0f, 0.0f, 0.0f, 14, null);
        if (!this.f3140c) {
            z.f.d(gVar, jK, fB, jA, 0.0f, null, null, 0, 120, null);
            return;
        }
        float fI = m.i(gVar.i());
        float fG = m.g(gVar.i());
        int iB = t1.f4338a.b();
        z.d dVarG0 = gVar.G0();
        long jI = dVarG0.i();
        dVarG0.e().n();
        try {
            dVarG0.c().a(0.0f, 0.0f, fI, fG, iB);
            z.f.d(gVar, jK, fB, jA, 0.0f, null, null, 0, 120, null);
        } finally {
            dVarG0.e().j();
            dVarG0.f(jI);
        }
    }

    public final void h() {
        k(true);
        this.f3146i.l(Unit.f64096a);
    }

    private RippleAnimation(y.g gVar, float f10, boolean z10) {
        this.f3138a = gVar;
        this.f3139b = f10;
        this.f3140c = z10;
        this.f3143f = androidx.compose.animation.core.a.b(0.0f, 0.0f, 2, null);
        this.f3144g = androidx.compose.animation.core.a.b(0.0f, 0.0f, 2, null);
        this.f3145h = androidx.compose.animation.core.a.b(0.0f, 0.0f, 2, null);
        this.f3146i = y.a(null);
        Boolean bool = Boolean.FALSE;
        this.f3147j = u2.c(bool, null, 2, null);
        this.f3148k = u2.c(bool, null, 2, null);
    }
}
