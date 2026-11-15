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

public final class DivAbsoluteEdgeInsetsTemplate implements d65, ac5 {
    public static final a e = new a(null);
    public static final Expression f;
    public static final Expression g;
    public static final Expression h;
    public static final Expression i;
    public static final s74 j;
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
        f = aVar.a(0L);
        g = aVar.a(0L);
        h = aVar.a(0L);
        i = aVar.a(0L);
        j = new s74() {
            @Override
            public final DivAbsoluteEdgeInsetsTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivAbsoluteEdgeInsetsTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
    }

    public DivAbsoluteEdgeInsetsTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4) {
        y45.j(tp3Var, "bottom");
        y45.j(tp3Var2, TtmlNode.LEFT);
        y45.j(tp3Var3, TtmlNode.RIGHT);
        y45.j(tp3Var4, "top");
        this.a = tp3Var;
        this.b = tp3Var2;
        this.c = tp3Var3;
        this.d = tp3Var4;
    }

    @Override
    public JSONObject s() {
        return ((com.yandex.div2.a.c) ml0.a().F().getValue()).b(ml0.b(), this);
    }

    public DivAbsoluteEdgeInsetsTemplate(hx7 hx7Var, DivAbsoluteEdgeInsetsTemplate divAbsoluteEdgeInsetsTemplate, boolean z, JSONObject jSONObject, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i2 & 2) != 0 ? null : divAbsoluteEdgeInsetsTemplate, (i2 & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivAbsoluteEdgeInsetsTemplate(hx7 hx7Var, DivAbsoluteEdgeInsetsTemplate divAbsoluteEdgeInsetsTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
