package androidx.compose.ui.node;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.p4;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d0 implements z.g, z.c {

    private final z.a f5075a;

    private n f5076b;

    /* JADX WARN: Multi-variable type inference failed */
    public d0() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override
    public float B0() {
        return this.f5075a.B0();
    }

    @Override
    public void C0(Path path, long j10, float f10, z.h hVar, v1 v1Var, int i10) {
        this.f5075a.C0(path, j10, f10, hVar, v1Var, i10);
    }

    @Override
    public float D0(float f10) {
        return this.f5075a.D0(f10);
    }

    @Override
    public void F0(List list, int i10, long j10, float f10, int i11, p4 p4Var, float f11, v1 v1Var, int i12) {
        this.f5075a.F0(list, i10, j10, f10, i11, p4Var, f11, v1Var, i12);
    }

    @Override
    public z.d G0() {
        return this.f5075a.G0();
    }

    @Override
    public long H(float f10) {
        return this.f5075a.H(f10);
    }

    @Override
    public float J(long j10) {
        return this.f5075a.J(j10);
    }

    @Override
    public void J0(long j10, float f10, long j11, float f11, z.h hVar, v1 v1Var, int i10) {
        this.f5075a.J0(j10, f10, j11, f11, hVar, v1Var, i10);
    }

    @Override
    public void K0(long j10, long j11, long j12, float f10, z.h hVar, v1 v1Var, int i10) {
        this.f5075a.K0(j10, j11, j12, f10, hVar, v1Var, i10);
    }

    @Override
    public void M0(androidx.compose.ui.graphics.j1 j1Var, long j10, long j11, float f10, z.h hVar, v1 v1Var, int i10) {
        this.f5075a.M0(j1Var, j10, j11, f10, hVar, v1Var, i10);
    }

    @Override
    public long N0() {
        return this.f5075a.N0();
    }

    @Override
    public long P0(long j10) {
        return this.f5075a.P0(j10);
    }

    @Override
    public long Q(float f10) {
        return this.f5075a.Q(f10);
    }

    @Override
    public void T(long j10, long j11, long j12, long j13, z.h hVar, float f10, v1 v1Var, int i10) {
        this.f5075a.T(j10, j11, j12, j13, hVar, f10, v1Var, i10);
    }

    @Override
    public void T0(e4 e4Var, long j10, long j11, long j12, long j13, float f10, z.h hVar, v1 v1Var, int i10, int i11) {
        this.f5075a.T0(e4Var, j10, j11, j12, j13, f10, hVar, v1Var, i10, i11);
    }

    @Override
    public void U0(androidx.compose.ui.graphics.j1 j1Var, long j10, long j11, long j12, float f10, z.h hVar, v1 v1Var, int i10) {
        this.f5075a.U0(j1Var, j10, j11, j12, f10, hVar, v1Var, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v5, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v6 */
    @Override
    public void X0() {
        androidx.compose.ui.graphics.m1 m1VarE = G0().e();
        n nVar = this.f5076b;
        Intrinsics.e(nVar);
        ?? B = e0.b(nVar);
        if (B == 0) {
            NodeCoordinator nodeCoordinatorH = g.h(nVar, s0.a(4));
            if (nodeCoordinatorH.X1() == nVar.getNode()) {
                nodeCoordinatorH = nodeCoordinatorH.Y1();
                Intrinsics.e(nodeCoordinatorH);
            }
            nodeCoordinatorH.t2(m1VarE, G0().g());
            return;
        }
        int iA = s0.a(4);
        ?? bVar = 0;
        while (B != 0) {
            if (B instanceof n) {
                z((n) B, m1VarE, G0().g());
            } else if ((B.e1() & iA) != 0 && (B instanceof i)) {
                androidx.compose.ui.f.c cVarD1 = ((i) B).D1();
                int i10 = 0;
                B = B;
                bVar = bVar;
                while (cVarD1 != null) {
                    if ((cVarD1.e1() & iA) != 0) {
                        i10++;
                        if (i10 == 1) {
                            bVar = bVar;
                            B = cVarD1;
                        } else {
                            if (bVar == 0) {
                                bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                            }
                            if (B != 0) {
                                bVar.b(B);
                                B = 0;
                            }
                            bVar.b(cVarD1);
                        }
                    }
                    cVarD1 = cVarD1.a1();
                    B = B;
                    bVar = bVar;
                }
                if (i10 == 1) {
                }
            }
            B = g.g(bVar);
        }
    }

    @Override
    public int c0(float f10) {
        return this.f5075a.c0(f10);
    }

    @Override
    public float getDensity() {
        return this.f5075a.getDensity();
    }

    @Override
    public LayoutDirection getLayoutDirection() {
        return this.f5075a.getLayoutDirection();
    }

    @Override
    public float h0(long j10) {
        return this.f5075a.h0(j10);
    }

    @Override
    public long i() {
        return this.f5075a.i();
    }

    @Override
    public void i0(Path path, androidx.compose.ui.graphics.j1 j1Var, float f10, z.h hVar, v1 v1Var, int i10) {
        this.f5075a.i0(path, j1Var, f10, hVar, v1Var, i10);
    }

    public final void n(androidx.compose.ui.graphics.m1 m1Var, long j10, NodeCoordinator nodeCoordinator, androidx.compose.ui.f.c cVar, GraphicsLayer graphicsLayer) {
        int iA = s0.a(4);
        androidx.compose.ui.f.c cVarG = cVar;
        androidx.compose.runtime.collection.b bVar = null;
        while (cVarG != null) {
            if (cVarG instanceof n) {
                v(m1Var, j10, nodeCoordinator, (n) cVarG, graphicsLayer);
            } else if ((cVarG.e1() & iA) != 0 && (cVarG instanceof i)) {
                int i10 = 0;
                for (androidx.compose.ui.f.c cVarD1 = ((i) cVarG).D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
                    if ((cVarD1.e1() & iA) != 0) {
                        i10++;
                        if (i10 == 1) {
                            cVarG = cVarD1;
                        } else {
                            if (bVar == null) {
                                bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                            }
                            if (cVarG != null) {
                                bVar.b(cVarG);
                                cVarG = null;
                            }
                            bVar.b(cVarD1);
                        }
                    }
                }
                if (i10 == 1) {
                }
            }
            cVarG = g.g(bVar);
        }
    }

    @Override
    public void q0(long j10, long j11, long j12, float f10, int i10, p4 p4Var, float f11, v1 v1Var, int i11) {
        this.f5075a.q0(j10, j11, j12, f10, i10, p4Var, f11, v1Var, i11);
    }

    public final void v(androidx.compose.ui.graphics.m1 m1Var, long j10, NodeCoordinator nodeCoordinator, n nVar, GraphicsLayer graphicsLayer) {
        n nVar2 = this.f5076b;
        this.f5076b = nVar;
        z.a aVar = this.f5075a;
        LayoutDirection layoutDirection = nodeCoordinator.getLayoutDirection();
        o0.e density = aVar.G0().getDensity();
        LayoutDirection layoutDirection2 = aVar.G0().getLayoutDirection();
        androidx.compose.ui.graphics.m1 m1VarE = aVar.G0().e();
        long jI = aVar.G0().i();
        GraphicsLayer graphicsLayerG = aVar.G0().g();
        z.d dVarG0 = aVar.G0();
        dVarG0.b(nodeCoordinator);
        dVarG0.a(layoutDirection);
        dVarG0.h(m1Var);
        dVarG0.f(j10);
        dVarG0.d(graphicsLayer);
        m1Var.n();
        try {
            nVar.n(this);
            m1Var.j();
            z.d dVarG1 = aVar.G0();
            dVarG1.b(density);
            dVarG1.a(layoutDirection2);
            dVarG1.h(m1VarE);
            dVarG1.f(jI);
            dVarG1.d(graphicsLayerG);
            this.f5076b = nVar2;
        } catch (Throwable th2) {
            m1Var.j();
            z.d dVarG2 = aVar.G0();
            dVarG2.b(density);
            dVarG2.a(layoutDirection2);
            dVarG2.h(m1VarE);
            dVarG2.f(jI);
            dVarG2.d(graphicsLayerG);
            throw th2;
        }
    }

    @Override
    public float x0(float f10) {
        return this.f5075a.x0(f10);
    }

    public final void z(n nVar, androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer) {
        NodeCoordinator nodeCoordinatorH = g.h(nVar, s0.a(4));
        nodeCoordinatorH.Z0().W().v(m1Var, o0.u.d(nodeCoordinatorH.k()), nodeCoordinatorH, nVar, graphicsLayer);
    }

    public d0(z.a aVar) {
        this.f5075a = aVar;
    }

    public d0(z.a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new z.a() : aVar);
    }
}
