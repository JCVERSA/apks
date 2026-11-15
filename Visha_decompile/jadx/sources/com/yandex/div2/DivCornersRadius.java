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

public final class DivCornersRadius implements d65, ko4 {
    public static final a f = new a(null);
    public static final s74 g = new s74() {
        @Override
        public final DivCornersRadius invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivCornersRadius.f.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final Expression b;
    public final Expression c;
    public final Expression d;
    public Integer e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivCornersRadius a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((q0.b) ml0.a().p2().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivCornersRadius(Expression expression, Expression expression2, Expression expression3, Expression expression4) {
        this.a = expression;
        this.b = expression2;
        this.c = expression3;
        this.d = expression4;
    }

    public final boolean a(DivCornersRadius divCornersRadius, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divCornersRadius == null) {
            return false;
        }
        Expression expression = this.a;
        Long l = expression != null ? (Long) expression.b(oj3Var) : null;
        Expression expression2 = divCornersRadius.a;
        if (!y45.e(l, expression2 != null ? (Long) expression2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expression3 = this.b;
        Long l2 = expression3 != null ? (Long) expression3.b(oj3Var) : null;
        Expression expression4 = divCornersRadius.b;
        if (!y45.e(l2, expression4 != null ? (Long) expression4.b(oj3Var2) : null)) {
            return false;
        }
        Expression expression5 = this.c;
        Long l3 = expression5 != null ? (Long) expression5.b(oj3Var) : null;
        Expression expression6 = divCornersRadius.c;
        if (!y45.e(l3, expression6 != null ? (Long) expression6.b(oj3Var2) : null)) {
            return false;
        }
        Expression expression7 = this.d;
        Long l4 = expression7 != null ? (Long) expression7.b(oj3Var) : null;
        Expression expression8 = divCornersRadius.d;
        return y45.e(l4, expression8 != null ? (Long) expression8.b(oj3Var2) : null);
    }

    @Override
    public int hash() {
        Integer num = this.e;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivCornersRadius.class).hashCode();
        Expression expression = this.a;
        int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0);
        Expression expression2 = this.b;
        int iHashCode3 = iHashCode2 + (expression2 != null ? expression2.hashCode() : 0);
        Expression expression3 = this.c;
        int iHashCode4 = iHashCode3 + (expression3 != null ? expression3.hashCode() : 0);
        Expression expression4 = this.d;
        int iHashCode5 = iHashCode4 + (expression4 != null ? expression4.hashCode() : 0);
        this.e = Integer.valueOf(iHashCode5);
        return iHashCode5;
    }

    @Override
    public JSONObject s() {
        return ((q0.b) ml0.a().p2().getValue()).b(ml0.b(), this);
    }
}
