package androidx.compose.material.ripple;

import androidx.compose.animation.core.Animatable;
import androidx.compose.ui.graphics.t1;
import androidx.compose.ui.graphics.u1;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import y.m;

final class StateLayer {

    private final boolean f3180a;

    private final Function0 f3181b;

    private final Animatable f3182c = androidx.compose.animation.core.a.b(0.0f, 0.0f, 2, null);

    private final List f3183d = new ArrayList();

    private p.f f3184e;

    public StateLayer(boolean z10, Function0 function0) {
        this.f3180a = z10;
        this.f3181b = function0;
    }

    public final void b(z.g gVar, float f10, long j10) {
        long j11;
        float fFloatValue = ((Number) this.f3182c.k()).floatValue();
        if (fFloatValue <= 0.0f) {
            return;
        }
        long jK = u1.k(j10, fFloatValue, 0.0f, 0.0f, 0.0f, 14, null);
        if (!this.f3180a) {
            z.f.d(gVar, jK, f10, 0L, 0.0f, null, null, 0, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, null);
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
            j11 = jI;
            try {
                z.f.d(gVar, jK, f10, 0L, 0.0f, null, null, 0, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, null);
                dVarG0.e().j();
                dVarG0.f(j11);
            } catch (Throwable th2) {
                th = th2;
                dVarG0.e().j();
                dVarG0.f(j11);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            j11 = jI;
        }
    }

    public final void c(p.f fVar, n0 n0Var) {
        float fA;
        boolean z10 = fVar instanceof p.d;
        if (z10) {
            this.f3183d.add(fVar);
        } else if (fVar instanceof p.e) {
            this.f3183d.remove(((p.e) fVar).a());
        } else if (fVar instanceof p.b) {
            this.f3183d.add(fVar);
        } else if (fVar instanceof p.c) {
            this.f3183d.remove(((p.c) fVar).a());
        } else if (fVar instanceof p.a.b) {
            this.f3183d.add(fVar);
        } else if (fVar instanceof p.a.c) {
            this.f3183d.remove(((p.a.c) fVar).a());
        } else if (!(fVar instanceof p.a.C0847a)) {
            return;
        } else {
            this.f3183d.remove(((p.a.C0847a) fVar).a());
        }
        p.f fVar2 = (p.f) CollectionsKt.v0(this.f3183d);
        if (Intrinsics.c(this.f3184e, fVar2)) {
            return;
        }
        if (fVar2 != null) {
            c cVar = (c) this.f3181b.invoke();
            if (z10) {
                fA = cVar.c();
            } else if (fVar instanceof p.b) {
                fA = cVar.b();
            } else {
                fA = fVar instanceof p.a.b ? cVar.a() : 0.0f;
            }
            kotlinx.coroutines.k.d(n0Var, null, null, new StateLayer$handleInteraction$1(this, fA, h.d(fVar2), null), 3, null);
        } else {
            kotlinx.coroutines.k.d(n0Var, null, null, new StateLayer$handleInteraction$2(this, h.e(this.f3184e), null), 3, null);
        }
        this.f3184e = fVar2;
    }
}
