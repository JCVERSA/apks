package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.livecaption.constant.ICode;
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

public final class DivColorAnimatorTemplate implements d65, ac5 {
    public static final a l = new a(null);
    public static final Expression m;
    public static final Expression n;
    public static final DivCount.b o;
    public static final Expression p;
    public static final s74 q;
    public final tp3 a;
    public final tp3 b;
    public final tp3 c;
    public final tp3 d;
    public final tp3 e;
    public final tp3 f;
    public final tp3 g;
    public final tp3 h;
    public final tp3 i;
    public final tp3 j;
    public final tp3 k;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        m = aVar.a(DivAnimationDirection.NORMAL);
        n = aVar.a(DivAnimationInterpolator.LINEAR);
        o = new DivCount.b(new DivFixedCount(aVar.a(1L)));
        p = aVar.a(0L);
        q = new s74() {
            @Override
            public final DivColorAnimatorTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivColorAnimatorTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
    }

    public DivColorAnimatorTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5, tp3 tp3Var6, tp3 tp3Var7, tp3 tp3Var8, tp3 tp3Var9, tp3 tp3Var10, tp3 tp3Var11) {
        y45.j(tp3Var, "cancelActions");
        y45.j(tp3Var2, ICode.CALL.CALL_KEY_DIRECTION);
        y45.j(tp3Var3, "duration");
        y45.j(tp3Var4, "endActions");
        y45.j(tp3Var5, "endValue");
        y45.j(tp3Var6, TtmlNode.ATTR_ID);
        y45.j(tp3Var7, "interpolator");
        y45.j(tp3Var8, "repeatCount");
        y45.j(tp3Var9, "startDelay");
        y45.j(tp3Var10, "startValue");
        y45.j(tp3Var11, "variableName");
        this.a = tp3Var;
        this.b = tp3Var2;
        this.c = tp3Var3;
        this.d = tp3Var4;
        this.e = tp3Var5;
        this.f = tp3Var6;
        this.g = tp3Var7;
        this.h = tp3Var8;
        this.i = tp3Var9;
        this.j = tp3Var10;
        this.k = tp3Var11;
    }

    @Override
    public JSONObject s() {
        return ((DivColorAnimatorJsonParser.c) ml0.a().h2().getValue()).b(ml0.b(), this);
    }

    public DivColorAnimatorTemplate(hx7 hx7Var, DivColorAnimatorTemplate divColorAnimatorTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divColorAnimatorTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivColorAnimatorTemplate(hx7 hx7Var, DivColorAnimatorTemplate divColorAnimatorTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
