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

public final class DivTextRangeBorder implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final DivTextRangeBorder invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivTextRangeBorder.d.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final DivStroke b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivTextRangeBorder a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((q4.b) ml0.a().p8().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivTextRangeBorder(Expression expression, DivStroke divStroke) {
        this.a = expression;
        this.b = divStroke;
    }

    public final boolean a(DivTextRangeBorder divTextRangeBorder, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divTextRangeBorder == null) {
            return false;
        }
        Expression expression = this.a;
        Long l = expression != null ? (Long) expression.b(oj3Var) : null;
        Expression expression2 = divTextRangeBorder.a;
        if (!y45.e(l, expression2 != null ? (Long) expression2.b(oj3Var2) : null)) {
            return false;
        }
        DivStroke divStroke = this.b;
        if (divStroke != null) {
            zA = divStroke.a(divTextRangeBorder.b, oj3Var, oj3Var2);
        } else {
            zA = divTextRangeBorder.b == null;
        }
        return zA;
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivTextRangeBorder.class).hashCode();
        Expression expression = this.a;
        int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0);
        DivStroke divStroke = this.b;
        int iHash = iHashCode2 + (divStroke != null ? divStroke.hash() : 0);
        this.c = Integer.valueOf(iHash);
        return iHash;
    }

    @Override
    public JSONObject s() {
        return ((q4.b) ml0.a().p8().getValue()).b(ml0.b(), this);
    }
}
