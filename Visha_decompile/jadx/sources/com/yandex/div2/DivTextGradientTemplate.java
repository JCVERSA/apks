package com.yandex.div2;

import defpackage.ac5;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ml0;
import defpackage.s74;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivTextGradientTemplate implements d65, ac5 {
    public static final a a = new a(null);
    public static final s74 b = new s74() {
        @Override
        public final DivTextGradientTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivTextGradientTemplate.a.b(DivTextGradientTemplate.a, hx7Var, false, jSONObject, 2, null);
        }
    };

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DivTextGradientTemplate b(a aVar, hx7 hx7Var, boolean z, JSONObject jSONObject, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return aVar.a(hx7Var, z, jSONObject);
        }

        public final DivTextGradientTemplate a(hx7 hx7Var, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((k4) ml0.a().b8().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivTextGradientTemplate {
        public final DivLinearGradientTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivLinearGradientTemplate divLinearGradientTemplate) {
            super(null);
            y45.j(divLinearGradientTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divLinearGradientTemplate;
        }

        public final DivLinearGradientTemplate c() {
            return this.c;
        }
    }

    public static final class c extends DivTextGradientTemplate {
        public final DivRadialGradientTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivRadialGradientTemplate divRadialGradientTemplate) {
            super(null);
            y45.j(divRadialGradientTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divRadialGradientTemplate;
        }

        public final DivRadialGradientTemplate c() {
            return this.c;
        }
    }

    public DivTextGradientTemplate(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String a() {
        if (this instanceof b) {
            return "gradient";
        }
        if (this instanceof c) {
            return "radial_gradient";
        }
        throw new NoWhenBranchMatchedException();
    }

    public final Object b() {
        if (this instanceof b) {
            return ((b) this).c();
        }
        if (this instanceof c) {
            return ((c) this).c();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public JSONObject s() {
        return ((k4) ml0.a().b8().getValue()).b(ml0.b(), this);
    }

    public DivTextGradientTemplate() {
    }
}
