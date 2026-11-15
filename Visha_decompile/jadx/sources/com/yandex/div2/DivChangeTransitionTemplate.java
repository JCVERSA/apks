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

public abstract class DivChangeTransitionTemplate implements d65, ac5 {
    public static final b a = new b(null);
    public static final s74 b = new s74() {
        @Override
        public final DivChangeTransitionTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivChangeTransitionTemplate.b.b(DivChangeTransitionTemplate.a, hx7Var, false, jSONObject, 2, null);
        }
    };

    public static final class a extends DivChangeTransitionTemplate {
        public final DivChangeBoundsTransitionTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(DivChangeBoundsTransitionTemplate divChangeBoundsTransitionTemplate) {
            super(null);
            y45.j(divChangeBoundsTransitionTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divChangeBoundsTransitionTemplate;
        }

        public final DivChangeBoundsTransitionTemplate c() {
            return this.c;
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DivChangeTransitionTemplate b(b bVar, hx7 hx7Var, boolean z, JSONObject jSONObject, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return bVar.a(hx7Var, z, jSONObject);
        }

        public final DivChangeTransitionTemplate a(hx7 hx7Var, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((j0) ml0.a().S1().getValue()).a(hx7Var, jSONObject);
        }

        public b() {
        }
    }

    public static final class c extends DivChangeTransitionTemplate {
        public final DivChangeSetTransitionTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivChangeSetTransitionTemplate divChangeSetTransitionTemplate) {
            super(null);
            y45.j(divChangeSetTransitionTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divChangeSetTransitionTemplate;
        }

        public final DivChangeSetTransitionTemplate c() {
            return this.c;
        }
    }

    public DivChangeTransitionTemplate(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String a() {
        if (this instanceof c) {
            return "set";
        }
        if (this instanceof a) {
            return "change_bounds";
        }
        throw new NoWhenBranchMatchedException();
    }

    public final Object b() {
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof a) {
            return ((a) this).c();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public JSONObject s() {
        return ((j0) ml0.a().S1().getValue()).b(ml0.b(), this);
    }

    public DivChangeTransitionTemplate() {
    }
}
