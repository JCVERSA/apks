package androidx.compose.foundation;

import androidx.compose.ui.graphics.a5;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.k4;
import androidx.compose.ui.graphics.l4;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v4;
import androidx.compose.ui.node.u0;
import androidx.compose.ui.node.v0;
import androidx.compose.ui.unit.LayoutDirection;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

final class BackgroundNode extends androidx.compose.ui.f.c implements androidx.compose.ui.node.n, u0 {

    private long f2239n;

    private j1 f2240o;

    private float f2241p;

    private a5 f2242q;

    private long f2243r;

    private LayoutDirection f2244s;

    private k4 f2245t;

    private a5 f2246u;

    public BackgroundNode(long j10, j1 j1Var, float f10, a5 a5Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j1Var, f10, a5Var);
    }

    private final void C1(z.c cVar) {
        k4 k4VarE1 = E1(cVar);
        if (!u1.m(this.f2239n, u1.f4349b.e())) {
            l4.c(cVar, k4VarE1, this.f2239n, (60 & 4) != 0 ? 1.0f : 0.0f, (60 & 8) != 0 ? z.l.f76454a : null, (60 & 16) != 0 ? null : null, (60 & 32) != 0 ? z.g.f76450o1.a() : 0);
        }
        j1 j1Var = this.f2240o;
        if (j1Var != null) {
            l4.b(cVar, k4VarE1, j1Var, this.f2241p, null, null, 0, 56, null);
        }
    }

    private final void D1(z.c cVar) {
        if (!u1.m(this.f2239n, u1.f4349b.e())) {
            z.f.j(cVar, this.f2239n, 0L, 0L, 0.0f, null, null, 0, 126, null);
        }
        j1 j1Var = this.f2240o;
        if (j1Var != null) {
            z.f.i(cVar, j1Var, 0L, 0L, this.f2241p, null, null, 0, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v9, types: [T, androidx.compose.ui.graphics.k4, java.lang.Object] */
    private final k4 E1(final z.c cVar) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (y.m.f(cVar.i(), this.f2243r) && cVar.getLayoutDirection() == this.f2244s && Intrinsics.c(this.f2246u, this.f2242q)) {
            ?? r10 = this.f2245t;
            Intrinsics.e(r10);
            objectRef.element = r10;
        } else {
            v0.a(this, new Function0<Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m20invoke();
                    return Unit.f64096a;
                }

                /* JADX WARN: Type inference failed for: r1v2, types: [T, androidx.compose.ui.graphics.k4] */
                public final void m20invoke() {
                    objectRef.element = this.F1().a(cVar.i(), cVar.getLayoutDirection(), cVar);
                }
            });
        }
        this.f2245t = (k4) objectRef.element;
        this.f2243r = cVar.i();
        this.f2244s = cVar.getLayoutDirection();
        this.f2246u = this.f2242q;
        T t10 = objectRef.element;
        Intrinsics.e(t10);
        return (k4) t10;
    }

    public final a5 F1() {
        return this.f2242q;
    }

    public final void G1(j1 j1Var) {
        this.f2240o = j1Var;
    }

    public final void H1(long j10) {
        this.f2239n = j10;
    }

    @Override
    public void Z() {
        this.f2243r = y.m.f76020b.a();
        this.f2244s = null;
        this.f2245t = null;
        this.f2246u = null;
        androidx.compose.ui.node.o.a(this);
    }

    @Override
    public void n(z.c cVar) {
        if (this.f2242q == v4.a()) {
            D1(cVar);
        } else {
            C1(cVar);
        }
        cVar.X0();
    }

    public final void setAlpha(float f10) {
        this.f2241p = f10;
    }

    @Override
    public void w0() {
        androidx.compose.ui.node.m.a(this);
    }

    public final void z0(a5 a5Var) {
        this.f2242q = a5Var;
    }

    private BackgroundNode(long j10, j1 j1Var, float f10, a5 a5Var) {
        this.f2239n = j10;
        this.f2240o = j1Var;
        this.f2241p = f10;
        this.f2242q = a5Var;
        this.f2243r = y.m.f76020b.a();
    }
}
