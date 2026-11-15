package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivTimer implements d65, ko4 {
    public static final a h = new a(null);
    public static final Expression i = Expression.a.a(0L);
    public static final s74 j = new s74() {
        @Override
        public final DivTimer invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivTimer.h.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final List b;
    public final String c;
    public final List d;
    public final Expression e;
    public final String f;
    public Integer g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivTimer a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((x4.b) ml0.a().G8().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivTimer(Expression expression, List list, String str, List list2, Expression expression2, String str2) {
        y45.j(expression, "duration");
        y45.j(str, TtmlNode.ATTR_ID);
        this.a = expression;
        this.b = list;
        this.c = str;
        this.d = list2;
        this.e = expression2;
        this.f = str2;
    }

    @Override
    public int hash() {
        int iHash;
        int iHash2;
        Integer num = this.g;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivTimer.class).hashCode() + this.a.hashCode();
        List list = this.b;
        if (list != null) {
            Iterator it = list.iterator();
            iHash = 0;
            while (it.hasNext()) {
                iHash += ((DivAction) it.next()).hash();
            }
        } else {
            iHash = 0;
        }
        int iHashCode2 = iHashCode + iHash + this.c.hashCode();
        List list2 = this.d;
        if (list2 != null) {
            Iterator it2 = list2.iterator();
            iHash2 = 0;
            while (it2.hasNext()) {
                iHash2 += ((DivAction) it2.next()).hash();
            }
        } else {
            iHash2 = 0;
        }
        int i2 = iHashCode2 + iHash2;
        Expression expression = this.e;
        int iHashCode3 = i2 + (expression != null ? expression.hashCode() : 0);
        String str = this.f;
        int iHashCode4 = iHashCode3 + (str != null ? str.hashCode() : 0);
        this.g = Integer.valueOf(iHashCode4);
        return iHashCode4;
    }

    @Override
    public JSONObject s() {
        return ((x4.b) ml0.a().G8().getValue()).b(ml0.b(), this);
    }
}
