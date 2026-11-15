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
import org.mozilla.javascript.ES6Iterator;

public final class DivFixedSize implements d65, ko4 {
    public static final a d = new a(null);
    public static final Expression e = Expression.a.a(DivSizeUnit.DP);
    public static final s74 f = new s74() {
        @Override
        public final DivFixedSize invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivFixedSize.d.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final Expression b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivFixedSize a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivFixedSizeJsonParser.b) ml0.a().t3().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivFixedSize(Expression expression, Expression expression2) {
        y45.j(expression, "unit");
        y45.j(expression2, ES6Iterator.VALUE_PROPERTY);
        this.a = expression;
        this.b = expression2;
    }

    public final boolean a(DivFixedSize divFixedSize, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divFixedSize != null && this.a.b(oj3Var) == divFixedSize.a.b(oj3Var2) && ((Number) this.b.b(oj3Var)).longValue() == ((Number) divFixedSize.b.b(oj3Var2)).longValue();
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivFixedSize.class).hashCode() + this.a.hashCode() + this.b.hashCode();
        this.c = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((DivFixedSizeJsonParser.b) ml0.a().t3().getValue()).b(ml0.b(), this);
    }

    public DivFixedSize(Expression expression, Expression expression2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? e : expression, expression2);
    }
}
