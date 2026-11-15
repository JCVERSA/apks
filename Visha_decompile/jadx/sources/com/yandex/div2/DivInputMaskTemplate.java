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

public abstract class DivInputMaskTemplate implements d65, ac5 {
    public static final a a = new a(null);
    public static final s74 b = new s74() {
        @Override
        public final DivInputMaskTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivInputMaskTemplate.a.b(DivInputMaskTemplate.a, hx7Var, false, jSONObject, 2, null);
        }
    };

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DivInputMaskTemplate b(a aVar, hx7 hx7Var, boolean z, JSONObject jSONObject, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return aVar.a(hx7Var, z, jSONObject);
        }

        public final DivInputMaskTemplate a(hx7 hx7Var, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((v1) ml0.a().t4().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivInputMaskTemplate {
        public final DivCurrencyInputMaskTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivCurrencyInputMaskTemplate divCurrencyInputMaskTemplate) {
            super(null);
            y45.j(divCurrencyInputMaskTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divCurrencyInputMaskTemplate;
        }

        public final DivCurrencyInputMaskTemplate c() {
            return this.c;
        }
    }

    public static final class c extends DivInputMaskTemplate {
        public final DivFixedLengthInputMaskTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivFixedLengthInputMaskTemplate divFixedLengthInputMaskTemplate) {
            super(null);
            y45.j(divFixedLengthInputMaskTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divFixedLengthInputMaskTemplate;
        }

        public final DivFixedLengthInputMaskTemplate c() {
            return this.c;
        }
    }

    public static final class d extends DivInputMaskTemplate {
        public final DivPhoneInputMaskTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(DivPhoneInputMaskTemplate divPhoneInputMaskTemplate) {
            super(null);
            y45.j(divPhoneInputMaskTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divPhoneInputMaskTemplate;
        }

        public final DivPhoneInputMaskTemplate c() {
            return this.c;
        }
    }

    public DivInputMaskTemplate(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String a() {
        if (this instanceof c) {
            return "fixed_length";
        }
        if (this instanceof b) {
            return "currency";
        }
        if (this instanceof d) {
            return "phone";
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
        if (this instanceof d) {
            return ((d) this).c();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public JSONObject s() {
        return ((v1) ml0.a().t4().getValue()).b(ml0.b(), this);
    }

    public DivInputMaskTemplate() {
    }
}
