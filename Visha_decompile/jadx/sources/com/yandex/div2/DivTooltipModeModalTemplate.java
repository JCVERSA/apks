package com.yandex.div2;

import defpackage.ac5;
import defpackage.d65;
import defpackage.hx7;
import defpackage.lt2;
import defpackage.ml0;
import defpackage.s74;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivTooltipModeModalTemplate implements d65, ac5 {
    public static final a a = new a(null);
    public static final s74 b = new s74() {
        @Override
        public final DivTooltipModeModalTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return new DivTooltipModeModalTemplate(hx7Var, null, false, jSONObject, 6, null);
        }
    };

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public DivTooltipModeModalTemplate() {
    }

    @Override
    public JSONObject s() {
        return ((lt2) ml0.a().Q8().getValue()).b(ml0.b(), this);
    }

    public DivTooltipModeModalTemplate(hx7 hx7Var, DivTooltipModeModalTemplate divTooltipModeModalTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divTooltipModeModalTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivTooltipModeModalTemplate(hx7 hx7Var, DivTooltipModeModalTemplate divTooltipModeModalTemplate, boolean z, JSONObject jSONObject) {
        this();
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
