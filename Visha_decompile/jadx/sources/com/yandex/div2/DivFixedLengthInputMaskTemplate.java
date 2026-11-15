package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.ac5;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ml0;
import defpackage.s74;
import defpackage.tp3;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivFixedLengthInputMaskTemplate implements d65, ac5 {
    public static final a e = new a(null);
    public static final Expression f = Expression.a.a(Boolean.FALSE);
    public static final s74 g = new s74() {
        @Override
        public final DivFixedLengthInputMaskTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return new DivFixedLengthInputMaskTemplate(hx7Var, null, false, jSONObject, 6, null);
        }
    };
    public final tp3 a;
    public final tp3 b;
    public final tp3 c;
    public final tp3 d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public DivFixedLengthInputMaskTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4) {
        y45.j(tp3Var, "alwaysVisible");
        y45.j(tp3Var2, "pattern");
        y45.j(tp3Var3, "patternElements");
        y45.j(tp3Var4, "rawTextVariable");
        this.a = tp3Var;
        this.b = tp3Var2;
        this.c = tp3Var3;
        this.d = tp3Var4;
    }

    @Override
    public JSONObject s() {
        return ((g1.c) ml0.a().o3().getValue()).b(ml0.b(), this);
    }

    public static final class PatternElementTemplate implements d65, ac5 {
        public static final a d = new a(null);
        public static final Expression e = Expression.a.a("_");
        public static final s74 f = new s74() {
            @Override
            public final DivFixedLengthInputMaskTemplate.PatternElementTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivFixedLengthInputMaskTemplate.PatternElementTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
        public final tp3 a;
        public final tp3 b;
        public final tp3 c;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        public PatternElementTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3) {
            y45.j(tp3Var, "key");
            y45.j(tp3Var2, "placeholder");
            y45.j(tp3Var3, "regex");
            this.a = tp3Var;
            this.b = tp3Var2;
            this.c = tp3Var3;
        }

        @Override
        public JSONObject s() {
            return ((h1.c) ml0.a().r3().getValue()).b(ml0.b(), this);
        }

        public PatternElementTemplate(hx7 hx7Var, PatternElementTemplate patternElementTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(hx7Var, (i & 2) != 0 ? null : patternElementTemplate, (i & 4) != 0 ? false : z, jSONObject);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public PatternElementTemplate(hx7 hx7Var, PatternElementTemplate patternElementTemplate, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            tp3.a aVar = tp3.c;
            this(aVar.a(false), aVar.a(false), aVar.a(false));
            throw new UnsupportedOperationException("Do not use this constructor directly.");
        }
    }

    public DivFixedLengthInputMaskTemplate(hx7 hx7Var, DivFixedLengthInputMaskTemplate divFixedLengthInputMaskTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divFixedLengthInputMaskTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivFixedLengthInputMaskTemplate(hx7 hx7Var, DivFixedLengthInputMaskTemplate divFixedLengthInputMaskTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
