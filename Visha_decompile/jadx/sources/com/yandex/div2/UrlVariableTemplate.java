package com.yandex.div2;

import defpackage.ac5;
import defpackage.d65;
import defpackage.hx7;
import defpackage.jjb;
import defpackage.ml0;
import defpackage.s74;
import defpackage.tp3;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class UrlVariableTemplate implements d65, ac5 {
    public static final a c = new a(null);
    public static final s74 d = new s74() {
        @Override
        public final UrlVariableTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return new UrlVariableTemplate(hx7Var, null, false, jSONObject, 6, null);
        }
    };
    public final tp3 a;
    public final tp3 b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public UrlVariableTemplate(tp3 tp3Var, tp3 tp3Var2) {
        y45.j(tp3Var, "name");
        y45.j(tp3Var2, ES6Iterator.VALUE_PROPERTY);
        this.a = tp3Var;
        this.b = tp3Var2;
    }

    @Override
    public JSONObject s() {
        return ((jjb) ml0.a().ha().getValue()).b(ml0.b(), this);
    }

    public UrlVariableTemplate(hx7 hx7Var, UrlVariableTemplate urlVariableTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : urlVariableTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public UrlVariableTemplate(hx7 hx7Var, UrlVariableTemplate urlVariableTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
