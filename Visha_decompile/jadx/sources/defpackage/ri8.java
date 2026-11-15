package defpackage;

import java.util.List;

public abstract class ri8 {
    public static final List a(by6 by6Var) {
        y45.j(by6Var, "name");
        String strB = by6Var.b();
        y45.i(strB, "name.asString()");
        if (xc5.c(strB)) {
            return y71.o(b(by6Var));
        }
        return xc5.d(strB) ? f(by6Var) : rn0.a.b(by6Var);
    }

    public static final by6 b(by6 by6Var) {
        y45.j(by6Var, "methodName");
        by6 by6VarE = e(by6Var, "get", false, null, 12, null);
        return by6VarE == null ? e(by6Var, "is", false, null, 8, null) : by6VarE;
    }

    public static final by6 c(by6 by6Var, boolean z) {
        y45.j(by6Var, "methodName");
        return e(by6Var, "set", false, z ? "is" : null, 4, null);
    }

    public static final by6 d(by6 by6Var, String str, boolean z, String str2) {
        if (by6Var.h()) {
            return null;
        }
        String strE = by6Var.e();
        y45.i(strE, "methodName.identifier");
        if (!g1a.R(strE, str, false, 2, null) || strE.length() == str.length()) {
            return null;
        }
        char cCharAt = strE.charAt(str.length());
        if ('a' <= cCharAt && cCharAt < '{') {
            return null;
        }
        if (str2 != null) {
            return by6.g(str2 + j1a.F0(strE, str));
        }
        if (!z) {
            return by6Var;
        }
        String strC = kr0.c(j1a.F0(strE, str), true);
        if (by6.i(strC)) {
            return by6.g(strC);
        }
        return null;
    }

    public static by6 e(by6 by6Var, String str, boolean z, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        return d(by6Var, str, z, str2);
    }

    public static final List f(by6 by6Var) {
        y45.j(by6Var, "methodName");
        return y71.p(c(by6Var, false), c(by6Var, true));
    }
}
