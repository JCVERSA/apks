package kotlinx.coroutines.flow;

import defpackage.nz3;
import defpackage.oz3;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.jvm.internal.Ref$BooleanRef;

public abstract class FlowKt__LimitKt {

    public static final class a implements nz3 {
        public final nz3 b;
        public final s74 c;

        public a(nz3 nz3Var, s74 s74Var) {
            this.b = nz3Var;
            this.c = s74Var;
        }

        @Override
        public Object collect(oz3 oz3Var, wh1 wh1Var) {
            Object objCollect = this.b.collect(new FlowKt__LimitKt$dropWhile$1$1(new Ref$BooleanRef(), oz3Var, this.c), wh1Var);
            return objCollect == z45.f() ? objCollect : zfb.a;
        }
    }

    public static final nz3 a(nz3 nz3Var, s74 s74Var) {
        return new a(nz3Var, s74Var);
    }

    public static final nz3 b(nz3 nz3Var, s74 s74Var) {
        return new FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(nz3Var, s74Var);
    }
}
