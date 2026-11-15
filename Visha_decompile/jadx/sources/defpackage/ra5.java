package defpackage;

import com.yandex.div.json.ParsingException;
import com.yandex.div.json.expressions.Expression;
import java.util.List;
import org.json.JSONObject;

public abstract class ra5 {
    public static final pnb a = new pnb() {
        @Override
        public final boolean a(Object obj) {
            return ra5.b((String) obj);
        }
    };

    public static tp3 A(ex7 ex7Var, JSONObject jSONObject, String str, boolean z, tp3 tp3Var, yi5 yi5Var, hm5 hm5Var) {
        List listS = tb5.s(ex7Var, jSONObject, str, yi5Var, hm5Var);
        if (listS != null) {
            return new tp3.e(z, listS);
        }
        String strB = B(ex7Var, jSONObject, str);
        if (strB != null) {
            return new tp3.d(z, strB);
        }
        return tp3Var != null ? yp3.a(tp3Var, z) : tp3.c.a(z);
    }

    public static String B(ex7 ex7Var, JSONObject jSONObject, String str) {
        return (String) tb5.o(ex7Var, jSONObject, '$' + str, a);
    }

    public static tp3 C(boolean z, String str, tp3 tp3Var) {
        if (str != null) {
            return new tp3.d(z, str);
        }
        if (tp3Var != null) {
            return yp3.a(tp3Var, z);
        }
        if (z) {
            return tp3.c.a(z);
        }
        return null;
    }

    public static void D(ex7 ex7Var, JSONObject jSONObject, String str, tp3 tp3Var) {
        E(ex7Var, jSONObject, str, tp3Var, ob5.f());
    }

    public static void E(ex7 ex7Var, JSONObject jSONObject, String str, tp3 tp3Var, e74 e74Var) {
        if (tp3Var instanceof tp3.e) {
            pa5.q(ex7Var, jSONObject, str, (Expression) ((tp3.e) tp3Var).d, e74Var);
        } else if (tp3Var instanceof tp3.d) {
            tb5.v(ex7Var, jSONObject, "$" + str, ((tp3.d) tp3Var).d);
        }
    }

    public static void F(ex7 ex7Var, JSONObject jSONObject, String str, tp3 tp3Var, e74 e74Var) {
        if (tp3Var instanceof tp3.e) {
            pa5.r(ex7Var, jSONObject, str, (nj3) ((tp3.e) tp3Var).d, e74Var);
        } else if (tp3Var instanceof tp3.d) {
            tb5.v(ex7Var, jSONObject, "$" + str, ((tp3.d) tp3Var).d);
        }
    }

    public static void G(ex7 ex7Var, JSONObject jSONObject, String str, tp3 tp3Var) {
        H(ex7Var, jSONObject, str, tp3Var, ob5.f());
    }

    public static void H(ex7 ex7Var, JSONObject jSONObject, String str, tp3 tp3Var, e74 e74Var) {
        if (tp3Var instanceof tp3.e) {
            tb5.w(ex7Var, jSONObject, str, ((tp3.e) tp3Var).d, e74Var);
        } else if (tp3Var instanceof tp3.d) {
            tb5.v(ex7Var, jSONObject, "$" + str, ((tp3.d) tp3Var).d);
        }
    }

    public static void I(ex7 ex7Var, JSONObject jSONObject, String str, tp3 tp3Var, yi5 yi5Var) {
        if (tp3Var instanceof tp3.e) {
            tb5.x(ex7Var, jSONObject, str, ((tp3.e) tp3Var).d, yi5Var);
        } else if (tp3Var instanceof tp3.d) {
            tb5.v(ex7Var, jSONObject, "$" + str, ((tp3.d) tp3Var).d);
        }
    }

    public static void J(ex7 ex7Var, JSONObject jSONObject, String str, tp3 tp3Var, e74 e74Var) {
        if (tp3Var instanceof tp3.e) {
            tb5.y(ex7Var, jSONObject, str, (List) ((tp3.e) tp3Var).d, e74Var);
        } else if (tp3Var instanceof tp3.d) {
            tb5.v(ex7Var, jSONObject, "$" + str, ((tp3.d) tp3Var).d);
        }
    }

    public static void K(ex7 ex7Var, JSONObject jSONObject, String str, tp3 tp3Var, yi5 yi5Var) {
        if (tp3Var instanceof tp3.e) {
            tb5.z(ex7Var, jSONObject, str, (List) ((tp3.e) tp3Var).d, yi5Var);
        } else if (tp3Var instanceof tp3.d) {
            tb5.v(ex7Var, jSONObject, "$" + str, ((tp3.d) tp3Var).d);
        }
    }

