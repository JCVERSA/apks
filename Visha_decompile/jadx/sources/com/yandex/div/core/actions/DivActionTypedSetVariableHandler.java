package com.yandex.div.core.actions;

import android.net.Uri;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivActionTyped;
import defpackage.bob;
import defpackage.e74;
import defpackage.eg2;
import defpackage.k81;
import defpackage.oj3;
import defpackage.qnb;
import defpackage.uf2;
import defpackage.y45;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

public final class DivActionTypedSetVariableHandler implements uf2 {
    @Override
    public boolean a(String str, DivActionTyped divActionTyped, Div2View div2View, oj3 oj3Var) {
        y45.j(divActionTyped, "action");
        y45.j(div2View, "view");
        y45.j(oj3Var, "resolver");
        if (!(divActionTyped instanceof DivActionTyped.q)) {
            return false;
        }
        b((DivActionTyped.q) divActionTyped, div2View, oj3Var);
        return true;
    }

    public final void b(DivActionTyped.q qVar, final Div2View div2View, oj3 oj3Var) {
        final String str = (String) qVar.c().b.b(oj3Var);
        final Object objD = eg2.d(qVar.c().a, oj3Var);
        bob.a.c(div2View, str, oj3Var, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final qnb invoke(qnb qnbVar) {
                y45.j(qnbVar, "variable");
                Object obj = objD;
                Div2View div2View2 = div2View;
                String str2 = str;
                String lowerCase = "array";
                if (qnbVar instanceof qnb.a) {
                    boolean z = obj instanceof JSONArray;
                    JSONArray jSONArray = (JSONArray) (z ? obj : null);
                    if (jSONArray == null) {
                        if (obj instanceof Integer ? true : obj instanceof Double) {
                            lowerCase = "number";
                        } else if (obj instanceof JSONObject) {
                            lowerCase = "dict";
                        } else if (!z) {
                            String simpleName = obj.getClass().getSimpleName();
                            y45.i(simpleName, "newValue.javaClass.simpleName");
                            lowerCase = simpleName.toLowerCase(Locale.ROOT);
                            y45.i(lowerCase, "toLowerCase(...)");
                        }
                        eg2.e(div2View2, new IllegalArgumentException("Trying to set value with invalid type (" + lowerCase + ") to variable " + str2));
                    }
                    if (jSONArray != null) {
                        ((qnb.a) qnbVar).t(jSONArray);
                    }
                } else if (qnbVar instanceof qnb.b) {
                    Boolean bool = (Boolean) (obj instanceof Boolean ? obj : null);
                    if (bool == null) {
                        if (obj instanceof Integer ? true : obj instanceof Double) {
                            lowerCase = "number";
                        } else if (obj instanceof JSONObject) {
                            lowerCase = "dict";
                        } else if (!(obj instanceof JSONArray)) {
                            String simpleName2 = obj.getClass().getSimpleName();
                            y45.i(simpleName2, "newValue.javaClass.simpleName");
                            lowerCase = simpleName2.toLowerCase(Locale.ROOT);
                            y45.i(lowerCase, "toLowerCase(...)");
                        }
                        eg2.e(div2View2, new IllegalArgumentException("Trying to set value with invalid type (" + lowerCase + ") to variable " + str2));
                    }
                    if (bool != null) {
                        ((qnb.b) qnbVar).t(bool.booleanValue());
                    }
                } else if (qnbVar instanceof qnb.c) {
                    boolean z2 = obj instanceof Integer;
                    Integer num = (Integer) (z2 ? obj : null);
                    if (num == null) {
                        if (z2 ? true : obj instanceof Double) {
                            lowerCase = "number";
                        } else if (obj instanceof JSONObject) {
                            lowerCase = "dict";
                        } else if (!(obj instanceof JSONArray)) {
                            String simpleName3 = obj.getClass().getSimpleName();
                            y45.i(simpleName3, "newValue.javaClass.simpleName");
                            lowerCase = simpleName3.toLowerCase(Locale.ROOT);
                            y45.i(lowerCase, "toLowerCase(...)");
                        }
                        eg2.e(div2View2, new IllegalArgumentException("Trying to set value with invalid type (" + lowerCase + ") to variable " + str2));
                    }
                    if (num != null) {
                        ((qnb.c) qnbVar).t(k81.d(num.intValue()));
                    }
                } else if (qnbVar instanceof qnb.d) {
                    boolean z3 = obj instanceof JSONObject;
                    JSONObject jSONObject = (JSONObject) (z3 ? obj : null);
                    if (jSONObject == null) {
                        if (obj instanceof Integer ? true : obj instanceof Double) {
                            lowerCase = "number";
                        } else if (z3) {
                            lowerCase = "dict";
                        } else if (!(obj instanceof JSONArray)) {
                            String simpleName4 = obj.getClass().getSimpleName();
                            y45.i(simpleName4, "newValue.javaClass.simpleName");
                            lowerCase = simpleName4.toLowerCase(Locale.ROOT);
                            y45.i(lowerCase, "toLowerCase(...)");
                        }
                        eg2.e(div2View2, new IllegalArgumentException("Trying to set value with invalid type (" + lowerCase + ") to variable " + str2));
                    }
                    if (jSONObject != null) {
                        ((qnb.d) qnbVar).t(jSONObject);
                    }
                } else if (qnbVar instanceof qnb.e) {
                    boolean z4 = obj instanceof Double;
                    Double d = (Double) (z4 ? obj : null);
                    if (d == null) {
                        if (obj instanceof Integer ? true : z4) {
                            lowerCase = "number";
                        } else if (obj instanceof JSONObject) {
                            lowerCase = "dict";
                        } else if (!(obj instanceof JSONArray)) {
                            String simpleName5 = obj.getClass().getSimpleName();
                            y45.i(simpleName5, "newValue.javaClass.simpleName");
                            lowerCase = simpleName5.toLowerCase(Locale.ROOT);
                            y45.i(lowerCase, "toLowerCase(...)");
                        }
                        eg2.e(div2View2, new IllegalArgumentException("Trying to set value with invalid type (" + lowerCase + ") to variable " + str2));
                    }
                    if (d != null) {
                        ((qnb.e) qnbVar).t(d.doubleValue());
                    }
                } else if (qnbVar instanceof qnb.f) {
                    Long l = (Long) (obj instanceof Long ? obj : null);
                    if (l == null) {
                        if (obj instanceof Integer ? true : obj instanceof Double) {
                            lowerCase = "number";
                        } else if (obj instanceof JSONObject) {
                            lowerCase = "dict";
                        } else if (!(obj instanceof JSONArray)) {
                            String simpleName6 = obj.getClass().getSimpleName();
                            y45.i(simpleName6, "newValue.javaClass.simpleName");
                            lowerCase = simpleName6.toLowerCase(Locale.ROOT);
                            y45.i(lowerCase, "toLowerCase(...)");
                        }
                        eg2.e(div2View2, new IllegalArgumentException("Trying to set value with invalid type (" + lowerCase + ") to variable " + str2));
                    }
                    if (l != null) {
                        ((qnb.f) qnbVar).t(l.longValue());
                    }
                } else if (qnbVar instanceof qnb.g) {
                    String str3 = (String) (obj instanceof String ? obj : null);
                    if (str3 == null) {
                        if (obj instanceof Integer ? true : obj instanceof Double) {
                            lowerCase = "number";
                        } else if (obj instanceof JSONObject) {
                            lowerCase = "dict";
                        } else if (!(obj instanceof JSONArray)) {
                            String simpleName7 = obj.getClass().getSimpleName();
                            y45.i(simpleName7, "newValue.javaClass.simpleName");
                            lowerCase = simpleName7.toLowerCase(Locale.ROOT);
                            y45.i(lowerCase, "toLowerCase(...)");
                        }
                        eg2.e(div2View2, new IllegalArgumentException("Trying to set value with invalid type (" + lowerCase + ") to variable " + str2));
                    }
                    if (str3 != null) {
                        qnbVar.n(str3);
                    }
                } else if (qnbVar instanceof qnb.h) {
                    Uri uri = (Uri) (obj instanceof Uri ? obj : null);
                    if (uri == null) {
                        if (obj instanceof Integer ? true : obj instanceof Double) {
                            lowerCase = "number";
                        } else if (obj instanceof JSONObject) {
                            lowerCase = "dict";
                        } else if (!(obj instanceof JSONArray)) {
                            String simpleName8 = obj.getClass().getSimpleName();
                            y45.i(simpleName8, "newValue.javaClass.simpleName");
                            lowerCase = simpleName8.toLowerCase(Locale.ROOT);
                            y45.i(lowerCase, "toLowerCase(...)");
                        }
                        eg2.e(div2View2, new IllegalArgumentException("Trying to set value with invalid type (" + lowerCase + ") to variable " + str2));
                    }
                    if (uri != null) {
                        ((qnb.h) qnbVar).t(uri);
                    }
                }
                return qnbVar;
            }
        });
    }
}
