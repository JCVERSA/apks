package defpackage;

import kotlinx.coroutines.flow.CallbackFlowBuilder;

public abstract class d04 {

    public static final class a implements nz3 {
        public final Object b;

        public a(Object obj) {
            this.b = obj;
        }

        @Override
        public Object collect(oz3 oz3Var, wh1 wh1Var) {
            Object objEmit = oz3Var.emit(this.b, wh1Var);
            return objEmit == z45.f() ? objEmit : zfb.a;
        }
    }

    public static final nz3 a(s74 s74Var) {
        return new CallbackFlowBuilder(s74Var, null, 0, null, 14, null);
    }

    public static final nz3 b(s74 s74Var) {
        return new vs0(s74Var, null, 0, null, 14, null);
    }

    public static final nz3 c(s74 s74Var) {
        return new y09(s74Var);
    }

    public static final nz3 d(Object obj) {
        return new a(obj);
    }
}
