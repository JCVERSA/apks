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

public final class DivMatchParentSize implements d65, ko4 {
    public static final a c = new a(null);
    public static final s74 d = new s74() {
        @Override
        public final DivMatchParentSize invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivMatchParentSize.c.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public Integer b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivMatchParentSize a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((l2.b) ml0.a().V4().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivMatchParentSize(Expression expression) {
        this.a = expression;
    }

    public final boolean a(DivMatchParentSize divMatchParentSize, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divMatchParentSize == null) {
            return false;
        }
        Expression expression = this.a;
        Double d2 = expression != null ? (Double) expression.b(oj3Var) : null;
        Expression expression2 = divMatchParentSize.a;
        return y45.b(d2, expression2 != null ? (Double) expression2.b(oj3Var2) : null);
    }

    @Override
    public int hash() {
        Integer num = this.b;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivMatchParentSize.class).hashCode();
        Expression expression = this.a;
        int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0);
        this.b = Integer.valueOf(iHashCode2);
        return iHashCode2;
    }

    @Override
    public JSONObject s() {
        return ((l2.b) ml0.a().V4().getValue()).b(ml0.b(), this);
    }

    public DivMatchParentSize(Expression expression, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : expression);
    }
}
