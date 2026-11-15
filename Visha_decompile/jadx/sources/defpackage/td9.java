package defpackage;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class td9 {
    public td9(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static ef5 c(td9 td9Var, de5 de5Var, List list, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getContextual");
        }
        if ((i & 2) != 0) {
            list = y71.k();
        }
        return td9Var.b(de5Var, list);
    }

    public abstract void a(vd9 vd9Var);

    public abstract ef5 b(de5 de5Var, List list);

    public abstract k92 d(de5 de5Var, String str);

    public abstract nd9 e(de5 de5Var, Object obj);

    public td9() {
    }
}
