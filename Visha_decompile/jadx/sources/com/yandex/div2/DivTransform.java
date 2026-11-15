package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivTransform implements d65, ko4 {
    public static final a e = new a(null);
    public static final DivPivot.c f;
    public static final DivPivot.c g;
    public static final s74 h;
    public final DivPivot a;
    public final DivPivot b;
    public final Expression c;
    public Integer d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivTransform a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((b5.b) ml0.a().V8().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        Double dValueOf = Double.valueOf(50.0d);
        f = new DivPivot.c(new DivPivotPercentage(aVar.a(dValueOf)));
        g = new DivPivot.c(new DivPivotPercentage(aVar.a(dValueOf)));
        h = new s74() {
            @Override
            public final DivTransform invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivTransform.e.a(hx7Var, jSONObject);
            }
        };
    }

    public DivTransform(DivPivot divPivot, DivPivot divPivot2, Expression expression) {
        y45.j(divPivot, "pivotX");
        y45.j(divPivot2, "pivotY");
        this.a = divPivot;
        this.b = divPivot2;
        this.c = expression;
    }

    public final boolean a(DivTransform divTransform, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divTransform == null || !this.a.a(divTransform.a, oj3Var, oj3Var2) || !this.b.a(divTransform.b, oj3Var, oj3Var2)) {
            return false;
        }
        Expression expression = this.c;
        Double d = expression != null ? (Double) expression.b(oj3Var) : null;
        Expression expression2 = divTransform.c;
        return y45.b(d, expression2 != null ? (Double) expression2.b(oj3Var2) : null);
    }

    @Override
    public int hash() {
        Integer num = this.d;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivTransform.class).hashCode() + this.a.hash() + this.b.hash();
        Expression expression = this.c;
        int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0);
        this.d = Integer.valueOf(iHashCode2);
        return iHashCode2;
    }

    @Override
    public JSONObject s() {
        return ((b5.b) ml0.a().V8().getValue()).b(ml0.b(), this);
    }
}
