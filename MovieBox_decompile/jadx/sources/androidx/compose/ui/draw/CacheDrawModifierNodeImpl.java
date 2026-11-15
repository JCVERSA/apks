package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.a4;
import androidx.compose.ui.node.o;
import androidx.compose.ui.node.s0;
import androidx.compose.ui.node.u0;
import androidx.compose.ui.node.v0;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import o0.u;

final class CacheDrawModifierNodeImpl extends androidx.compose.ui.f.c implements b, u0, a {

    private final c f3835n;

    private boolean f3836o;

    private k f3837p;

    private Function1 f3838q;

    public CacheDrawModifierNodeImpl(c cVar, Function1 function1) {
        this.f3835n = cVar;
        this.f3838q = function1;
        cVar.z(this);
        cVar.D(new Function0<a4>() {
            {
                super(0);
            }

            @Override
            public final a4 invoke() {
                return CacheDrawModifierNodeImpl.this.D1();
            }
        });
    }

    private final h E1(z.c cVar) {
        if (!this.f3836o) {
            final c cVar2 = this.f3835n;
            cVar2.C(null);
            cVar2.B(cVar);
            v0.a(this, new Function0<Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m102invoke();
                    return Unit.f64096a;
                }

                public final void m102invoke() {
                    this.this$0.C1().invoke(cVar2);
                }
            });
            if (cVar2.n() == null) {
                g0.a.c("DrawResult not defined, did you forget to call onDraw?");
                throw new KotlinNothingValueException();
            }
            this.f3836o = true;
        }
        h hVarN = this.f3835n.n();
        Intrinsics.e(hVarN);
        return hVarN;
    }

    public final Function1 C1() {
        return this.f3838q;
    }

    public final a4 D1() {
        k kVar = this.f3837p;
        if (kVar == null) {
            kVar = new k();
            this.f3837p = kVar;
        }
        if (kVar.c() == null) {
            kVar.e(androidx.compose.ui.node.g.j(this));
        }
        return kVar;
    }

    @Override
    public void Z() {
        o0();
    }

    @Override
    public o0.e getDensity() {
        return androidx.compose.ui.node.g.i(this);
    }

    @Override
    public LayoutDirection getLayoutDirection() {
        return androidx.compose.ui.node.g.l(this);
    }

    @Override
    public long i() {
        return u.d(androidx.compose.ui.node.g.h(this, s0.a(128)).k());
    }

    @Override
    public void n(z.c cVar) {
        E1(cVar).a().invoke(cVar);
    }

    @Override
    public void n1() {
        super.n1();
        k kVar = this.f3837p;
        if (kVar != null) {
            kVar.d();
        }
    }

    @Override
    public void o0() {
        k kVar = this.f3837p;
        if (kVar != null) {
            kVar.d();
        }
        this.f3836o = false;
        this.f3835n.C(null);
        o.a(this);
    }

    @Override
    public void w0() {
        o0();
    }
}
