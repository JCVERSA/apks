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

public abstract class DivVariableTemplate implements d65, ac5 {
    public static final d a = new d(null);
    public static final s74 b = new s74() {
        @Override
        public final DivVariableTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivVariableTemplate.d.b(DivVariableTemplate.a, hx7Var, false, jSONObject, 2, null);
        }
    };

    public static final class a extends DivVariableTemplate {
        public final ArrayVariableTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ArrayVariableTemplate arrayVariableTemplate) {
            super(null);
            y45.j(arrayVariableTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = arrayVariableTemplate;
        }

        public final ArrayVariableTemplate c() {
            return this.c;
        }
    }

    public static final class b extends DivVariableTemplate {
        public final BoolVariableTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(BoolVariableTemplate boolVariableTemplate) {
            super(null);
            y45.j(boolVariableTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = boolVariableTemplate;
        }

        public final BoolVariableTemplate c() {
            return this.c;
        }
    }

    public static final class c extends DivVariableTemplate {
        public final ColorVariableTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ColorVariableTemplate colorVariableTemplate) {
            super(null);
            y45.j(colorVariableTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = colorVariableTemplate;
        }

        public final ColorVariableTemplate c() {
            return this.c;
        }
    }

    public static final class d {
        public d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DivVariableTemplate b(d dVar, hx7 hx7Var, boolean z, JSONObject jSONObject, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return dVar.a(hx7Var, z, jSONObject);
        }

        public final DivVariableTemplate a(hx7 hx7Var, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((g5) ml0.a().f9().getValue()).a(hx7Var, jSONObject);
        }

        public d() {
        }
    }

    public static final class e extends DivVariableTemplate {
        public final DictVariableTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(DictVariableTemplate dictVariableTemplate) {
            super(null);
            y45.j(dictVariableTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = dictVariableTemplate;
        }

        public final DictVariableTemplate c() {
            return this.c;
        }
    }

    public static final class f extends DivVariableTemplate {
        public final IntegerVariableTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(IntegerVariableTemplate integerVariableTemplate) {
            super(null);
            y45.j(integerVariableTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = integerVariableTemplate;
        }

        public final IntegerVariableTemplate c() {
            return this.c;
        }
    }

    public static final class g extends DivVariableTemplate {
        public final NumberVariableTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(NumberVariableTemplate numberVariableTemplate) {
            super(null);
            y45.j(numberVariableTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = numberVariableTemplate;
        }

        public final NumberVariableTemplate c() {
            return this.c;
        }
    }

    public static final class h extends DivVariableTemplate {
        public final StrVariableTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(StrVariableTemplate strVariableTemplate) {
            super(null);
            y45.j(strVariableTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = strVariableTemplate;
        }

        public final StrVariableTemplate c() {
            return this.c;
        }
    }

    public static final class i extends DivVariableTemplate {
        public final UrlVariableTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(UrlVariableTemplate urlVariableTemplate) {
            super(null);
            y45.j(urlVariableTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = urlVariableTemplate;
        }

        public final UrlVariableTemplate c() {
            return this.c;
        }
    }

    public DivVariableTemplate(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String a() {
        if (this instanceof h) {
            return "string";
        }
        if (this instanceof g) {
            return "number";
        }
        if (this instanceof f) {
            return TypedValues.Custom.S_INT;
        }
        if (this instanceof b) {
            return TypedValues.Custom.S_BOOLEAN;
        }
        if (this instanceof c) {
            return "color";
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
        if (this instanceof g) {
            return ((g) this).c();
        }
        if (this instanceof f) {
            return ((f) this).c();
        }
        if (this instanceof b) {
            return ((b) this).c();
        }
        if (this instanceof c) {
            return ((c) this).c();
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
        return ((g5) ml0.a().f9().getValue()).b(ml0.b(), this);
    }

    public DivVariableTemplate() {
    }
}
