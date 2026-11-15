package com.yandex.div2;

import defpackage.ac5;
import defpackage.d65;
import defpackage.hx7;
import defpackage.li2;
import defpackage.ml0;
import defpackage.s74;
import defpackage.tp3;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivDownloadCallbacksTemplate implements d65, ac5 {
    public static final a c = new a(null);
    public static final s74 d = new s74() {
        @Override
        public final DivDownloadCallbacksTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return new DivDownloadCallbacksTemplate(hx7Var, null, false, jSONObject, 6, null);
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

    public DivDownloadCallbacksTemplate(tp3 tp3Var, tp3 tp3Var2) {
        y45.j(tp3Var, "onFailActions");
        y45.j(tp3Var2, "onSuccessActions");
        this.a = tp3Var;
        this.b = tp3Var2;
    }

    @Override
    public JSONObject s() {
        return ((li2) ml0.a().Q2().getValue()).b(ml0.b(), this);
    }

    public DivDownloadCallbacksTemplate(hx7 hx7Var, DivDownloadCallbacksTemplate divDownloadCallbacksTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divDownloadCallbacksTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivDownloadCallbacksTemplate(hx7 hx7Var, DivDownloadCallbacksTemplate divDownloadCallbacksTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
