package defpackage;

import kotlinx.coroutines.flow.DistinctFlowImpl;

public abstract class k04 {
    public static final e74 a = new e74() {
        @Override
        public final Object invoke(Object obj) {
            return k04.d(obj);
        }
    };
    public static final s74 b = new s74() {
        @Override
        public final Object invoke(Object obj, Object obj2) {
            return Boolean.valueOf(k04.c(obj, obj2));
        }
    };

    public static final boolean c(Object obj, Object obj2) {
        return y45.e(obj, obj2);
    }

    public static final Object d(Object obj) {
        return obj;
    }

    public static final nz3 e(nz3 nz3Var) {
        return nz3Var instanceof gx9 ? nz3Var : g(nz3Var, a, b);
    }

    public static final nz3 f(nz3 nz3Var, e74 e74Var) {
        return g(nz3Var, e74Var, b);
    }

    public static final nz3 g(nz3 nz3Var, e74 e74Var, s74 s74Var) {
        if (nz3Var instanceof DistinctFlowImpl) {
            DistinctFlowImpl distinctFlowImpl = (DistinctFlowImpl) nz3Var;
            if (distinctFlowImpl.c == e74Var && distinctFlowImpl.d == s74Var) {
                return nz3Var;
            }
        }
        return new DistinctFlowImpl(nz3Var, e74Var, s74Var);
    }
}
