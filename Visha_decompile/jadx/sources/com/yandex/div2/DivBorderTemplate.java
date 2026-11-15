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

public final class DivBorderTemplate implements d65, ac5 {
    public static final a f = new a(null);
    public static final Expression g = Expression.a.a(Boolean.FALSE);
    public static final s74 h = new s74() {
        @Override
        public final DivBorderTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return new DivBorderTemplate(hx7Var, null, false, jSONObject, 6, null);
        }
    };
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

    public DivBorderTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5) {
        y45.j(tp3Var, "cornerRadius");
        y45.j(tp3Var2, "cornersRadius");
        y45.j(tp3Var3, "hasShadow");
        y45.j(tp3Var4, "shadow");
        y45.j(tp3Var5, "stroke");
        this.a = tp3Var;
        this.b = tp3Var2;
        this.c = tp3Var3;
        this.d = tp3Var4;
        this.e = tp3Var5;
    }

    @Override
    public JSONObject s() {
        return ((g0.c) ml0.a().J1().getValue()).b(ml0.b(), this);
    }

    public DivBorderTemplate(hx7 hx7Var, DivBorderTemplate divBorderTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divBorderTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivBorderTemplate(hx7 hx7Var, DivBorderTemplate divBorderTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
