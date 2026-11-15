package com.yandex.div2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
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

public final class DivActionScrollByTemplate implements d65, ac5 {
    public static final a f = new a(null);
    public static final Expression g;
    public static final Expression h;
    public static final Expression i;
    public static final Expression j;
    public static final s74 k;
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
        g = aVar.a(Boolean.TRUE);
        h = aVar.a(0L);
        i = aVar.a(0L);
        j = aVar.a(DivActionScrollBy.Overflow.CLAMP);
        k = new s74() {
            @Override
            public final DivActionScrollByTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivActionScrollByTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
    }

    public DivActionScrollByTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5) {
        y45.j(tp3Var, "animated");
        y45.j(tp3Var2, TtmlNode.ATTR_ID);
        y45.j(tp3Var3, "itemCount");
        y45.j(tp3Var4, TypedValues.CycleType.S_WAVE_OFFSET);
        y45.j(tp3Var5, "overflow");
        this.a = tp3Var;
        this.b = tp3Var2;
        this.c = tp3Var3;
        this.d = tp3Var4;
        this.e = tp3Var5;
    }

    @Override
    public JSONObject s() {
        return ((DivActionScrollByJsonParser.c) ml0.a().B0().getValue()).b(ml0.b(), this);
    }

    public DivActionScrollByTemplate(hx7 hx7Var, DivActionScrollByTemplate divActionScrollByTemplate, boolean z, JSONObject jSONObject, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i2 & 2) != 0 ? null : divActionScrollByTemplate, (i2 & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivActionScrollByTemplate(hx7 hx7Var, DivActionScrollByTemplate divActionScrollByTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
