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

public abstract class DivBackgroundTemplate implements d65, ac5 {
    public static final a a = new a(null);
    public static final s74 b = new s74() {
        @Override
        public final DivBackgroundTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivBackgroundTemplate.a.b(DivBackgroundTemplate.a, hx7Var, false, jSONObject, 2, null);
        }
    };

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DivBackgroundTemplate b(a aVar, hx7 hx7Var, boolean z, JSONObject jSONObject, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return aVar.a(hx7Var, z, jSONObject);
        }

        public final DivBackgroundTemplate a(hx7 hx7Var, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((d0) ml0.a().D1().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivBackgroundTemplate {
        public final DivImageBackgroundTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivImageBackgroundTemplate divImageBackgroundTemplate) {
            super(null);
            y45.j(divImageBackgroundTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divImageBackgroundTemplate;
        }

        public final DivImageBackgroundTemplate c() {
            return this.c;
        }
    }

    public static final class c extends DivBackgroundTemplate {
        public final DivLinearGradientTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivLinearGradientTemplate divLinearGradientTemplate) {
            super(null);
            y45.j(divLinearGradientTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divLinearGradientTemplate;
        }

        public final DivLinearGradientTemplate c() {
            return this.c;
        }
    }

    public static final class d extends DivBackgroundTemplate {
        public final DivNinePatchBackgroundTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(DivNinePatchBackgroundTemplate divNinePatchBackgroundTemplate) {
            super(null);
            y45.j(divNinePatchBackgroundTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divNinePatchBackgroundTemplate;
        }

        public final DivNinePatchBackgroundTemplate c() {
            return this.c;
        }
    }

    public static final class e extends DivBackgroundTemplate {
        public final DivRadialGradientTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(DivRadialGradientTemplate divRadialGradientTemplate) {
            super(null);
            y45.j(divRadialGradientTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divRadialGradientTemplate;
        }

        public final DivRadialGradientTemplate c() {
            return this.c;
        }
    }

    public static final class f extends DivBackgroundTemplate {
        public final DivSolidBackgroundTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(DivSolidBackgroundTemplate divSolidBackgroundTemplate) {
            super(null);
            y45.j(divSolidBackgroundTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divSolidBackgroundTemplate;
        }

        public final DivSolidBackgroundTemplate c() {
            return this.c;
        }
    }

    public DivBackgroundTemplate(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String a() {
        if (this instanceof c) {
            return "gradient";
        }
        if (this instanceof e) {
            return "radial_gradient";
        }
        if (this instanceof b) {
            return "image";
        }
        if (this instanceof f) {
            return "solid";
        }
        if (this instanceof d) {
            return "nine_patch_image";
        }
        throw new NoWhenBranchMatchedException();
    }

    public final Object b() {
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof e) {
            return ((e) this).c();
        }
        if (this instanceof b) {
            return ((b) this).c();
        }
        if (this instanceof f) {
            return ((f) this).c();
        }
        if (this instanceof d) {
            return ((d) this).c();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public JSONObject s() {
        return ((d0) ml0.a().D1().getValue()).b(ml0.b(), this);
    }

    public DivBackgroundTemplate() {
    }
}
