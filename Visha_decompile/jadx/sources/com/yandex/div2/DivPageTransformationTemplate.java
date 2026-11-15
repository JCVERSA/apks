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

public abstract class DivPageTransformationTemplate implements d65, ac5 {
    public static final a a = new a(null);
    public static final s74 b = new s74() {
        @Override
        public final DivPageTransformationTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivPageTransformationTemplate.a.b(DivPageTransformationTemplate.a, hx7Var, false, jSONObject, 2, null);
        }
    };

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DivPageTransformationTemplate b(a aVar, hx7 hx7Var, boolean z, JSONObject jSONObject, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return aVar.a(hx7Var, z, jSONObject);
        }

        public final DivPageTransformationTemplate a(hx7 hx7Var, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((n2) ml0.a().o5().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivPageTransformationTemplate {
        public final DivPageTransformationOverlapTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivPageTransformationOverlapTemplate divPageTransformationOverlapTemplate) {
            super(null);
            y45.j(divPageTransformationOverlapTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divPageTransformationOverlapTemplate;
        }

        public final DivPageTransformationOverlapTemplate c() {
            return this.c;
        }
    }

    public static final class c extends DivPageTransformationTemplate {
        public final DivPageTransformationSlideTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivPageTransformationSlideTemplate divPageTransformationSlideTemplate) {
            super(null);
            y45.j(divPageTransformationSlideTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divPageTransformationSlideTemplate;
        }

        public final DivPageTransformationSlideTemplate c() {
            return this.c;
        }
    }

    public DivPageTransformationTemplate(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String a() {
        if (this instanceof c) {
            return "slide";
        }
        if (this instanceof b) {
            return "overlap";
        }
        throw new NoWhenBranchMatchedException();
    }

    public final Object b() {
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof b) {
            return ((b) this).c();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public JSONObject s() {
        return ((n2) ml0.a().o5().getValue()).b(ml0.b(), this);
    }

    public DivPageTransformationTemplate() {
    }
}
