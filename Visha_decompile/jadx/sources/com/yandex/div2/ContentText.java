package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.dh1;
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

public final class ContentText implements d65, ko4 {
    public static final a c = new a(null);
    public static final s74 d = new s74() {
        @Override
        public final ContentText invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return ContentText.c.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public Integer b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ContentText a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((dh1) ml0.a().s().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public ContentText(Expression expression) {
        y45.j(expression, ES6Iterator.VALUE_PROPERTY);
        this.a = expression;
    }

    public final boolean a(ContentText contentText, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (contentText == null) {
            return false;
        }
        return y45.e(this.a.b(oj3Var), contentText.a.b(oj3Var2));
    }

    @Override
    public int hash() {
        Integer num = this.b;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(ContentText.class).hashCode() + this.a.hashCode();
        this.b = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((dh1) ml0.a().s().getValue()).b(ml0.b(), this);
    }
}
