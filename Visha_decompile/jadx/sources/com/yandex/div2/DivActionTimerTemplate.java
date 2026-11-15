package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.ac5;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ml0;
import defpackage.s74;
import defpackage.tp3;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivActionTimerTemplate implements d65, ac5 {
    public static final a c = new a(null);
    public static final s74 d = new s74() {
        @Override
        public final DivActionTimerTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return new DivActionTimerTemplate(hx7Var, null, false, jSONObject, 6, null);
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

    public DivActionTimerTemplate(tp3 tp3Var, tp3 tp3Var2) {
        y45.j(tp3Var, "action");
        y45.j(tp3Var2, TtmlNode.ATTR_ID);
        this.a = tp3Var;
        this.b = tp3Var2;
    }

    @Override
    public JSONObject s() {
        return ((DivActionTimerJsonParser.c) ml0.a().f1().getValue()).b(ml0.b(), this);
    }

    public DivActionTimerTemplate(hx7 hx7Var, DivActionTimerTemplate divActionTimerTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divActionTimerTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivActionTimerTemplate(hx7 hx7Var, DivActionTimerTemplate divActionTimerTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
