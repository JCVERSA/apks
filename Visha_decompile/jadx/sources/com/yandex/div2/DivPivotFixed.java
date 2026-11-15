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

public final class DivPivotFixed implements d65, ko4 {
    public static final a d = new a(null);
    public static final Expression e = Expression.a.a(DivSizeUnit.DP);
    public static final s74 f = new s74() {
        @Override
        public final DivPivotFixed invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivPivotFixed.d.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final Expression b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivPivotFixed a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivPivotFixedJsonParser.b) ml0.a().N5().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivPivotFixed(Expression expression, Expression expression2) {
        y45.j(expression, "unit");
        this.a = expression;
        this.b = expression2;
    }

    public final boolean a(DivPivotFixed divPivotFixed, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divPivotFixed == null || this.a.b(oj3Var) != divPivotFixed.a.b(oj3Var2)) {
            return false;
        }
        Expression expression = this.b;
        Long l = expression != null ? (Long) expression.b(oj3Var) : null;
        Expression expression2 = divPivotFixed.b;
        return y45.e(l, expression2 != null ? (Long) expression2.b(oj3Var2) : null);
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivPivotFixed.class).hashCode() + this.a.hashCode();
        Expression expression = this.b;
        int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0);
        this.c = Integer.valueOf(iHashCode2);
        return iHashCode2;
    }

    @Override
    public JSONObject s() {
        return ((DivPivotFixedJsonParser.b) ml0.a().N5().getValue()).b(ml0.b(), this);
    }
}
