package com.yandex.div2;

import android.net.Uri;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ijb;
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

public final class UrlVariable implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final UrlVariable invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return UrlVariable.d.a(hx7Var, jSONObject);
        }
    };
    public final String a;
    public final Uri b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UrlVariable a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((ijb) ml0.a().ga().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public UrlVariable(String str, Uri uri) {
        y45.j(str, "name");
        y45.j(uri, ES6Iterator.VALUE_PROPERTY);
        this.a = str;
        this.b = uri;
    }

    public final boolean a(UrlVariable urlVariable, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return urlVariable != null && y45.e(this.a, urlVariable.a) && y45.e(this.b, urlVariable.b);
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(UrlVariable.class).hashCode() + this.a.hashCode() + this.b.hashCode();
        this.c = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((ijb) ml0.a().ga().getValue()).b(ml0.b(), this);
    }
}
