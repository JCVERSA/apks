package kotlinx.coroutines.flow;

import defpackage.c74;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.u74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlinx.coroutines.flow.internal.CombineKt;

public abstract class FlowKt__ZipKt {

    public static final class a implements nz3 {
        public final nz3 b;
        public final nz3 c;
        public final u74 d;

        public a(nz3 nz3Var, nz3 nz3Var2, u74 u74Var) {
            this.b = nz3Var;
            this.c = nz3Var2;
            this.d = u74Var;
        }

        @Override
        public Object collect(oz3 oz3Var, wh1 wh1Var) {
            Object objA = CombineKt.a(oz3Var, new nz3[]{this.b, this.c}, FlowKt__ZipKt.c(), new FlowKt__ZipKt$combine$1$1(this.d, null), wh1Var);
            return objA == z45.f() ? objA : zfb.a;
        }
    }

    public static final class b implements c74 {
        public static final b b = new b();

        @Override
        public final Void invoke() {
            return null;
        }
    }

    public static final nz3 b(nz3 nz3Var, nz3 nz3Var2, u74 u74Var) {
        return new a(nz3Var, nz3Var2, u74Var);
    }

    public static final c74 c() {
        return b.b;
    }
}
