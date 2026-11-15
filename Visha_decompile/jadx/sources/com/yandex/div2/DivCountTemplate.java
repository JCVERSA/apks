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

public abstract class DivCountTemplate implements d65, ac5 {
    public static final a a = new a(null);
    public static final s74 b = new s74() {
        @Override
        public final DivCountTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivCountTemplate.a.b(DivCountTemplate.a, hx7Var, false, jSONObject, 2, null);
        }
    };

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DivCountTemplate b(a aVar, hx7 hx7Var, boolean z, JSONObject jSONObject, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return aVar.a(hx7Var, z, jSONObject);
        }

        public final DivCountTemplate a(hx7 hx7Var, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((s0) ml0.a().t2().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivCountTemplate {
        public final DivFixedCountTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivFixedCountTemplate divFixedCountTemplate) {
            super(null);
            y45.j(divFixedCountTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divFixedCountTemplate;
        }

        public final DivFixedCountTemplate c() {
            return this.c;
        }
    }

    public static final class c extends DivCountTemplate {
        public final DivInfinityCountTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivInfinityCountTemplate divInfinityCountTemplate) {
            super(null);
            y45.j(divInfinityCountTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divInfinityCountTemplate;
        }

        public final DivInfinityCountTemplate c() {
            return this.c;
        }
    }

    public DivCountTemplate(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String a() {
        if (this instanceof c) {
            return "infinity";
        }
        if (this instanceof b) {
            return "fixed";
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
        return ((s0) ml0.a().t2().getValue()).b(ml0.b(), this);
    }

    public DivCountTemplate() {
    }
}
