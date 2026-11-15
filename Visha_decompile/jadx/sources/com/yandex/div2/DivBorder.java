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

public final class DivBorder implements d65, ko4 {
    public static final a g = new a(null);
    public static final Expression h = Expression.a.a(Boolean.FALSE);
    public static final s74 i = new s74() {
        @Override
        public final DivBorder invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivBorder.g.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final DivCornersRadius b;
    public final Expression c;
    public final DivShadow d;
    public final DivStroke e;
    public Integer f;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivBorder a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((g0.b) ml0.a().I1().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivBorder(Expression expression, DivCornersRadius divCornersRadius, Expression expression2, DivShadow divShadow, DivStroke divStroke) {
        y45.j(expression2, "hasShadow");
        this.a = expression;
        this.b = divCornersRadius;
        this.c = expression2;
        this.d = divShadow;
        this.e = divStroke;
    }

    public final boolean a(DivBorder divBorder, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        boolean zA2;
        boolean zA3;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divBorder == null) {
            return false;
        }
        Expression expression = this.a;
        Long l = expression != null ? (Long) expression.b(oj3Var) : null;
        Expression expression2 = divBorder.a;
        if (!y45.e(l, expression2 != null ? (Long) expression2.b(oj3Var2) : null)) {
            return false;
        }
        DivCornersRadius divCornersRadius = this.b;
        if (divCornersRadius != null) {
            zA = divCornersRadius.a(divBorder.b, oj3Var, oj3Var2);
        } else {
            zA = divBorder.b == null;
        }
        if (!zA || ((Boolean) this.c.b(oj3Var)).booleanValue() != ((Boolean) divBorder.c.b(oj3Var2)).booleanValue()) {
            return false;
        }
        DivShadow divShadow = this.d;
        if (divShadow != null) {
            zA2 = divShadow.a(divBorder.d, oj3Var, oj3Var2);
        } else {
            zA2 = divBorder.d == null;
        }
        if (!zA2) {
            return false;
        }
        DivStroke divStroke = this.e;
        if (divStroke != null) {
            zA3 = divStroke.a(divBorder.e, oj3Var, oj3Var2);
        } else {
            zA3 = divBorder.e == null;
        }
        return zA3;
    }

    @Override
    public int hash() {
        Integer num = this.f;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivBorder.class).hashCode();
        Expression expression = this.a;
        int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0);
        DivCornersRadius divCornersRadius = this.b;
        int iHash = iHashCode2 + (divCornersRadius != null ? divCornersRadius.hash() : 0) + this.c.hashCode();
        DivShadow divShadow = this.d;
        int iHash2 = iHash + (divShadow != null ? divShadow.hash() : 0);
        DivStroke divStroke = this.e;
        int iHash3 = iHash2 + (divStroke != null ? divStroke.hash() : 0);
        this.f = Integer.valueOf(iHash3);
        return iHash3;
    }

    @Override
    public JSONObject s() {
        return ((g0.b) ml0.a().I1().getValue()).b(ml0.b(), this);
    }
}
