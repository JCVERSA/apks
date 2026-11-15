package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivInputValidatorBase implements d65, ko4 {
    public static final a e = new a(null);
    public static final Expression f = Expression.a.a(Boolean.FALSE);
    public static final s74 g = new s74() {
        @Override
        public final DivInputValidatorBase invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivInputValidatorBase.e.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final Expression b;
    public final String c;
    public Integer d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivInputValidatorBase a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((a2.b) ml0.a().y4().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivInputValidatorBase(Expression expression, Expression expression2, String str) {
        y45.j(expression, "allowEmpty");
        this.a = expression;
        this.b = expression2;
        this.c = str;
    }

    @Override
    public int hash() {
        Integer num = this.d;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivInputValidatorBase.class).hashCode() + this.a.hashCode();
        Expression expression = this.b;
        int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0);
        String str = this.c;
        int iHashCode3 = iHashCode2 + (str != null ? str.hashCode() : 0);
        this.d = Integer.valueOf(iHashCode3);
        return iHashCode3;
    }

    @Override
    public JSONObject s() {
        return ((a2.b) ml0.a().y4().getValue()).b(ml0.b(), this);
    }
}
