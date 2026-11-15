package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.nj3;
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

public final class DivLinearGradient implements d65, ko4 {
    public static final a e = new a(null);
    public static final Expression f = Expression.a.a(0L);
    public static final s74 g = new s74() {
        @Override
        public final DivLinearGradient invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivLinearGradient.e.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final List b;
    public final nj3 c;
    public Integer d;

    public static final class ColorPoint implements d65, ko4 {
        public static final a d = new a(null);
        public static final s74 e = new s74() {
            @Override
            public final DivLinearGradient.ColorPoint invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivLinearGradient.ColorPoint.d.a(hx7Var, jSONObject);
            }
        };
        public final Expression a;
        public final Expression b;
        public Integer c;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final ColorPoint a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((j2.b) ml0.a().P4().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        public ColorPoint(Expression expression, Expression expression2) {
            y45.j(expression, "color");
            y45.j(expression2, "position");
            this.a = expression;
            this.b = expression2;
        }

        public final boolean a(ColorPoint colorPoint, oj3 oj3Var, oj3 oj3Var2) {
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            return colorPoint != null && ((Number) this.a.b(oj3Var)).intValue() == ((Number) colorPoint.a.b(oj3Var2)).intValue() && ((Number) this.b.b(oj3Var)).doubleValue() == ((Number) colorPoint.b.b(oj3Var2)).doubleValue();
        }

        @Override
        public int hash() {
            Integer num = this.c;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(ColorPoint.class).hashCode() + this.a.hashCode() + this.b.hashCode();
            this.c = Integer.valueOf(iHashCode);
            return iHashCode;
        }

        @Override
        public JSONObject s() {
            return ((j2.b) ml0.a().P4().getValue()).b(ml0.b(), this);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivLinearGradient a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((k2.b) ml0.a().S4().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivLinearGradient(Expression expression, List list, nj3 nj3Var) {
        y45.j(expression, "angle");
        this.a = expression;
        this.b = list;
        this.c = nj3Var;
    }

    public final boolean a(DivLinearGradient divLinearGradient, oj3 oj3Var, oj3 oj3Var2) {
        List listA;
        List listA2;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divLinearGradient == null || ((Number) this.a.b(oj3Var)).longValue() != ((Number) divLinearGradient.a.b(oj3Var2)).longValue()) {
            return false;
        }
        List list = this.b;
        if (list != null) {
            List list2 = divLinearGradient.b;
            if (list2 == null || list.size() != list2.size()) {
                return false;
            }
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    y71.u();
                }
                if (!((ColorPoint) obj).a((ColorPoint) list2.get(i), oj3Var, oj3Var2)) {
                    return false;
                }
                i = i2;
            }
        } else if (divLinearGradient.b != null) {
            return false;
        }
        nj3 nj3Var = this.c;
        if (nj3Var == null || (listA = nj3Var.a(oj3Var)) == null) {
            if (divLinearGradient.c != null) {
                return false;
            }
        } else {
            nj3 nj3Var2 = divLinearGradient.c;
            if (nj3Var2 == null || (listA2 = nj3Var2.a(oj3Var2)) == null || listA.size() != listA2.size()) {
                return false;
            }
            int i3 = 0;
            for (Object obj2 : listA) {
                int i4 = i3 + 1;
                if (i3 < 0) {
                    y71.u();
                }
                if (((Number) obj2).intValue() != ((Number) listA2.get(i3)).intValue()) {
                    return false;
                }
                i3 = i4;
            }
        }
        return true;
    }

    @Override
    public int hash() {
        int iHash;
        Integer num = this.d;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivLinearGradient.class).hashCode() + this.a.hashCode();
        List list = this.b;
        if (list != null) {
            Iterator it = list.iterator();
            iHash = 0;
            while (it.hasNext()) {
                iHash += ((ColorPoint) it.next()).hash();
            }
        } else {
            iHash = 0;
        }
        int i = iHashCode + iHash;
        nj3 nj3Var = this.c;
        int iHashCode2 = i + (nj3Var != null ? nj3Var.hashCode() : 0);
        this.d = Integer.valueOf(iHashCode2);
        return iHashCode2;
    }

    @Override
    public JSONObject s() {
        return ((k2.b) ml0.a().S4().getValue()).b(ml0.b(), this);
    }
}
