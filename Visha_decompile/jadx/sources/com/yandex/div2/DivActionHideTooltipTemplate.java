package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.ac5;
import defpackage.d65;
import defpackage.ef2;
import defpackage.hx7;
import defpackage.ml0;
import defpackage.s74;
import defpackage.tp3;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivActionHideTooltipTemplate implements d65, ac5 {
    public static final a b = new a(null);
    public static final s74 c = new s74() {
        @Override
        public final DivActionHideTooltipTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return new DivActionHideTooltipTemplate(hx7Var, null, false, jSONObject, 6, null);
        }
    };
    public final tp3 a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public DivActionHideTooltipTemplate(tp3 tp3Var) {
        y45.j(tp3Var, TtmlNode.ATTR_ID);
        this.a = tp3Var;
    }

    @Override
    public JSONObject s() {
        return ((ef2) ml0.a().s0().getValue()).b(ml0.b(), this);
    }

    public DivActionHideTooltipTemplate(hx7 hx7Var, DivActionHideTooltipTemplate divActionHideTooltipTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divActionHideTooltipTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivActionHideTooltipTemplate(hx7 hx7Var, DivActionHideTooltipTemplate divActionHideTooltipTemplate, boolean z, JSONObject jSONObject) {
        this(tp3.c.a(false));
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
