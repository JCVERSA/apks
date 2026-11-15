package androidx.compose.material.ripple;

import androidx.collection.l0;
import androidx.compose.ui.graphics.x1;
import androidx.compose.ui.layout.l;
import androidx.compose.ui.node.m;
import androidx.compose.ui.node.n;
import androidx.compose.ui.node.o;
import androidx.compose.ui.node.v;
import androidx.compose.ui.node.w;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.n0;
import o0.u;

public abstract class RippleNode extends androidx.compose.ui.f.c implements androidx.compose.ui.node.d, n, w {

    private final p.g f3163n;

    private final boolean f3164o;

    private final float f3165p;

    private final x1 f3166q;

    private final Function0 f3167r;

    private final boolean f3168s;

    private StateLayer f3169t;

    private float f3170u;

    private long f3171v;

    private boolean f3172w;

    private final l0 f3173x;

    public RippleNode(p.g gVar, boolean z10, float f10, x1 x1Var, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, z10, f10, x1Var, function0);
    }

    public final void N1(p.k kVar) {
        if (kVar instanceof p.k.b) {
            H1((p.k.b) kVar, this.f3171v, this.f3170u);
        } else if (kVar instanceof p.k.c) {
            O1(((p.k.c) kVar).a());
        } else if (kVar instanceof p.k.a) {
            O1(((p.k.a) kVar).a());
        }
    }

    public final void P1(p.f fVar, n0 n0Var) {
        StateLayer stateLayer = this.f3169t;
        if (stateLayer == null) {
            stateLayer = new StateLayer(this.f3164o, this.f3167r);
            o.a(this);
            this.f3169t = stateLayer;
        }
        stateLayer.c(fVar, n0Var);
    }

    @Override
    public void F(long j10) {
        this.f3172w = true;
        o0.e eVarI = androidx.compose.ui.node.g.i(this);
        this.f3171v = u.d(j10);
        this.f3170u = Float.isNaN(this.f3165p) ? d.a(eVarI, this.f3164o, this.f3171v) : eVarI.D0(this.f3165p);
        l0 l0Var = this.f3173x;
        Object[] objArr = l0Var.f1935a;
        int i10 = l0Var.f1936b;
        for (int i11 = 0; i11 < i10; i11++) {
            N1((p.k) objArr[i11]);
        }
        this.f3173x.f();
    }

    public abstract void H1(p.k.b bVar, long j10, float f10);

    @Override
    public void I(l lVar) {
        v.a(this, lVar);
    }

    public abstract void I1(z.g gVar);

    protected final boolean J1() {
        return this.f3164o;
    }

    protected final Function0 K1() {
        return this.f3167r;
    }

    public final long L1() {
        return this.f3166q.a();
    }

    protected final long M1() {
        return this.f3171v;
    }

    public abstract void O1(p.k.b bVar);

    @Override
    public final boolean h1() {
        return this.f3168s;
    }

    @Override
    public void m1() {
        kotlinx.coroutines.k.d(c1(), null, null, new RippleNode$onAttach$1(this, null), 3, null);
    }

    @Override
    public void n(z.c cVar) {
        cVar.X0();
        StateLayer stateLayer = this.f3169t;
        if (stateLayer != null) {
            stateLayer.b(cVar, this.f3170u, L1());
        }
        I1(cVar);
    }

    @Override
    public void w0() {
        m.a(this);
    }

    private RippleNode(p.g gVar, boolean z10, float f10, x1 x1Var, Function0 function0) {
        this.f3163n = gVar;
        this.f3164o = z10;
        this.f3165p = f10;
        this.f3166q = x1Var;
        this.f3167r = function0;
        this.f3171v = y.m.f76020b.b();
        this.f3173x = new l0(0, 1, null);
    }
}
