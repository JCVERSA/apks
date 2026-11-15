package defpackage;

import kotlinx.coroutines.selects.TrySelectDetailedResult;

public abstract class ya9 {
    public static final u74 a = a.b;
    public static final y7a b = new y7a("STATE_REG");
    public static final y7a c = new y7a("STATE_COMPLETED");
    public static final y7a d = new y7a("STATE_CANCELLED");
    public static final y7a e = new y7a("NO_RESULT");
    public static final y7a f = new y7a("PARAM_CLAUSE_0");

    public static final class a implements u74 {
        public static final a b = new a();

        @Override
        public final Void invoke(Object obj, Object obj2, Object obj3) {
            return null;
        }
    }

    public static final TrySelectDetailedResult a(int i) {
        if (i == 0) {
            return TrySelectDetailedResult.SUCCESSFUL;
        }
        if (i == 1) {
            return TrySelectDetailedResult.REREGISTER;
        }
        if (i == 2) {
            return TrySelectDetailedResult.CANCELLED;
        }
        if (i == 3) {
            return TrySelectDetailedResult.ALREADY_SELECTED;
        }
        throw new IllegalStateException(("Unexpected internal result: " + i).toString());
    }

    public static final y7a i() {
        return f;
    }

    public static final boolean j(cr0 cr0Var, u74 u74Var) {
        Object objTryResume = cr0Var.tryResume(zfb.a, null, u74Var);
        if (objTryResume == null) {
            return false;
        }
        cr0Var.completeResume(objTryResume);
        return true;
    }
}
