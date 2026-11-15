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

public final class DivImageBackgroundTemplate implements d65, ac5 {
    public static final a h = new a(null);
    public static final Expression i;
    public static final Expression j;
    public static final Expression k;
    public static final Expression l;
    public static final Expression m;
    public static final s74 n;
    public final tp3 a;
    public final tp3 b;
    public final tp3 c;
    public final tp3 d;
    public final tp3 e;
    public final tp3 f;
    public final tp3 g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        i = aVar.a(Double.valueOf(1.0d));
        j = aVar.a(DivAlignmentHorizontal.CENTER);
        k = aVar.a(DivAlignmentVertical.CENTER);
        l = aVar.a(Boolean.FALSE);
        m = aVar.a(DivImageScale.FILL);
        n = new s74() {
            @Override
            public final DivImageBackgroundTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivImageBackgroundTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
    }

    public DivImageBackgroundTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5, tp3 tp3Var6, tp3 tp3Var7) {
        y45.j(tp3Var, "alpha");
        y45.j(tp3Var2, "contentAlignmentHorizontal");
        y45.j(tp3Var3, "contentAlignmentVertical");
        y45.j(tp3Var4, "filters");
        y45.j(tp3Var5, "imageUrl");
        y45.j(tp3Var6, "preloadRequired");
        y45.j(tp3Var7, "scale");
        this.a = tp3Var;
        this.b = tp3Var2;
        this.c = tp3Var3;
        this.d = tp3Var4;
        this.e = tp3Var5;
        this.f = tp3Var6;
        this.g = tp3Var7;
    }

    @Override
    public JSONObject s() {
        return ((DivImageBackgroundJsonParser.c) ml0.a().S3().getValue()).b(ml0.b(), this);
    }

    public DivImageBackgroundTemplate(hx7 hx7Var, DivImageBackgroundTemplate divImageBackgroundTemplate, boolean z, JSONObject jSONObject, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i2 & 2) != 0 ? null : divImageBackgroundTemplate, (i2 & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivImageBackgroundTemplate(hx7 hx7Var, DivImageBackgroundTemplate divImageBackgroundTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
