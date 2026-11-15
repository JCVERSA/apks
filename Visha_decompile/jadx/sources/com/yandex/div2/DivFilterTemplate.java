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

public abstract class DivFilterTemplate implements d65, ac5 {
    public static final b a = new b(null);
    public static final s74 b = new s74() {
        @Override
        public final DivFilterTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivFilterTemplate.b.b(DivFilterTemplate.a, hx7Var, false, jSONObject, 2, null);
        }
    };

    public static final class a extends DivFilterTemplate {
        public final DivBlurTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(DivBlurTemplate divBlurTemplate) {
            super(null);
            y45.j(divBlurTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divBlurTemplate;
        }

        public final DivBlurTemplate c() {
            return this.c;
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DivFilterTemplate b(b bVar, hx7 hx7Var, boolean z, JSONObject jSONObject, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return bVar.a(hx7Var, z, jSONObject);
        }

        public final DivFilterTemplate a(hx7 hx7Var, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((d1) ml0.a().f3().getValue()).a(hx7Var, jSONObject);
        }

        public b() {
        }
    }

    public static final class c extends DivFilterTemplate {
        public final DivFilterRtlMirrorTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivFilterRtlMirrorTemplate divFilterRtlMirrorTemplate) {
            super(null);
            y45.j(divFilterRtlMirrorTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divFilterRtlMirrorTemplate;
        }

        public final DivFilterRtlMirrorTemplate c() {
            return this.c;
        }
    }

    public DivFilterTemplate(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String a() {
        if (this instanceof a) {
            return "blur";
        }
        if (this instanceof c) {
            return "rtl_mirror";
        }
        throw new NoWhenBranchMatchedException();
    }

    public final Object b() {
        if (this instanceof a) {
            return ((a) this).c();
        }
        if (this instanceof c) {
            return ((c) this).c();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public JSONObject s() {
        return ((d1) ml0.a().f3().getValue()).b(ml0.b(), this);
    }

    public DivFilterTemplate() {
    }
}
