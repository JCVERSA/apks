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

public final class DivLinearGradientTemplate implements d65, ac5 {
    public static final a d = new a(null);
    public static final Expression e = Expression.a.a(0L);
    public static final s74 f = new s74() {
        @Override
        public final DivLinearGradientTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return new DivLinearGradientTemplate(hx7Var, null, false, jSONObject, 6, null);
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

    public DivLinearGradientTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3) {
        y45.j(tp3Var, "angle");
        y45.j(tp3Var2, "colorMap");
        y45.j(tp3Var3, "colors");
        this.a = tp3Var;
        this.b = tp3Var2;
        this.c = tp3Var3;
    }

    @Override
    public JSONObject s() {
        return ((k2.c) ml0.a().T4().getValue()).b(ml0.b(), this);
    }

    public static final class ColorPointTemplate implements d65, ac5 {
        public static final a c = new a(null);
        public static final s74 d = new s74() {
            @Override
            public final DivLinearGradientTemplate.ColorPointTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivLinearGradientTemplate.ColorPointTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
        public final tp3 a;
        public final tp3 b;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        public ColorPointTemplate(tp3 tp3Var, tp3 tp3Var2) {
            y45.j(tp3Var, "color");
            y45.j(tp3Var2, "position");
            this.a = tp3Var;
            this.b = tp3Var2;
        }

        @Override
        public JSONObject s() {
            return ((j2.c) ml0.a().Q4().getValue()).b(ml0.b(), this);
        }

        public ColorPointTemplate(hx7 hx7Var, ColorPointTemplate colorPointTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(hx7Var, (i & 2) != 0 ? null : colorPointTemplate, (i & 4) != 0 ? false : z, jSONObject);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public ColorPointTemplate(hx7 hx7Var, ColorPointTemplate colorPointTemplate, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            tp3.a aVar = tp3.c;
            this(aVar.a(false), aVar.a(false));
            throw new UnsupportedOperationException("Do not use this constructor directly.");
        }
    }

    public DivLinearGradientTemplate(hx7 hx7Var, DivLinearGradientTemplate divLinearGradientTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divLinearGradientTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivLinearGradientTemplate(hx7 hx7Var, DivLinearGradientTemplate divLinearGradientTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