    public static boolean b(String str) {
        return !str.isEmpty();
    }

    public static tp3 c(ex7 ex7Var, JSONObject jSONObject, String str, boolean z, tp3 tp3Var) {
        return e(ex7Var, jSONObject, str, z, tp3Var, ob5.f(), ob5.e());
    }

    public static tp3 d(ex7 ex7Var, JSONObject jSONObject, String str, boolean z, tp3 tp3Var, e74 e74Var) {
        return e(ex7Var, jSONObject, str, z, tp3Var, e74Var, ob5.e());
    }

    public static tp3 e(ex7 ex7Var, JSONObject jSONObject, String str, boolean z, tp3 tp3Var, e74 e74Var, pnb pnbVar) {
        try {
            return new tp3.e(z, tb5.f(ex7Var, jSONObject, str, e74Var, pnbVar));
        } catch (ParsingException e) {
            bc5.a(e);
            tp3 tp3VarC = C(z, B(ex7Var, jSONObject, str), tp3Var);
            if (tp3VarC != null) {
                return tp3VarC;
            }
            throw e;
        }
    }

    public static tp3 f(ex7 ex7Var, JSONObject jSONObject, String str, boolean z, tp3 tp3Var, yi5 yi5Var) {
        try {
            return new tp3.e(z, tb5.g(ex7Var, jSONObject, str, yi5Var));
        } catch (ParsingException e) {
            bc5.a(e);
            tp3 tp3VarC = C(z, B(ex7Var, jSONObject, str), tp3Var);
            if (tp3VarC != null) {
                return tp3VarC;
            }
            throw e;
        }
    }

    public static tp3 g(ex7 ex7Var, JSONObject jSONObject, String str, boolean z, tp3 tp3Var, pnb pnbVar) {
        return e(ex7Var, jSONObject, str, z, tp3Var, ob5.f(), pnbVar);
    }

    public static tp3 h(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, boolean z, tp3 tp3Var) {
        return j(ex7Var, jSONObject, str, zbbVar, z, tp3Var, ob5.f(), ob5.e());
    }

    public static tp3 i(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, boolean z, tp3 tp3Var, e74 e74Var) {
        return j(ex7Var, jSONObject, str, zbbVar, z, tp3Var, e74Var, ob5.e());
    }

    public static tp3 j(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, boolean z, tp3 tp3Var, e74 e74Var, pnb pnbVar) {
        try {
            return new tp3.e(z, pa5.f(ex7Var, jSONObject, str, zbbVar, e74Var, pnbVar));
        } catch (ParsingException e) {
            bc5.a(e);
            tp3 tp3VarC = C(z, B(ex7Var, jSONObject, str), tp3Var);
            if (tp3VarC != null) {
                return tp3VarC;
            }
            throw e;
        }
    }

    public static tp3 k(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, boolean z, tp3 tp3Var, pnb pnbVar) {
        return j(ex7Var, jSONObject, str, zbbVar, z, tp3Var, ob5.f(), pnbVar);
    }

    public static tp3 l(ex7 ex7Var, JSONObject jSONObject, String str, boolean z, tp3 tp3Var, yi5 yi5Var) {
        try {
            return new tp3.e(z, tb5.i(ex7Var, jSONObject, str, yi5Var));
        } catch (ParsingException e) {
            bc5.a(e);
            tp3 tp3VarC = C(z, B(ex7Var, jSONObject, str), tp3Var);
            if (tp3VarC != null) {
                return tp3VarC;
            }
            throw e;
        }
    }

    public static tp3 m(ex7 ex7Var, JSONObject jSONObject, String str, boolean z, tp3 tp3Var, yi5 yi5Var, hm5 hm5Var) {
        try {
            return new tp3.e(z, tb5.j(ex7Var, jSONObject, str, yi5Var, hm5Var));
        } catch (ParsingException e) {
            bc5.a(e);
            tp3 tp3VarC = C(z, B(ex7Var, jSONObject, str), tp3Var);
            if (tp3VarC != null) {
                return tp3VarC;
            }
            throw e;
        }
    }

    public static tp3 n(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, boolean z, tp3 tp3Var, e74 e74Var, hm5 hm5Var) {
        return o(ex7Var, jSONObject, str, zbbVar, z, tp3Var, e74Var, hm5Var, ob5.e());
    }

