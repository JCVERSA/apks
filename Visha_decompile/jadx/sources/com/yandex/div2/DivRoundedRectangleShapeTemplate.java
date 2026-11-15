package com.yandex.div2;

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

public final class DivRoundedRectangleShapeTemplate implements d65, ac5 {
    public static final a f = new a(null);
    public static final DivFixedSize g;
    public static final DivFixedSize h;
    public static final DivFixedSize i;
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
        g = new DivFixedSize(null, aVar.a(5L), 1, null);
        h = new DivFixedSize(null, aVar.a(10L), 1, null);
        i = new DivFixedSize(null, aVar.a(10L), 1, null);
        j = new s74() {
            @Override
            public final DivRoundedRectangleShapeTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivRoundedRectangleShapeTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
    }

    public DivRoundedRectangleShapeTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4, tp3 tp3Var5) {
        y45.j(tp3Var, TtmlNode.ATTR_TTS_BACKGROUND_COLOR);
        y45.j(tp3Var2, "cornerRadius");
        y45.j(tp3Var3, "itemHeight");
        y45.j(tp3Var4, "itemWidth");
        y45.j(tp3Var5, "stroke");
        this.a = tp3Var;
        this.b = tp3Var2;
        this.c = tp3Var3;
        this.d = tp3Var4;
        this.e = tp3Var5;
    }

    @Override
    public JSONObject s() {
        return ((h3.c) ml0.a().v6().getValue()).b(ml0.b(), this);
    }

    public DivRoundedRectangleShapeTemplate(hx7 hx7Var, DivRoundedRectangleShapeTemplate divRoundedRectangleShapeTemplate, boolean z, JSONObject jSONObject, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i2 & 2) != 0 ? null : divRoundedRectangleShapeTemplate, (i2 & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivRoundedRectangleShapeTemplate(hx7 hx7Var, DivRoundedRectangleShapeTemplate divRoundedRectangleShapeTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
