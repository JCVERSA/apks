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

public final class DivRadialGradientTemplate implements d65, ac5 {
    public static final a f = new a(null);
    public static final DivRadialGradientCenter.c g;
    public static final DivRadialGradientCenter.c h;
    public static final DivRadialGradientRadius.c i;
    public static final s74 j;
    public final tp3 a;
    public final tp3 b;
    public final tp3 c;
    public final tp3 d;
    public final tp3 e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        Double dValueOf = Double.valueOf(0.5d);
        g = new DivRadialGradientCenter.c(new DivRadialGradientRelativeCenter(aVar.a(dValueOf)));
        h = new DivRadialGradientCenter.c(new DivRadialGradientRelativeCenter(aVar.a(dValueOf)));
        i = new DivRadialGradientRadius.c(new DivRadialGradientRelativeRadius(aVar.a(DivRadialGradientRelativeRadius.Value.FARTHEST_CORNER)));
        j = new s74() {
            @Override
            public final DivRadialGradientTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivRadialGradientTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
    }

    public DivRadialGradientTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5) {
        y45.j(tp3Var, "centerX");
        y45.j(tp3Var2, "centerY");
        y45.j(tp3Var3, "colorMap");
        y45.j(tp3Var4, "colors");
        y45.j(tp3Var5, "radius");
        this.a = tp3Var;
        this.b = tp3Var2;
        this.c = tp3Var3;
        this.d = tp3Var4;
        this.e = tp3Var5;
    }

    @Override
    public JSONObject s() {
        return ((d3.c) ml0.a().j6().getValue()).b(ml0.b(), this);
    }

    public static final class ColorPointTemplate implements d65, ac5 {
        public static final a c = new a(null);
        public static final s74 d = new s74() {
            @Override
            public final DivRadialGradientTemplate.ColorPointTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivRadialGradientTemplate.ColorPointTemplate(hx7Var, null, false, jSONObject, 6, null);
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
            return ((c3.c) ml0.a().d6().getValue()).b(ml0.b(), this);
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

    public DivRadialGradientTemplate(hx7 hx7Var, DivRadialGradientTemplate divRadialGradientTemplate, boolean z, JSONObject jSONObject, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i2 & 2) != 0 ? null : divRadialGradientTemplate, (i2 & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivRadialGradientTemplate(hx7 hx7Var, DivRadialGradientTemplate divRadialGradientTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
