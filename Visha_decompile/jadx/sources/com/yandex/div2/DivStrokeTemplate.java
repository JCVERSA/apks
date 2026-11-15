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

public final class DivStrokeTemplate implements d65, ac5 {
    public static final a e = new a(null);
    public static final DivStrokeStyle.c f = new DivStrokeStyle.c(new DivStrokeStyleSolid());
    public static final Expression g;
    public static final Expression h;
    public static final s74 i;
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

    static {
        Expression.a aVar = Expression.a;
        g = aVar.a(DivSizeUnit.DP);
        h = aVar.a(Double.valueOf(1.0d));
        i = new s74() {
            @Override
            public final DivStrokeTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivStrokeTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
    }

    public DivStrokeTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4) {
        y45.j(tp3Var, "color");
        y45.j(tp3Var2, "style");
        y45.j(tp3Var3, "unit");
        y45.j(tp3Var4, "width");
        this.a = tp3Var;
        this.b = tp3Var2;
        this.c = tp3Var3;
        this.d = tp3Var4;
    }

    @Override
    public JSONObject s() {
        return ((DivStrokeJsonParser.c) ml0.a().x7().getValue()).b(ml0.b(), this);
    }

    public DivStrokeTemplate(hx7 hx7Var, DivStrokeTemplate divStrokeTemplate, boolean z, JSONObject jSONObject, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i2 & 2) != 0 ? null : divStrokeTemplate, (i2 & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivStrokeTemplate(hx7 hx7Var, DivStrokeTemplate divStrokeTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
