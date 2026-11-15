package androidx.compose.foundation;

import android.view.KeyEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.l0;
import androidx.compose.ui.input.pointer.n0;
import androidx.compose.ui.node.d1;
import androidx.compose.ui.node.e1;
import androidx.compose.ui.node.h1;
import androidx.compose.ui.node.i1;
import androidx.compose.ui.node.j1;
import androidx.compose.ui.node.m1;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;

public abstract class AbstractClickableNode extends androidx.compose.ui.node.i implements e1, d0.e, androidx.compose.ui.focus.c, i1, m1 {
    public static final a H = new a(null);
    public static final int I = 8;
    private p.k.b A;
    private p.d B;
    private final Map C;
    private long D;
    private p.i E;
    private boolean F;
    private final Object G;

    private p.i f2215p;

    private b0 f2216q;

    private String f2217r;

    private androidx.compose.ui.semantics.f f2218s;

    private boolean f2219t;

    private Function0 f2220u;

    private final boolean f2221v;

    private final q f2222w;

    private final FocusableNode f2223x;

    private n0 f2224y;

    private androidx.compose.ui.node.f f2225z;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public AbstractClickableNode(p.i iVar, b0 b0Var, boolean z10, String str, androidx.compose.ui.semantics.f fVar, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(iVar, b0Var, z10, str, fVar, function0);
    }

    public final boolean Q1() {
        return ClickableKt.e(this) || f.c(this);
    }

    public final void S1() {
        if (this.B == null) {
            p.d dVar = new p.d();
            p.i iVar = this.f2215p;
            if (iVar != null) {
                kotlinx.coroutines.k.d(c1(), null, null, new AbstractClickableNode$emitHoverEnter$1$1(iVar, dVar, null), 3, null);
            }
            this.B = dVar;
        }
    }

    public final void T1() {
        p.d dVar = this.B;
        if (dVar != null) {
            p.e eVar = new p.e(dVar);
            p.i iVar = this.f2215p;
            if (iVar != null) {
                kotlinx.coroutines.k.d(c1(), null, null, new AbstractClickableNode$emitHoverExit$1$1$1(iVar, eVar, null), 3, null);
            }
            this.B = null;
        }
    }

    private final void X1() {
        b0 b0Var;
        if (this.f2225z == null && (b0Var = this.f2216q) != null) {
            if (this.f2215p == null) {
                this.f2215p = p.h.a();
            }
            this.f2223x.I1(this.f2215p);
            p.i iVar = this.f2215p;
            Intrinsics.e(iVar);
            androidx.compose.ui.node.f fVarB = b0Var.b(iVar);
            C1(fVarB);
            this.f2225z = fVarB;
        }
    }

    private final boolean Z1() {
        return this.E == null && this.f2216q != null;
    }

    @Override
    public Object D() {
        return this.G;
    }

    @Override
    public final void M(androidx.compose.ui.input.pointer.o oVar, PointerEventPass pointerEventPass, long j10) {
        long jB = o0.u.b(j10);
        this.D = y.h.a(o0.p.h(jB), o0.p.i(jB));
        X1();
        if (this.f2219t && pointerEventPass == PointerEventPass.Main) {
            int iE = oVar.e();
            androidx.compose.ui.input.pointer.q.a aVar = androidx.compose.ui.input.pointer.q.f4714a;
            if (androidx.compose.ui.input.pointer.q.i(iE, aVar.a())) {
                kotlinx.coroutines.k.d(c1(), null, null, new AbstractClickableNode$onPointerEvent$1(this, null), 3, null);
            } else if (androidx.compose.ui.input.pointer.q.i(iE, aVar.b())) {
                kotlinx.coroutines.k.d(c1(), null, null, new AbstractClickableNode$onPointerEvent$2(this, null), 3, null);
            }
        }
        if (this.f2224y == null) {
            this.f2224y = (n0) C1(l0.a(new AbstractClickableNode$onPointerEvent$3(this, null)));
        }
        n0 n0Var = this.f2224y;
        if (n0Var != null) {
            n0Var.M(oVar, pointerEventPass, j10);
        }
    }

    @Override
    public boolean O() {
        return h1.a(this);
    }

    @Override
    public boolean O0() {
        return d1.d(this);
    }

    public abstract Object P1(androidx.compose.ui.input.pointer.e0 e0Var, Continuation continuation);

    @Override
    public final void Q0(androidx.compose.ui.semantics.n nVar) {
        androidx.compose.ui.semantics.f fVar = this.f2218s;
        if (fVar != null) {
            Intrinsics.e(fVar);
            SemanticsPropertiesKt.B(nVar, fVar.n());
        }
        SemanticsPropertiesKt.l(nVar, this.f2217r, new Function0<Boolean>() {
            {
                super(0);
            }

            @Override
            public final Boolean invoke() {
                this.this$0.V1().invoke();
                return Boolean.TRUE;
            }
        });
        if (this.f2219t) {
            this.f2223x.Q0(nVar);
        } else {
            SemanticsPropertiesKt.f(nVar);
        }
        O1(nVar);
    }

    @Override
    public boolean R() {
        return d1.a(this);
    }

    @Override
    public final void R0(androidx.compose.ui.focus.r rVar) {
        if (rVar.isFocused()) {
            X1();
        }
        if (this.f2219t) {
            this.f2223x.R0(rVar);
        }
    }

