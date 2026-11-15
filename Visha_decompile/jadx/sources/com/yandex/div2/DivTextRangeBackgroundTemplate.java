package com.yandex.div2;

import defpackage.ac5;
import defpackage.d65;
import defpackage.hb0;
import defpackage.hx7;
import defpackage.ml0;
import defpackage.s74;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivTextRangeBackgroundTemplate implements d65, ac5 {
    public static final b a = new b(null);
    public static final s74 b = new s74() {
        @Override
        public final DivTextRangeBackgroundTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivTextRangeBackgroundTemplate.b.b(DivTextRangeBackgroundTemplate.a, hx7Var, false, jSONObject, 2, null);
        }
    };

    public static final class a extends DivTextRangeBackgroundTemplate {
        public final DivCloudBackgroundTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(DivCloudBackgroundTemplate divCloudBackgroundTemplate) {
            super(null);
            y45.j(divCloudBackgroundTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divCloudBackgroundTemplate;
        }

        public final DivCloudBackgroundTemplate c() {
            return this.c;
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DivTextRangeBackgroundTemplate b(b bVar, hx7 hx7Var, boolean z, JSONObject jSONObject, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return bVar.a(hx7Var, z, jSONObject);
        }

        public final DivTextRangeBackgroundTemplate a(hx7 hx7Var, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((o4) ml0.a().n8().getValue()).a(hx7Var, jSONObject);
        }

        public b() {
        }
    }

    public static final class c extends DivTextRangeBackgroundTemplate {
        public final DivSolidBackgroundTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivSolidBackgroundTemplate divSolidBackgroundTemplate) {
            super(null);
            y45.j(divSolidBackgroundTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divSolidBackgroundTemplate;
        }

        public final DivSolidBackgroundTemplate c() {
            return this.c;
        }
    }

    public DivTextRangeBackgroundTemplate(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String a() {
        if (this instanceof c) {
            return "solid";
        }
        if (this instanceof a) {
            return hb0.CLOUD;
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
        return ((o4) ml0.a().n8().getValue()).b(ml0.b(), this);
    }

    public DivTextRangeBackgroundTemplate() {
    }
}
