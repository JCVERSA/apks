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

public final class DivCircleShape implements d65, ko4 {
    public static final a e = new a(null);
    public static final DivFixedSize f = new DivFixedSize(null == true ? 1 : 0, Expression.a.a(10L), 1, null == true ? 1 : 0);
    public static final s74 g = new s74() {
        @Override
        public final DivCircleShape invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivCircleShape.e.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final DivFixedSize b;
    public final DivStroke c;
    public Integer d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivCircleShape a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((l0.b) ml0.a().U1().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivCircleShape(Expression expression, DivFixedSize divFixedSize, DivStroke divStroke) {
        y45.j(divFixedSize, "radius");
        this.a = expression;
        this.b = divFixedSize;
        this.c = divStroke;
    }

    public final boolean a(DivCircleShape divCircleShape, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divCircleShape == null) {
            return false;
        }
        Expression expression = this.a;
        Integer num = expression != null ? (Integer) expression.b(oj3Var) : null;
        Expression expression2 = divCircleShape.a;
        if (!y45.e(num, expression2 != null ? (Integer) expression2.b(oj3Var2) : null) || !this.b.a(divCircleShape.b, oj3Var, oj3Var2)) {
            return false;
        }
        DivStroke divStroke = this.c;
        if (divStroke != null) {
            zA = divStroke.a(divCircleShape.c, oj3Var, oj3Var2);
        } else {
            zA = divCircleShape.c == null;
        }
        return zA;
    }

    @Override
    public int hash() {
        Integer num = this.d;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivCircleShape.class).hashCode();
        Expression expression = this.a;
        int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0) + this.b.hash();
        DivStroke divStroke = this.c;
        int iHash = iHashCode2 + (divStroke != null ? divStroke.hash() : 0);
        this.d = Integer.valueOf(iHash);
        return iHash;
    }

    @Override
    public JSONObject s() {
        return ((l0.b) ml0.a().U1().getValue()).b(ml0.b(), this);
    }
}
