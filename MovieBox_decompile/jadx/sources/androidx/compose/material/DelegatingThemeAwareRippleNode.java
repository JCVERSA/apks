package androidx.compose.material;

import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.x1;
import androidx.compose.ui.node.u0;
import androidx.compose.ui.node.v0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

final class DelegatingThemeAwareRippleNode extends androidx.compose.ui.node.i implements androidx.compose.ui.node.d, u0 {

    private final p.g f3041p;

    private final boolean f3042q;

    private final float f3043r;

    private final x1 f3044s;

    private androidx.compose.ui.node.f f3045t;

    static final class a implements x1 {
        a() {
        }

        @Override
        public final long a() {
            long jA = DelegatingThemeAwareRippleNode.this.f3044s.a();
            if (jA != 16) {
                return jA;
            }
            g gVar = (g) androidx.compose.ui.node.e.a(DelegatingThemeAwareRippleNode.this, RippleKt.d());
            return (gVar == null || gVar.a() == 16) ? h.f3103a.b(((u1) androidx.compose.ui.node.e.a(DelegatingThemeAwareRippleNode.this, ContentColorKt.a())).u(), ((b) androidx.compose.ui.node.e.a(DelegatingThemeAwareRippleNode.this, ColorsKt.c())).m()) : gVar.a();
        }
    }

    public DelegatingThemeAwareRippleNode(p.g gVar, boolean z10, float f10, x1 x1Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, z10, f10, x1Var);
    }

    public final void M1() {
        this.f3045t = C1(androidx.compose.material.ripple.h.c(this.f3041p, this.f3042q, this.f3043r, new a(), new Function0<androidx.compose.material.ripple.c>() {
            {
                super(0);
            }

            @Override
            public final androidx.compose.material.ripple.c invoke() {
                androidx.compose.material.ripple.c cVarB;
                g gVar = (g) androidx.compose.ui.node.e.a(this.this$0, RippleKt.d());
                return (gVar == null || (cVarB = gVar.b()) == null) ? h.f3103a.a(((u1) androidx.compose.ui.node.e.a(this.this$0, ContentColorKt.a())).u(), ((b) androidx.compose.ui.node.e.a(this.this$0, ColorsKt.c())).m()) : cVarB;
            }
        }));
    }

    public final void N1() {
        androidx.compose.ui.node.f fVar = this.f3045t;
        if (fVar != null) {
            F1(fVar);
        }
    }

    private final void O1() {
        v0.a(this, new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m74invoke();
                return Unit.f64096a;
            }

            public final void m74invoke() {
                if (((g) androidx.compose.ui.node.e.a(this.this$0, RippleKt.d())) == null) {
                    this.this$0.N1();
                } else if (this.this$0.f3045t == null) {
                    this.this$0.M1();
                }
            }
        });
    }

    @Override
    public void Z() {
        O1();
    }

    @Override
    public void m1() {
        O1();
    }

    private DelegatingThemeAwareRippleNode(p.g gVar, boolean z10, float f10, x1 x1Var) {
        this.f3041p = gVar;
        this.f3042q = z10;
        this.f3043r = f10;
        this.f3044s = x1Var;
    }
}
