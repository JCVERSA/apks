package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.mf2;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivActionShowTooltip implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final DivActionShowTooltip invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionShowTooltip.d.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final Expression b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivActionShowTooltip a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((mf2) ml0.a().S0().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivActionShowTooltip(Expression expression, Expression expression2) {
        y45.j(expression, TtmlNode.ATTR_ID);
        this.a = expression;
        this.b = expression2;
    }

    public final boolean a(DivActionShowTooltip divActionShowTooltip, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divActionShowTooltip == null || !y45.e(this.a.b(oj3Var), divActionShowTooltip.a.b(oj3Var2))) {
            return false;
        }
        Expression expression = this.b;
        Boolean bool = expression != null ? (Boolean) expression.b(oj3Var) : null;
        Expression expression2 = divActionShowTooltip.b;
        return y45.e(bool, expression2 != null ? (Boolean) expression2.b(oj3Var2) : null);
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivActionShowTooltip.class).hashCode() + this.a.hashCode();
        Expression expression = this.b;
        int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0);
        this.c = Integer.valueOf(iHashCode2);
        return iHashCode2;
    }

    @Override
    public JSONObject s() {
        return ((mf2) ml0.a().S0().getValue()).b(ml0.b(), this);
    }
}
