package defpackage;

import com.yandex.div.json.ParsingException;
import com.yandex.div.json.expressions.Expression;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public abstract class sa5 {
    public static List A(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, e74 e74Var, hm5 hm5Var, pnb pnbVar) {
        if (tp3Var.b && jSONObject.has(str)) {
            return tb5.q(ex7Var, jSONObject, str, e74Var, hm5Var, pnbVar);
        }
        int i = tp3Var.a;
        if (i == 2) {
            return (List) ((tp3.e) tp3Var).d;
        }
        if (i == 3) {
            return tb5.q(ex7Var, jSONObject, ((tp3.d) tp3Var).d, e74Var, hm5Var, pnbVar);
        }
        return null;
    }

    public static List B(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, yi5 yi5Var, yi5 yi5Var2) {
        if (tp3Var.b && jSONObject.has(str)) {
            return tb5.r(ex7Var, jSONObject, str, yi5Var2);
        }
        int i = tp3Var.a;
        if (i != 2) {
            if (i == 3) {
                return tb5.r(ex7Var, jSONObject, ((tp3.d) tp3Var).d, yi5Var2);
            }
            return null;
        }
        List list = (List) ((tp3.e) tp3Var).d;
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        lga lgaVar = (lga) yi5Var.getValue();
        for (int i2 = 0; i2 < size; i2++) {
            Object objQ = q(ex7Var, (za3) list.get(i2), jSONObject, lgaVar);
            if (objQ != null) {
                arrayList.add(objQ);
            }
        }
        return arrayList;
    }

    public static List C(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, yi5 yi5Var, yi5 yi5Var2, hm5 hm5Var) {
        if (tp3Var.b && jSONObject.has(str)) {
            return tb5.s(ex7Var, jSONObject, str, yi5Var2, hm5Var);
        }
        int i = tp3Var.a;
        if (i != 2) {
            if (i == 3) {
                return tb5.s(ex7Var, jSONObject, ((tp3.d) tp3Var).d, yi5Var2, hm5Var);
            }
            return null;
        }
        List list = (List) ((tp3.e) tp3Var).d;
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        lga lgaVar = (lga) yi5Var.getValue();
        for (int i2 = 0; i2 < size; i2++) {
            Object objQ = q(ex7Var, (za3) list.get(i2), jSONObject, lgaVar);
            if (objQ != null) {
                arrayList.add(objQ);
            }
        }
        if (hm5Var.a(arrayList)) {
            return arrayList;
        }
        ex7Var.getLogger().c(mx7.j(jSONObject, str, arrayList));
        return null;
    }

    public static Object a(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str) {
        return c(ex7Var, tp3Var, jSONObject, str, ob5.f(), ob5.e());
    }

    public static Object b(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, e74 e74Var) {
        return c(ex7Var, tp3Var, jSONObject, str, e74Var, ob5.e());
    }

    public static Object c(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, e74 e74Var, pnb pnbVar) {
        if (tp3Var.b && jSONObject.has(str)) {
            return tb5.f(ex7Var, jSONObject, str, e74Var, pnbVar);
        }
        int i = tp3Var.a;
        if (i == 2) {
            return ((tp3.e) tp3Var).d;
        }
        if (i == 3) {
            return tb5.f(ex7Var, jSONObject, ((tp3.d) tp3Var).d, e74Var, pnbVar);
        }
        throw mx7.m(jSONObject, str);
    }

    public static Object d(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, yi5 yi5Var, yi5 yi5Var2) {
        if (tp3Var.b && jSONObject.has(str)) {
            return tb5.g(ex7Var, jSONObject, str, yi5Var2);
        }
        int i = tp3Var.a;
        if (i == 2) {
            return f(ex7Var, (za3) ((tp3.e) tp3Var).d, jSONObject, str, (lga) yi5Var.getValue());
        }
        if (i == 3) {
            return tb5.g(ex7Var, jSONObject, ((tp3.d) tp3Var).d, yi5Var2);
        }
        throw mx7.m(jSONObject, str);
    }

    public static Object e(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, pnb pnbVar) {
        return c(ex7Var, tp3Var, jSONObject, str, ob5.f(), pnbVar);
    }

    public static Object f(ex7 ex7Var, za3 za3Var, JSONObject jSONObject, String str, lga lgaVar) {
        try {
            return lgaVar.a(ex7Var, za3Var, jSONObject);
        } catch (ParsingException e) {
            throw mx7.b(jSONObject, str, e);
        }
    }

    public static Expression g(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, zbb zbbVar) {
        if (tp3Var.b && jSONObject.has(str)) {
            return pa5.d(ex7Var, jSONObject, str, zbbVar);
        }
        int i = tp3Var.a;
        if (i == 2) {
            return (Expression) ((tp3.e) tp3Var).d;
        }
        if (i == 3) {
            return pa5.d(ex7Var, jSONObject, ((tp3.d) tp3Var).d, zbbVar);
        }
        throw mx7.m(jSONObject, str);
    }

    public static Expression h(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, zbb zbbVar, e74 e74Var) {
        if (tp3Var.b && jSONObject.has(str)) {
            return pa5.e(ex7Var, jSONObject, str, zbbVar, e74Var);
        }
        int i = tp3Var.a;
        if (i == 2) {
            return (Expression) ((tp3.e) tp3Var).d;
        }
        if (i == 3) {
            return pa5.e(ex7Var, jSONObject, ((tp3.d) tp3Var).d, zbbVar, e74Var);
        }
        throw mx7.m(jSONObject, str);
    }

    public static Expression i(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, zbb zbbVar, e74 e74Var, pnb pnbVar) {
        if (tp3Var.b && jSONObject.has(str)) {
            return pa5.f(ex7Var, jSONObject, str, zbbVar, e74Var, pnbVar);
        }
        int i = tp3Var.a;
        if (i == 2) {
            return (Expression) ((tp3.e) tp3Var).d;
        }
        if (i == 3) {
            return pa5.f(ex7Var, jSONObject, ((tp3.d) tp3Var).d, zbbVar, e74Var, pnbVar);
        }
        throw mx7.m(jSONObject, str);
    }

    public static Expression j(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, zbb zbbVar, pnb pnbVar) {
        if (tp3Var.b && jSONObject.has(str)) {
            return pa5.g(ex7Var, jSONObject, str, zbbVar, pnbVar);
        }
        int i = tp3Var.a;
        if (i == 2) {
            return (Expression) ((tp3.e) tp3Var).d;
        }
        if (i == 3) {
            return pa5.g(ex7Var, jSONObject, ((tp3.d) tp3Var).d, zbbVar, pnbVar);
        }
        throw mx7.m(jSONObject, str);
    }

    public static List k(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, yi5 yi5Var, yi5 yi5Var2) {
        if (tp3Var.b && jSONObject.has(str)) {
            return tb5.i(ex7Var, jSONObject, str, yi5Var2);
        }
        int i = tp3Var.a;
        if (i != 2) {
            if (i == 3) {
                return tb5.i(ex7Var, jSONObject, ((tp3.d) tp3Var).d, yi5Var2);
            }
            throw mx7.m(jSONObject, str);
        }
        List list = (List) ((tp3.e) tp3Var).d;
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        lga lgaVar = (lga) yi5Var.getValue();
        for (int i2 = 0; i2 < size; i2++) {
            Object objQ = q(ex7Var, (za3) list.get(i2), jSONObject, lgaVar);
            if (objQ != null) {
                arrayList.add(objQ);
            }
        }
        return arrayList;
    }

    public static List l(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, yi5 yi5Var, yi5 yi5Var2, hm5 hm5Var) {
        if (tp3Var.b && jSONObject.has(str)) {
            return tb5.j(ex7Var, jSONObject, str, yi5Var2, hm5Var);
        }
        int i = tp3Var.a;
        if (i != 2) {
            if (i == 3) {
                return tb5.j(ex7Var, jSONObject, ((tp3.d) tp3Var).d, yi5Var2, hm5Var);
            }
            throw mx7.m(jSONObject, str);
        }
        List list = (List) ((tp3.e) tp3Var).d;
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        lga lgaVar = (lga) yi5Var.getValue();
        for (int i2 = 0; i2 < size; i2++) {
            Object objQ = q(ex7Var, (za3) list.get(i2), jSONObject, lgaVar);
            if (objQ != null) {
                arrayList.add(objQ);
            }
        }
        if (hm5Var.a(arrayList)) {
            return arrayList;
        }
        throw mx7.j(jSONObject, str, arrayList);
    }

    public static Object m(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str) {
        return o(ex7Var, tp3Var, jSONObject, str, ob5.f(), ob5.e());
    }

    public static Object n(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, e74 e74Var) {
        return o(ex7Var, tp3Var, jSONObject, str, e74Var, ob5.e());
    }

    public static Object o(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, e74 e74Var, pnb pnbVar) {
        if (tp3Var.b && jSONObject.has(str)) {
            return tb5.m(ex7Var, jSONObject, str, e74Var, pnbVar);
        }
        int i = tp3Var.a;
        if (i == 2) {
            return ((tp3.e) tp3Var).d;
        }
        if (i == 3) {
            return tb5.m(ex7Var, jSONObject, ((tp3.d) tp3Var).d, e74Var, pnbVar);
        }
        return null;
    }

    public static Object p(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, yi5 yi5Var, yi5 yi5Var2) {
        if (tp3Var.b && jSONObject.has(str)) {
            return tb5.n(ex7Var, jSONObject, str, yi5Var2);
        }
        int i = tp3Var.a;
        if (i == 2) {
            return q(ex7Var, (za3) ((tp3.e) tp3Var).d, jSONObject, (lga) yi5Var.getValue());
        }
        if (i == 3) {
            return tb5.n(ex7Var, jSONObject, ((tp3.d) tp3Var).d, yi5Var2);
        }
        return null;
    }

    public static Object q(ex7 ex7Var, za3 za3Var, JSONObject jSONObject, lga lgaVar) {
        try {
            return lgaVar.a(ex7Var, za3Var, jSONObject);
        } catch (ParsingException e) {
            ex7Var.getLogger().c(e);
            return null;
        }
    }

    public static Expression r(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, zbb zbbVar) {
        if (tp3Var.b && jSONObject.has(str)) {
            return pa5.i(ex7Var, jSONObject, str, zbbVar, ob5.f());
        }
        int i = tp3Var.a;
        if (i == 2) {
            return (Expression) ((tp3.e) tp3Var).d;
        }
        if (i == 3) {
            return pa5.i(ex7Var, jSONObject, ((tp3.d) tp3Var).d, zbbVar, ob5.f());
        }
        return null;
    }

    public static Expression s(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, zbb zbbVar, e74 e74Var) {
        if (tp3Var.b && jSONObject.has(str)) {
            return pa5.i(ex7Var, jSONObject, str, zbbVar, e74Var);
        }
        int i = tp3Var.a;
        if (i == 2) {
            return (Expression) ((tp3.e) tp3Var).d;
        }
        if (i == 3) {
            return pa5.i(ex7Var, jSONObject, ((tp3.d) tp3Var).d, zbbVar, e74Var);
        }
        return null;
    }

    public static Expression t(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, zbb zbbVar, e74 e74Var, pnb pnbVar) {
        if (tp3Var.b && jSONObject.has(str)) {
            return pa5.k(ex7Var, jSONObject, str, zbbVar, e74Var, pnbVar, null);
        }
        int i = tp3Var.a;
        if (i == 2) {
            return (Expression) ((tp3.e) tp3Var).d;
        }
        if (i == 3) {
            return pa5.k(ex7Var, jSONObject, ((tp3.d) tp3Var).d, zbbVar, e74Var, pnbVar, null);
        }
        return null;
    }

    public static Expression u(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, zbb zbbVar, e74 e74Var, pnb pnbVar, Expression expression) {
        if (tp3Var.b && jSONObject.has(str)) {
            return pa5.k(ex7Var, jSONObject, str, zbbVar, e74Var, pnbVar, expression);
        }
        int i = tp3Var.a;
        if (i == 2) {
            return (Expression) ((tp3.e) tp3Var).d;
        }
        if (i == 3) {
            return pa5.k(ex7Var, jSONObject, ((tp3.d) tp3Var).d, zbbVar, e74Var, pnbVar, expression);
        }
        return null;
    }

    public static Expression v(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, zbb zbbVar, e74 e74Var, Expression expression) {
        if (tp3Var.b && jSONObject.has(str)) {
            return pa5.l(ex7Var, jSONObject, str, zbbVar, e74Var, expression);
        }
        int i = tp3Var.a;
        if (i == 2) {
            return (Expression) ((tp3.e) tp3Var).d;
        }
        if (i == 3) {
            return pa5.l(ex7Var, jSONObject, ((tp3.d) tp3Var).d, zbbVar, e74Var, expression);
        }
        return null;
    }

    public static Expression w(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, zbb zbbVar, pnb pnbVar, Expression expression) {
        if (tp3Var.b && jSONObject.has(str)) {
            return pa5.m(ex7Var, jSONObject, str, zbbVar, pnbVar, expression);
        }
        int i = tp3Var.a;
        if (i == 2) {
            return (Expression) ((tp3.e) tp3Var).d;
        }
        if (i == 3) {
            return pa5.m(ex7Var, jSONObject, ((tp3.d) tp3Var).d, zbbVar, pnbVar, expression);
        }
        return null;
    }

    public static nj3 x(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, zbb zbbVar, e74 e74Var, hm5 hm5Var) {
        return y(ex7Var, tp3Var, jSONObject, str, zbbVar, e74Var, hm5Var, ob5.e());
    }

    public static nj3 y(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, zbb zbbVar, e74 e74Var, hm5 hm5Var, pnb pnbVar) {
        if (tp3Var.b && jSONObject.has(str)) {
            return pa5.o(ex7Var, jSONObject, str, zbbVar, e74Var, hm5Var, pnbVar);
        }
        int i = tp3Var.a;
        if (i == 2) {
            return (nj3) ((tp3.e) tp3Var).d;
        }
        if (i == 3) {
            return pa5.o(ex7Var, jSONObject, ((tp3.d) tp3Var).d, zbbVar, e74Var, hm5Var, pnbVar);
        }
        return null;
    }

    public static List z(ex7 ex7Var, tp3 tp3Var, JSONObject jSONObject, String str, e74 e74Var, hm5 hm5Var) {
        return A(ex7Var, tp3Var, jSONObject, str, e74Var, hm5Var, ob5.e());
    }
}
