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

public final class DivInputValidatorRegex implements d65, ko4 {
    public static final a f = new a(null);
    public static final Expression g = Expression.a.a(Boolean.FALSE);
    public static final s74 h = new s74() {
        @Override
        public final DivInputValidatorRegex invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivInputValidatorRegex.f.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final Expression b;
    public final Expression c;
    public final String d;
    public Integer e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivInputValidatorRegex a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((f2.b) ml0.a().G4().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivInputValidatorRegex(Expression expression, Expression expression2, Expression expression3, String str) {
        y45.j(expression, "allowEmpty");
        y45.j(expression2, "labelId");
        y45.j(expression3, "pattern");
        y45.j(str, "variable");
        this.a = expression;
        this.b = expression2;
        this.c = expression3;
        this.d = str;
    }

    public final boolean a(DivInputValidatorRegex divInputValidatorRegex, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divInputValidatorRegex != null && ((Boolean) this.a.b(oj3Var)).booleanValue() == ((Boolean) divInputValidatorRegex.a.b(oj3Var2)).booleanValue() && y45.e(this.b.b(oj3Var), divInputValidatorRegex.b.b(oj3Var2)) && y45.e(this.c.b(oj3Var), divInputValidatorRegex.c.b(oj3Var2)) && y45.e(this.d, divInputValidatorRegex.d);
    }

    @Override
    public int hash() {
        Integer num = this.e;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivInputValidatorRegex.class).hashCode() + this.a.hashCode() + this.b.hashCode() + this.c.hashCode() + this.d.hashCode();
        this.e = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((f2.b) ml0.a().G4().getValue()).b(ml0.b(), this);
    }
}
