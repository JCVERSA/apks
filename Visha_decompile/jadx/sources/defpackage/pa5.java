package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div.json.expressions.MutableExpressionList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class pa5 {
    public static final nj3 a = new of1(Collections.emptyList());

    public static nj3 a() {
        return a;
    }

    public static Object b(JSONArray jSONArray, int i) {
        Object objOpt = jSONArray.opt(i);
        if (objOpt == JSONObject.NULL) {
            return null;
        }
        return objOpt;
    }

    public static Object c(JSONObject jSONObject, String str) {
        Object objOpt = jSONObject.opt(str);
        if (objOpt == JSONObject.NULL) {
            return null;
        }
        return objOpt;
    }

    public static Expression d(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar) {
        return f(ex7Var, jSONObject, str, zbbVar, ob5.f(), ob5.e());
    }

    public static Expression e(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, e74 e74Var) {
        return f(ex7Var, jSONObject, str, zbbVar, e74Var, ob5.e());
    }

    public static Expression f(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, e74 e74Var, pnb pnbVar) {
        Object objC = c(jSONObject, str);
        if (objC == null) {
            throw mx7.m(jSONObject, str);
        }
        if (Expression.d(objC)) {
            return new Expression.MutableExpression(str, objC.toString(), e74Var, pnbVar, ex7Var.getLogger(), zbbVar, null);
        }
        try {
            Object objInvoke = e74Var.invoke(objC);
            if (objInvoke == null) {
                throw mx7.j(jSONObject, str, objC);
            }
            if (!zbbVar.b(objInvoke)) {
                throw mx7.x(jSONObject, str, objC);
            }
            try {
                if (pnbVar.a(objInvoke)) {
                    return Expression.a(objInvoke);
                }
                throw mx7.j(jSONObject, str, objC);
            } catch (ClassCastException unused) {
                throw mx7.x(jSONObject, str, objC);
            }
        } catch (ClassCastException unused2) {
            throw mx7.x(jSONObject, str, objC);
        } catch (Exception e) {
            throw mx7.k(jSONObject, str, objC, e);
        }
    }

    public static Expression g(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, pnb pnbVar) {
        return f(ex7Var, jSONObject, str, zbbVar, ob5.f(), pnbVar);
    }

    public static Expression h(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar) {
        return k(ex7Var, jSONObject, str, zbbVar, ob5.f(), ob5.e(), null);
    }

    public static Expression i(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, e74 e74Var) {
        return k(ex7Var, jSONObject, str, zbbVar, e74Var, ob5.e(), null);
    }

    public static Expression j(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, e74 e74Var, pnb pnbVar) {
        return k(ex7Var, jSONObject, str, zbbVar, e74Var, pnbVar, null);
    }

    public static Expression k(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, e74 e74Var, pnb pnbVar, Expression expression) {
        Object objC = c(jSONObject, str);
        if (objC == null) {
            return null;
        }
        if (Expression.d(objC)) {
            return new Expression.MutableExpression(str, objC.toString(), e74Var, pnbVar, ex7Var.getLogger(), zbbVar, expression);
        }
        try {
            Object objInvoke = e74Var.invoke(objC);
            if (objInvoke == null) {
                ex7Var.getLogger().c(mx7.j(jSONObject, str, objC));
                return null;
            }
            if (!zbbVar.b(objInvoke)) {
                ex7Var.getLogger().c(mx7.x(jSONObject, str, objC));
                return null;
            }
            try {
                if (pnbVar.a(objInvoke)) {
                    return Expression.a(objInvoke);
                }
                ex7Var.getLogger().c(mx7.j(jSONObject, str, objC));
                return null;
            } catch (ClassCastException unused) {
                ex7Var.getLogger().c(mx7.x(jSONObject, str, objC));
                return null;
            }
        } catch (ClassCastException unused2) {
            ex7Var.getLogger().c(mx7.x(jSONObject, str, objC));
            return null;
        } catch (Exception e) {
            ex7Var.getLogger().c(mx7.k(jSONObject, str, objC, e));
            return null;
        }
    }

    public static Expression l(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, e74 e74Var, Expression expression) {
        return k(ex7Var, jSONObject, str, zbbVar, e74Var, ob5.e(), expression);
    }

    public static Expression m(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, pnb pnbVar, Expression expression) {
        return k(ex7Var, jSONObject, str, zbbVar, ob5.f(), pnbVar, expression);
    }

    public static nj3 n(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, e74 e74Var, hm5 hm5Var) {
        return o(ex7Var, jSONObject, str, zbbVar, e74Var, hm5Var, ob5.e());
    }

    public static nj3 o(ex7 ex7Var, JSONObject jSONObject, String str, zbb zbbVar, e74 e74Var, hm5 hm5Var, pnb pnbVar) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        int length = jSONArrayOptJSONArray.length();
        if (length == 0) {
            List listEmptyList = Collections.emptyList();
            try {
                if (hm5Var.a(listEmptyList)) {
                    return a();
                }
                ex7Var.getLogger().c(mx7.j(jSONObject, str, listEmptyList));
                return a();
            } catch (ClassCastException unused) {
                ex7Var.getLogger().c(mx7.x(jSONObject, str, listEmptyList));
                return a();
            }
        }
        ArrayList arrayList = new ArrayList(length);
        lx7 logger = null;
        boolean z = false;
        for (int i = 0; i < length; i++) {
            Object objB = b(jSONArrayOptJSONArray, i);
            if (objB != null) {
                if (Expression.d(objB)) {
                    if (logger == null) {
                        logger = ex7Var.getLogger();
                    }
                    arrayList.add(new Expression.MutableExpression(str + "[" + i + "]", objB.toString(), e74Var, pnbVar, logger, zbbVar, null));
                    z = true;
                } else {
                    try {
                        Object objInvoke = e74Var.invoke(objB);
                        if (objInvoke != null) {
                            if (zbbVar.b(objInvoke)) {
                                try {
                                    if (pnbVar.a(objInvoke)) {
                                        arrayList.add(objInvoke);
                                    } else {
                                        ex7Var.getLogger().c(mx7.h(jSONArrayOptJSONArray, str, i, objInvoke));
                                    }
                                } catch (ClassCastException unused2) {
                                    ex7Var.getLogger().c(mx7.w(jSONArrayOptJSONArray, str, i, objInvoke));
                                }
                            } else {
                                ex7Var.getLogger().c(mx7.w(jSONArrayOptJSONArray, str, i, objB));
                            }
                        }
                    } catch (ClassCastException unused3) {
                        ex7Var.getLogger().c(mx7.w(jSONArrayOptJSONArray, str, i, objB));
                    } catch (Exception e) {
                        ex7Var.getLogger().c(mx7.i(jSONArrayOptJSONArray, str, i, objB, e));
                    }
                }
            }
        }
        if (!z) {
            try {
                if (hm5Var.a(arrayList)) {
                    return new of1(arrayList);
                }
                ex7Var.getLogger().c(mx7.j(jSONObject, str, arrayList));
                return null;
            } catch (ClassCastException unused4) {
                ex7Var.getLogger().c(mx7.x(jSONObject, str, arrayList));
                return null;
            }
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = arrayList.get(i2);
            if (!(obj instanceof Expression)) {
                arrayList.set(i2, Expression.a(obj));
            }
        }
        return new MutableExpressionList(str, arrayList, hm5Var, ex7Var.getLogger());
    }

    public static void p(ex7 ex7Var, JSONObject jSONObject, String str, Expression expression) {
        q(ex7Var, jSONObject, str, expression, ob5.f());
    }

    public static void q(ex7 ex7Var, JSONObject jSONObject, String str, Expression expression, e74 e74Var) {
        if (expression == null) {
            return;
        }
        Object objC = expression.c();
        try {
            if (expression instanceof Expression.MutableExpression) {
                jSONObject.put(str, objC);
            } else {
                jSONObject.put(str, e74Var.invoke(objC));
            }
        } catch (JSONException e) {
            ex7Var.getLogger().c(e);
        }
    }

    public static void r(ex7 ex7Var, JSONObject jSONObject, String str, nj3 nj3Var, e74 e74Var) {
        if (nj3Var == null) {
            return;
        }
        int i = 0;
        if (nj3Var instanceof of1) {
            List listA = nj3Var.a(oj3.b);
            int size = listA.size();
            JSONArray jSONArray = new JSONArray();
            while (i < size) {
                jSONArray.put(e74Var.invoke(listA.get(i)));
                i++;
            }
            try {
                jSONObject.put(str, jSONArray);
                return;
            } catch (JSONException e) {
                ex7Var.getLogger().c(e);
                return;
            }
        }
        if (nj3Var instanceof MutableExpressionList) {
            List listC = ((MutableExpressionList) nj3Var).c();
            if (listC.isEmpty()) {
                return;
            }
            int size2 = listC.size();
            JSONArray jSONArray2 = new JSONArray();
            while (i < size2) {
                Expression expression = (Expression) listC.get(i);
                if (expression instanceof Expression.b) {
                    jSONArray2.put(e74Var.invoke(expression.b(oj3.b)));
                } else {
                    jSONArray2.put(expression.c());
                }
                i++;
            }
            try {
                jSONObject.put(str, jSONArray2);
            } catch (JSONException e2) {
                ex7Var.getLogger().c(e2);
            }
        }
    }
}
