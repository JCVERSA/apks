package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.y71;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivImageBackground implements d65, ko4 {
    public static final a i = new a(null);
    public static final Expression j;
    public static final Expression k;
    public static final Expression l;
    public static final Expression m;
    public static final Expression n;
    public static final s74 o;
    public final Expression a;
    public final Expression b;
    public final Expression c;
    public final List d;
    public final Expression e;
    public final Expression f;
    public final Expression g;
    public Integer h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivImageBackground a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivImageBackgroundJsonParser.b) ml0.a().R3().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        j = aVar.a(Double.valueOf(1.0d));
        k = aVar.a(DivAlignmentHorizontal.CENTER);
        l = aVar.a(DivAlignmentVertical.CENTER);
        m = aVar.a(Boolean.FALSE);
        n = aVar.a(DivImageScale.FILL);
        o = new s74() {
            @Override
            public final DivImageBackground invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivImageBackground.i.a(hx7Var, jSONObject);
            }
        };
    }

    public DivImageBackground(Expression expression, Expression expression2, Expression expression3, List list, Expression expression4, Expression expression5, Expression expression6) {
        y45.j(expression, "alpha");
        y45.j(expression2, "contentAlignmentHorizontal");
        y45.j(expression3, "contentAlignmentVertical");
        y45.j(expression4, "imageUrl");
        y45.j(expression5, "preloadRequired");
        y45.j(expression6, "scale");
        this.a = expression;
        this.b = expression2;
        this.c = expression3;
        this.d = list;
        this.e = expression4;
        this.f = expression5;
        this.g = expression6;
    }

    public final boolean a(DivImageBackground divImageBackground, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divImageBackground == null || ((Number) this.a.b(oj3Var)).doubleValue() != ((Number) divImageBackground.a.b(oj3Var2)).doubleValue() || this.b.b(oj3Var) != divImageBackground.b.b(oj3Var2) || this.c.b(oj3Var) != divImageBackground.c.b(oj3Var2)) {
            return false;
        }
        List list = this.d;
        if (list != null) {
            List list2 = divImageBackground.d;
            if (list2 == null || list.size() != list2.size()) {
                return false;
            }
            int i2 = 0;
            for (Object obj : list) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    y71.u();
                }
                if (!((DivFilter) obj).a((DivFilter) list2.get(i2), oj3Var, oj3Var2)) {
                    return false;
                }
                i2 = i3;
            }
        } else if (divImageBackground.d != null) {
            return false;
        }
        return y45.e(this.e.b(oj3Var), divImageBackground.e.b(oj3Var2)) && ((Boolean) this.f.b(oj3Var)).booleanValue() == ((Boolean) divImageBackground.f.b(oj3Var2)).booleanValue() && this.g.b(oj3Var) == divImageBackground.g.b(oj3Var2);
    }

    @Override
    public int hash() {
        Integer num = this.h;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivImageBackground.class).hashCode() + this.a.hashCode() + this.b.hashCode() + this.c.hashCode();
        List list = this.d;
        int iHash = 0;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                iHash += ((DivFilter) it.next()).hash();
            }
        }
        int iHashCode2 = iHashCode + iHash + this.e.hashCode() + this.f.hashCode() + this.g.hashCode();
        this.h = Integer.valueOf(iHashCode2);
        return iHashCode2;
    }

    @Override
    public JSONObject s() {
        return ((DivImageBackgroundJsonParser.b) ml0.a().R3().getValue()).b(ml0.b(), this);
    }
}
