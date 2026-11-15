package com.yandex.div2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
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

public abstract class DivTypedValueTemplate implements d65, ac5 {
    public static final d a = new d(null);
    public static final s74 b = new s74() {
        @Override
        public final DivTypedValueTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivTypedValueTemplate.d.b(DivTypedValueTemplate.a, hx7Var, false, jSONObject, 2, null);
        }
    };

    public static final class a extends DivTypedValueTemplate {
        public final ArrayValueTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ArrayValueTemplate arrayValueTemplate) {
            super(null);
            y45.j(arrayValueTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = arrayValueTemplate;
        }

        public final ArrayValueTemplate c() {
            return this.c;
        }
    }

    public static final class b extends DivTypedValueTemplate {
        public final BoolValueTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(BoolValueTemplate boolValueTemplate) {
            super(null);
            y45.j(boolValueTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = boolValueTemplate;
        }

        public final BoolValueTemplate c() {
            return this.c;
        }
    }

    public static final class c extends DivTypedValueTemplate {
        public final ColorValueTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ColorValueTemplate colorValueTemplate) {
            super(null);
            y45.j(colorValueTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = colorValueTemplate;
        }

        public final ColorValueTemplate c() {
            return this.c;
        }
    }

    public static final class d {
        public d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DivTypedValueTemplate b(d dVar, hx7 hx7Var, boolean z, JSONObject jSONObject, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return dVar.a(hx7Var, z, jSONObject);
        }

        public final DivTypedValueTemplate a(hx7 hx7Var, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((d5) ml0.a().c9().getValue()).a(hx7Var, jSONObject);
        }

        public d() {
        }
    }

    public static final class e extends DivTypedValueTemplate {
        public final DictValueTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(DictValueTemplate dictValueTemplate) {
            super(null);
            y45.j(dictValueTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = dictValueTemplate;
        }

        public final DictValueTemplate c() {
            return this.c;
        }
    }

    public static final class f extends DivTypedValueTemplate {
        public final IntegerValueTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(IntegerValueTemplate integerValueTemplate) {
            super(null);
            y45.j(integerValueTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = integerValueTemplate;
        }

        public final IntegerValueTemplate c() {
            return this.c;
        }
    }

    public static final class g extends DivTypedValueTemplate {
        public final NumberValueTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(NumberValueTemplate numberValueTemplate) {
            super(null);
            y45.j(numberValueTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = numberValueTemplate;
        }

        public final NumberValueTemplate c() {
            return this.c;
        }
    }

    public static final class h extends DivTypedValueTemplate {
        public final StrValueTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(StrValueTemplate strValueTemplate) {
            super(null);
            y45.j(strValueTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = strValueTemplate;
        }

        public final StrValueTemplate c() {
            return this.c;
        }
    }

    public static final class i extends DivTypedValueTemplate {
        public final UrlValueTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(UrlValueTemplate urlValueTemplate) {
            super(null);
            y45.j(urlValueTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = urlValueTemplate;
        }

        public final UrlValueTemplate c() {
            return this.c;
        }
    }

    public DivTypedValueTemplate(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String a() {
        if (this instanceof h) {
            return "string";
        }
        if (this instanceof f) {
            return TypedValues.Custom.S_INT;
        }
        if (this instanceof g) {
            return "number";
        }
        if (this instanceof c) {
            return "color";
        }
        if (this instanceof b) {
            return TypedValues.Custom.S_BOOLEAN;
        }
        if (this instanceof i) {
            return "url";
        }
        if (this instanceof e) {
            return "dict";
        }
        if (this instanceof a) {
            return "array";
        }
        throw new NoWhenBranchMatchedException();
    }

    public final Object b() {
        if (this instanceof h) {
            return ((h) this).c();
        }
        if (this instanceof f) {
            return ((f) this).c();
        }
        if (this instanceof g) {
            return ((g) this).c();
        }
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof b) {
            return ((b) this).c();
        }
        if (this instanceof i) {
            return ((i) this).c();
        }
        if (this instanceof e) {
            return ((e) this).c();
        }
        if (this instanceof a) {
            return ((a) this).c();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public JSONObject s() {
        return ((d5) ml0.a().c9().getValue()).b(ml0.b(), this);
    }

    public DivTypedValueTemplate() {
    }
}
