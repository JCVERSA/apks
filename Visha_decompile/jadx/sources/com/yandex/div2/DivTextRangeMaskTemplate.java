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

public abstract class DivTextRangeMaskTemplate implements d65, ac5 {
    public static final a a = new a(null);
    public static final s74 b = new s74() {
        @Override
        public final DivTextRangeMaskTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivTextRangeMaskTemplate.a.b(DivTextRangeMaskTemplate.a, hx7Var, false, jSONObject, 2, null);
        }
    };

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DivTextRangeMaskTemplate b(a aVar, hx7 hx7Var, boolean z, JSONObject jSONObject, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return aVar.a(hx7Var, z, jSONObject);
        }

        public final DivTextRangeMaskTemplate a(hx7 hx7Var, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((t4) ml0.a().y8().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivTextRangeMaskTemplate {
        public final DivTextRangeMaskParticlesTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivTextRangeMaskParticlesTemplate divTextRangeMaskParticlesTemplate) {
            super(null);
            y45.j(divTextRangeMaskParticlesTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divTextRangeMaskParticlesTemplate;
        }

        public final DivTextRangeMaskParticlesTemplate c() {
            return this.c;
        }
    }

    public static final class c extends DivTextRangeMaskTemplate {
        public final DivTextRangeMaskSolidTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivTextRangeMaskSolidTemplate divTextRangeMaskSolidTemplate) {
            super(null);
            y45.j(divTextRangeMaskSolidTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divTextRangeMaskSolidTemplate;
        }

        public final DivTextRangeMaskSolidTemplate c() {
            return this.c;
        }
    }

    public DivTextRangeMaskTemplate(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String a() {
        if (this instanceof b) {
            return "particles";
        }
        if (this instanceof c) {
            return "solid";
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
        return ((t4) ml0.a().y8().getValue()).b(ml0.b(), this);
    }

    public DivTextRangeMaskTemplate() {
    }
}
