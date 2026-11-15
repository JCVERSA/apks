package androidx.compose.foundation;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.a5;
import androidx.compose.ui.graphics.b5;
import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.f4;
import androidx.compose.ui.graphics.g4;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.k4;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.o1;
import androidx.compose.ui.graphics.o4;
import androidx.compose.ui.graphics.s4;
import androidx.compose.ui.graphics.t1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.unit.LayoutDirection;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

public final class BorderModifierNode extends androidx.compose.ui.node.i {

    private c f2247p;

    private float f2248q;

    private j1 f2249r;

    private a5 f2250s;

    private final androidx.compose.ui.draw.b f2251t;

    public BorderModifierNode(float f10, j1 j1Var, a5 a5Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, j1Var, a5Var);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00db  */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7, types: [T, androidx.compose.ui.graphics.e4] */
    public final androidx.compose.ui.draw.h K1(androidx.compose.ui.draw.c cVar, final j1 j1Var, final k4.a aVar, boolean z10, float f10) throws Throwable {
        int iB;
        v1 v1VarB;
        boolean z11;
        m1 m1Var;
        ?? r12;
        float f11;
        long j10;
        z.d dVar;
        if (z10) {
            return cVar.v(new Function1<z.c, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((z.c) obj);
                    return Unit.f64096a;
                }

                public final void invoke(z.c cVar2) {
                    cVar2.X0();
                    z.f.g(cVar2, aVar.b(), j1Var, 0.0f, null, null, 0, 60, null);
                }
            });
        }
        if (j1Var instanceof b5) {
            iB = f4.f4130b.a();
            v1VarB = v1.a.b(v1.f4366b, ((b5) j1Var).b(), 0, 2, null);
        } else {
            iB = f4.f4130b.b();
            v1VarB = null;
        }
        final y.i bounds = aVar.b().getBounds();
        if (this.f2247p == null) {
            this.f2247p = new c(null, null, null, null, 15, null);
        }
        c cVar2 = this.f2247p;
        Intrinsics.e(cVar2);
        Path pathG = cVar2.g();
        pathG.reset();
        o4.a(pathG, bounds, null, 2, null);
        pathG.l(pathG, aVar.b(), s4.f4329a.a());
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final long jA = o0.u.a((int) Math.ceil(bounds.k()), (int) Math.ceil(bounds.e()));
        c cVar3 = this.f2247p;
        Intrinsics.e(cVar3);
        e4 e4Var = cVar3.f2307a;
        m1 m1Var2 = cVar3.f2308b;
        f4 f4VarF = e4Var != null ? f4.f(e4Var.b()) : null;
        if (!(f4VarF == null ? false : f4.i(f4VarF.l(), f4.f4130b.b()))) {
            z11 = f4.h(iB, e4Var != null ? f4.f(e4Var.b()) : null);
        }
        if (e4Var == null || m1Var2 == null || y.m.i(cVar.i()) > e4Var.getWidth() || y.m.g(cVar.i()) > e4Var.getHeight() || !z11) {
            e4 e4VarB = g4.b(o0.t.g(jA), o0.t.f(jA), iB, false, null, 24, null);
            cVar3.f2307a = e4VarB;
            m1 m1VarA = o1.a(e4VarB);
            cVar3.f2308b = m1VarA;
            m1Var = m1VarA;
            r12 = e4VarB;
        } else {
            r12 = e4Var;
            m1Var = m1Var2;
        }
        z.a aVar2 = cVar3.f2309c;
        if (aVar2 == null) {
            aVar2 = new z.a();
            cVar3.f2309c = aVar2;
        }
        z.a aVar3 = aVar2;
        long jD = o0.u.d(jA);
        LayoutDirection layoutDirection = cVar.getLayoutDirection();
        z.a.C0951a c0951aF = aVar3.F();
        o0.e eVarA = c0951aF.a();
        LayoutDirection layoutDirectionB = c0951aF.b();
        m1 m1VarC = c0951aF.c();
        long jD2 = c0951aF.d();
        z.a.C0951a c0951aF2 = aVar3.F();
        c0951aF2.j(cVar);
        c0951aF2.k(layoutDirection);
        c0951aF2.i(m1Var);
        c0951aF2.l(jD);
        m1Var.n();
        long jA2 = u1.f4349b.a();
        c1.a aVar4 = c1.f3983a;
        z.f.j(aVar3, jA2, 0L, jD, 0.0f, null, null, aVar4.a(), 58, null);
        float f12 = -bounds.f();
        float f13 = -bounds.i();
        aVar3.G0().c().c(f12, f13);
        try {
            f13 = f13;
            f11 = f12;
            try {
                z.f.g(aVar3, aVar.b(), j1Var, 0.0f, new z.m(f10 * 2, 0.0f, 0, 0, null, 30, null), null, 0, 52, null);
                float f14 = 1;
                float fI = (y.m.i(aVar3.i()) + f14) / y.m.i(aVar3.i());
                float fG = (y.m.g(aVar3.i()) + f14) / y.m.g(aVar3.i());
                long jN0 = aVar3.N0();
                z.d dVarG0 = aVar3.G0();
                long jI = dVarG0.i();
                dVarG0.e().n();
                try {
                    dVarG0.c().e(fI, fG, jN0);
                    dVar = dVarG0;
                    try {
                        z.f.g(aVar3, pathG, j1Var, 0.0f, null, null, aVar4.a(), 28, null);
                        dVar.e().j();
                        dVar.f(jI);
                        aVar3.G0().c().c(-f11, -f13);
                        m1Var.j();
                        z.a.C0951a c0951aF3 = aVar3.F();
                        c0951aF3.j(eVarA);
                        c0951aF3.k(layoutDirectionB);
                        c0951aF3.i(m1VarC);
                        c0951aF3.l(jD2);
                        r12.a();
                        objectRef.element = r12;
                        final v1 v1Var = v1VarB;
                        return cVar.v(new Function1<z.c, Unit>() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override
                            public Object invoke(Object obj) {
                                invoke((z.c) obj);
                                return Unit.f64096a;
                            }

                            public final void invoke(z.c cVar4) {
                                cVar4.X0();
                                float f15 = bounds.f();
                                float fI2 = bounds.i();
                                Ref.ObjectRef<e4> objectRef2 = objectRef;
                                long j11 = jA;
                                v1 v1Var2 = v1Var;
                                cVar4.G0().c().c(f15, fI2);
                                try {
                                    z.f.e(cVar4, objectRef2.element, 0L, j11, 0L, 0L, 0.0f, null, v1Var2, 0, 0, 890, null);
                                } finally {
                                    cVar4.G0().c().c(-f15, -fI2);
                                }
                            }
                        });
                    } catch (Throwable th2) {
                        th = th2;
                        j10 = jI;
                        try {
                            dVar.e().j();
                            dVar.f(j10);
                            throw th;
                        } catch (Throwable th3) {
                            th = th3;
                            aVar3.G0().c().c(-f11, -f13);
                            throw th;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    j10 = jI;
                    dVar = dVarG0;
                }
            } catch (Throwable th5) {
                th = th5;
                f13 = f13;
                f11 = f11;
            }
        } catch (Throwable th6) {
            th = th6;
            f11 = f12;
        }
    }

    public final androidx.compose.ui.draw.h L1(androidx.compose.ui.draw.c cVar, final j1 j1Var, k4.c cVar2, final long j10, final long j11, final boolean z10, final float f10) {
        if (y.l.e(cVar2.b())) {
            final long jH = cVar2.b().h();
            final float f11 = f10 / 2;
            final z.m mVar = new z.m(f10, 0.0f, 0, 0, null, 30, null);
            return cVar.v(new Function1<z.c, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) throws Throwable {
                    invoke((z.c) obj);
                    return Unit.f64096a;
                }

                public final void invoke(z.c cVar3) throws Throwable {
                    long j12;
                    cVar3.X0();
                    if (z10) {
                        z.f.k(cVar3, j1Var, 0L, 0L, jH, 0.0f, null, null, 0, 246, null);
                        return;
                    }
                    float fD = y.a.d(jH);
                    float f12 = f11;
                    if (fD >= f12) {
                        z.f.k(cVar3, j1Var, j10, j11, BorderKt.k(jH, f12), 0.0f, mVar, null, 0, Sdk$SDKError.Reason.INVALID_BID_PAYLOAD_VALUE, null);
                        return;
                    }
                    float f13 = f10;
                    float fI = y.m.i(cVar3.i()) - f10;
                    float fG = y.m.g(cVar3.i()) - f10;
                    int iA = t1.f4338a.a();
                    j1 j1Var2 = j1Var;
                    long j13 = jH;
                    z.d dVarG0 = cVar3.G0();
                    long jI = dVarG0.i();
                    dVarG0.e().n();
                    try {
                        dVarG0.c().a(f13, f13, fI, fG, iA);
                        j12 = jI;
                        try {
                            z.f.k(cVar3, j1Var2, 0L, 0L, j13, 0.0f, null, null, 0, 246, null);
                            dVarG0.e().j();
                            dVarG0.f(j12);
                        } catch (Throwable th2) {
                            th = th2;
                            dVarG0.e().j();
                            dVarG0.f(j12);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        j12 = jI;
                    }
                }
            });
        }
        if (this.f2247p == null) {
            this.f2247p = new c(null, null, null, null, 15, null);
        }
        c cVar3 = this.f2247p;
        Intrinsics.e(cVar3);
        final Path pathH = BorderKt.h(cVar3.g(), cVar2.b(), f10, z10);
        return cVar.v(new Function1<z.c, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((z.c) obj);
                return Unit.f64096a;
            }

            public final void invoke(z.c cVar4) {
                cVar4.X0();
                z.f.g(cVar4, pathH, j1Var, 0.0f, null, null, 0, 60, null);
            }
        });
    }

    public final j1 M1() {
        return this.f2249r;
    }

    public final a5 N1() {
        return this.f2250s;
    }

    public final float O1() {
        return this.f2248q;
    }

    public final void P1(j1 j1Var) {
        if (Intrinsics.c(this.f2249r, j1Var)) {
            return;
        }
        this.f2249r = j1Var;
        this.f2251t.o0();
    }

    public final void Q1(float f10) {
        if (o0.i.i(this.f2248q, f10)) {
            return;
        }
        this.f2248q = f10;
        this.f2251t.o0();
    }

    public final void z0(a5 a5Var) {
        if (Intrinsics.c(this.f2250s, a5Var)) {
            return;
        }
        this.f2250s = a5Var;
        this.f2251t.o0();
    }

    private BorderModifierNode(float f10, j1 j1Var, a5 a5Var) {
        this.f2248q = f10;
        this.f2249r = j1Var;
        this.f2250s = a5Var;
        this.f2251t = (androidx.compose.ui.draw.b) C1(androidx.compose.ui.draw.g.a(new Function1<androidx.compose.ui.draw.c, androidx.compose.ui.draw.h>() {
            {
                super(1);
            }

            @Override
            public final androidx.compose.ui.draw.h invoke(androidx.compose.ui.draw.c cVar) {
                if (cVar.D0(this.this$0.O1()) < 0.0f || y.m.h(cVar.i()) <= 0.0f) {
                    return BorderKt.i(cVar);
                }
                float f11 = 2;
                float fMin = Math.min(o0.i.i(this.this$0.O1(), o0.i.f67404b.a()) ? 1.0f : (float) Math.ceil(cVar.D0(this.this$0.O1())), (float) Math.ceil(y.m.h(cVar.i()) / f11));
                float f12 = fMin / f11;
                long jA = y.h.a(f12, f12);
                long jA2 = y.n.a(y.m.i(cVar.i()) - fMin, y.m.g(cVar.i()) - fMin);
                boolean z10 = f11 * fMin > y.m.h(cVar.i());
                k4 k4VarA = this.this$0.N1().a(cVar.i(), cVar.getLayoutDirection(), cVar);
                if (k4VarA instanceof k4.a) {
                    BorderModifierNode borderModifierNode = this.this$0;
                    return borderModifierNode.K1(cVar, borderModifierNode.M1(), (k4.a) k4VarA, z10, fMin);
                }
                if (k4VarA instanceof k4.c) {
                    BorderModifierNode borderModifierNode2 = this.this$0;
                    return borderModifierNode2.L1(cVar, borderModifierNode2.M1(), (k4.c) k4VarA, jA, jA2, z10, fMin);
                }
                if (k4VarA instanceof k4.b) {
                    return BorderKt.j(cVar, this.this$0.M1(), jA, jA2, z10, fMin);
                }
                throw new NoWhenBranchMatchedException();
            }
        }));
    }
}