    public static tp3 o(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, boolean z, tp3 tp3Var, e74 e74Var, hm5 hm5Var, pnb pnbVar) {
        nj3 nj3VarO = pa5.o(ex7Var, jSONObject, str, zbbVar, e74Var, hm5Var, pnbVar);
        if (nj3VarO != null) {
            return new tp3.e(z, nj3VarO);
        }
        String strB = B(ex7Var, jSONObject, str);
        if (strB != null) {
            return new tp3.d(z, strB);
        }
        return tp3Var != null ? yp3.a(tp3Var, z) : tp3.c.a(z);
    }

    public static tp3 p(ex7 ex7Var, JSONObject jSONObject, String str, boolean z, tp3 tp3Var) {
        return r(ex7Var, jSONObject, str, z, tp3Var, ob5.f(), ob5.e());
    }

    public static tp3 q(ex7 ex7Var, JSONObject jSONObject, String str, boolean z, tp3 tp3Var, e74 e74Var) {
        return r(ex7Var, jSONObject, str, z, tp3Var, e74Var, ob5.e());
    }

    public static tp3 r(ex7 ex7Var, JSONObject jSONObject, String str, boolean z, tp3 tp3Var, e74 e74Var, pnb pnbVar) {
        Object objM = tb5.m(ex7Var, jSONObject, str, e74Var, pnbVar);
        if (objM != null) {
            return new tp3.e(z, objM);
        }
        String strB = B(ex7Var, jSONObject, str);
        if (strB != null) {
            return new tp3.d(z, strB);
        }
        return tp3Var != null ? yp3.a(tp3Var, z) : tp3.c.a(z);
    }

    public static tp3 s(ex7 ex7Var, JSONObject jSONObject, String str, boolean z, tp3 tp3Var, yi5 yi5Var) {
        Object objN = tb5.n(ex7Var, jSONObject, str, yi5Var);
        if (objN != null) {
            return new tp3.e(z, objN);
        }
        String strB = B(ex7Var, jSONObject, str);
        if (strB != null) {
            return new tp3.d(z, strB);
        }
        return tp3Var != null ? yp3.a(tp3Var, z) : tp3.c.a(z);
    }

    public static tp3 t(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, boolean z, tp3 tp3Var) {
        return v(ex7Var, jSONObject, str, zbbVar, z, tp3Var, ob5.f(), ob5.e());
    }

    public static tp3 u(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, boolean z, tp3 tp3Var, e74 e74Var) {
        return v(ex7Var, jSONObject, str, zbbVar, z, tp3Var, e74Var, ob5.e());
    }

    public static tp3 v(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, boolean z, tp3 tp3Var, e74 e74Var, pnb pnbVar) {
        Expression expressionK = pa5.k(ex7Var, jSONObject, str, zbbVar, e74Var, pnbVar, null);
        if (expressionK != null) {
            return new tp3.e(z, expressionK);
        }
        String strB = B(ex7Var, jSONObject, str);
        if (strB != null) {
            return new tp3.d(z, strB);
        }
        return tp3Var != null ? yp3.a(tp3Var, z) : tp3.c.a(z);
    }

    public static tp3 w(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, boolean z, tp3 tp3Var, pnb pnbVar) {
        return v(ex7Var, jSONObject, str, zbbVar, z, tp3Var, ob5.f(), pnbVar);
    }

    public static tp3 x(ex7 ex7Var, JSONObject jSONObject, String str, boolean z, tp3 tp3Var, e74 e74Var, hm5 hm5Var) {
        return y(ex7Var, jSONObject, str, z, tp3Var, e74Var, hm5Var, ob5.e());
    }

    public static tp3 y(ex7 ex7Var, JSONObject jSONObject, String str, boolean z, tp3 tp3Var, e74 e74Var, hm5 hm5Var, pnb pnbVar) {
        List listQ = tb5.q(ex7Var, jSONObject, str, e74Var, hm5Var, pnbVar);
        if (listQ != null) {
            return new tp3.e(z, listQ);
        }
        String strB = B(ex7Var, jSONObject, str);
        if (strB != null) {
            return new tp3.d(z, strB);
        }
        return tp3Var != null ? yp3.a(tp3Var, z) : tp3.c.a(z);
    }

    public static tp3 z(ex7 ex7Var, JSONObject jSONObject, String str, boolean z, tp3 tp3Var, yi5 yi5Var) {
        List listR = tb5.r(ex7Var, jSONObject, str, yi5Var);
        if (listR != null) {
            return new tp3.e(z, listR);
        }
        String strB = B(ex7Var, jSONObject, str);
        if (strB != null) {
            return new tp3.d(z, strB);
        }
        return tp3Var != null ? yp3.a(tp3Var, z) : tp3.c.a(z);
    }
}
