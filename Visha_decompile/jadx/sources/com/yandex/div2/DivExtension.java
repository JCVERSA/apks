package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xi2;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivExtension implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final DivExtension invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivExtension.d.a(hx7Var, jSONObject);
        }
    };
    public final String a;
    public final JSONObject b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivExtension a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((xi2) ml0.a().Y2().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivExtension(String str, JSONObject jSONObject) {
        y45.j(str, TtmlNode.ATTR_ID);
        this.a = str;
        this.b = jSONObject;
    }

    public final boolean a(DivExtension divExtension, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divExtension != null && y45.e(this.a, divExtension.a) && y45.e(this.b, divExtension.b);
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivExtension.class).hashCode() + this.a.hashCode();
        JSONObject jSONObject = this.b;
        int iHashCode2 = iHashCode + (jSONObject != null ? jSONObject.hashCode() : 0);
        this.c = Integer.valueOf(iHashCode2);
        return iHashCode2;
    }

    @Override
    public JSONObject s() {
        return ((xi2) ml0.a().Y2().getValue()).b(ml0.b(), this);
    }
}
