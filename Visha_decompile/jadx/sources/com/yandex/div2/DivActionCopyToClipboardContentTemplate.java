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

public abstract class DivActionCopyToClipboardContentTemplate implements d65, ac5 {
    public static final a a = new a(null);
    public static final s74 b = new s74() {
        @Override
        public final DivActionCopyToClipboardContentTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionCopyToClipboardContentTemplate.a.b(DivActionCopyToClipboardContentTemplate.a, hx7Var, false, jSONObject, 2, null);
        }
    };

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DivActionCopyToClipboardContentTemplate b(a aVar, hx7 hx7Var, boolean z, JSONObject jSONObject, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return aVar.a(hx7Var, z, jSONObject);
        }

        public final DivActionCopyToClipboardContentTemplate a(hx7 hx7Var, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((com.yandex.div2.c) ml0.a().d0().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivActionCopyToClipboardContentTemplate {
        public final ContentTextTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ContentTextTemplate contentTextTemplate) {
            super(null);
            y45.j(contentTextTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = contentTextTemplate;
        }

        public final ContentTextTemplate c() {
            return this.c;
        }
    }

    public static final class c extends DivActionCopyToClipboardContentTemplate {
        public final ContentUrlTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ContentUrlTemplate contentUrlTemplate) {
            super(null);
            y45.j(contentUrlTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = contentUrlTemplate;
        }

        public final ContentUrlTemplate c() {
            return this.c;
        }
    }

    public DivActionCopyToClipboardContentTemplate(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String a() {
        if (this instanceof b) {
            return "text";
        }
        if (this instanceof c) {
            return "url";
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
        return ((com.yandex.div2.c) ml0.a().d0().getValue()).b(ml0.b(), this);
    }

    public DivActionCopyToClipboardContentTemplate() {
    }
}