    protected final void R1() {
        p.i iVar = this.f2215p;
        if (iVar != null) {
            p.k.b bVar = this.A;
            if (bVar != null) {
                iVar.a(new p.k.a(bVar));
            }
            p.d dVar = this.B;
            if (dVar != null) {
                iVar.a(new p.e(dVar));
            }
            Iterator it = this.C.values().iterator();
            while (it.hasNext()) {
                iVar.a(new p.k.a((p.k.b) it.next()));
            }
        }
        this.A = null;
        this.B = null;
        this.C.clear();
    }

    @Override
    public void S0() {
        d1.c(this);
    }

    protected final boolean U1() {
        return this.f2219t;
    }

    @Override
    public final boolean V0() {
        return true;
    }

    protected final Function0 V1() {
        return this.f2220u;
    }

    protected final Object W1(androidx.compose.foundation.gestures.i iVar, long j10, Continuation continuation) {
        Object objE;
        p.i iVar2 = this.f2215p;
        return (iVar2 == null || (objE = o0.e(new AbstractClickableNode$handlePressInteraction$2$1(iVar, j10, iVar2, this, null), continuation)) != IntrinsicsKt.f()) ? Unit.f64096a : objE;
    }

    protected final Unit Y1() {
        n0 n0Var = this.f2224y;
        if (n0Var == null) {
            return null;
        }
        n0Var.j0();
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0072  */
    protected final void a2(p.i iVar, b0 b0Var, boolean z10, String str, androidx.compose.ui.semantics.f fVar, Function0 function0) {
        boolean z11;
        boolean z12;
        androidx.compose.ui.node.f fVar2;
        if (Intrinsics.c(this.E, iVar)) {
            z11 = false;
        } else {
            R1();
            this.E = iVar;
            this.f2215p = iVar;
            z11 = true;
        }
        if (!Intrinsics.c(this.f2216q, b0Var)) {
            this.f2216q = b0Var;
            z11 = true;
        }
        if (this.f2219t != z10) {
            if (z10) {
                C1(this.f2222w);
                C1(this.f2223x);
            } else {
                F1(this.f2222w);
                F1(this.f2223x);
                R1();
            }
            j1.b(this);
            this.f2219t = z10;
        }
        if (!Intrinsics.c(this.f2217r, str)) {
            this.f2217r = str;
            j1.b(this);
        }
        if (!Intrinsics.c(this.f2218s, fVar)) {
            this.f2218s = fVar;
            j1.b(this);
        }
        this.f2220u = function0;
        if (this.F != Z1()) {
            boolean zZ1 = Z1();
            this.F = zZ1;
            z12 = (zZ1 || this.f2225z != null) ? z11 : true;
        }
        if (z12 && ((fVar2 = this.f2225z) != null || !this.F)) {
            if (fVar2 != null) {
                F1(fVar2);
            }
            this.f2225z = null;
            X1();
        }
        this.f2223x.I1(this.f2215p);
    }

    @Override
    public final boolean h1() {
        return this.f2221v;
    }

    @Override
    public final boolean l0(KeyEvent keyEvent) {
        return false;
    }

    @Override
    public final void m1() {
        if (!this.F) {
            X1();
        }
        if (this.f2219t) {
            C1(this.f2222w);
            C1(this.f2223x);
        }
    }

    @Override
    public final void n1() {
        R1();
        if (this.E == null) {
            this.f2215p = null;
        }
        androidx.compose.ui.node.f fVar = this.f2225z;
        if (fVar != null) {
            F1(fVar);
        }
        this.f2225z = null;
    }

    @Override
    public final boolean s0(KeyEvent keyEvent) {
        X1();
        if (this.f2219t && f.f(keyEvent)) {
            if (this.C.containsKey(d0.a.m(d0.d.a(keyEvent)))) {
                return false;
            }
            p.k.b bVar = new p.k.b(this.D, null);
            this.C.put(d0.a.m(d0.d.a(keyEvent)), bVar);
            if (this.f2215p != null) {
                kotlinx.coroutines.k.d(c1(), null, null, new AbstractClickableNode$onKeyEvent$1(this, bVar, null), 3, null);
            }
        } else {
            if (!this.f2219t || !f.b(keyEvent)) {
                return false;
            }
            p.k.b bVar2 = (p.k.b) this.C.remove(d0.a.m(d0.d.a(keyEvent)));
            if (bVar2 != null && this.f2215p != null) {
                kotlinx.coroutines.k.d(c1(), null, null, new AbstractClickableNode$onKeyEvent$2$1(this, bVar2, null), 3, null);
            }
            this.f2220u.invoke();
        }
        return true;
    }

    @Override
    public final void t0() {
        p.d dVar;
        p.i iVar = this.f2215p;
        if (iVar != null && (dVar = this.B) != null) {
            iVar.a(new p.e(dVar));
        }
        this.B = null;
        n0 n0Var = this.f2224y;
        if (n0Var != null) {
            n0Var.t0();
        }
    }

    @Override
    public void y0() {
        d1.b(this);
    }

    private AbstractClickableNode(p.i iVar, b0 b0Var, boolean z10, String str, androidx.compose.ui.semantics.f fVar, Function0 function0) {
        this.f2215p = iVar;
        this.f2216q = b0Var;
        this.f2217r = str;
        this.f2218s = fVar;
        this.f2219t = z10;
        this.f2220u = function0;
        this.f2222w = new q();
        this.f2223x = new FocusableNode(this.f2215p);
        this.C = new LinkedHashMap();
        this.D = y.g.f75999b.c();
        this.E = this.f2215p;
        this.F = Z1();
        this.G = H;
    }

    public void O1(androidx.compose.ui.semantics.n nVar) {
    }
}
