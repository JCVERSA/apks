package b7;

import com.cloud.hisavana.sdk.F;
import com.cloud.hisavana.sdk.g3;
import com.cloud.hisavana.sdk.p3;
import kotlin.jvm.internal.Intrinsics;

public final class d extends a {

    private final String f15607m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(String placementId) {
        super(placementId);
        Intrinsics.h(placementId, "placementId");
        this.f15607m = placementId;
    }

    public final void s() {
        if (b()) {
            p3 p3VarG = new p3.b().i(5).e(this.f15592b).r(this.f15593c).l(this.f15594d).j(this.f15595e).d(this.f15600j).o(this.f15597g).v(this.f15598h).c(this.f15599i).g();
            Intrinsics.e(p3VarG);
            g3 g3Var = new g3(p3VarG);
            g3Var.g(new a.C0135a(this));
            g3Var.E();
        }
    }

    public final void t(com.cloud.hisavana.sdk.api.listener.d dVar) {
        p(dVar);
    }

    public final void u() {
        F f10 = this.f15591a;
        if (f10 instanceof g3) {
            try {
                this.f15602l.add(f10);
            } catch (Throwable unused) {
            }
            F f11 = this.f15591a;
            Intrinsics.f(f11, "null cannot be cast to non-null type com.cloud.hisavana.sdk.internal.rewarded.TranRewarded");
            ((g3) f11).L();
        }
    }
}
