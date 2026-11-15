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

public final class DivRadialGradient implements d65, ko4 {
    public static final a g = new a(null);
    public static final DivRadialGradientCenter.c h;
    public static final DivRadialGradientCenter.c i;
    public static final DivRadialGradientRadius.c j;
    public static final s74 k;
    public final DivRadialGradientCenter a;
    public final DivRadialGradientCenter b;
    public final List c;
    public final nj3 d;
    public final DivRadialGradientRadius e;
    public Integer f;

    public static final class ColorPoint implements d65, ko4 {
        public static final a d = new a(null);
        public static final s74 e = new s74() {
            @Override
            public final DivRadialGradient.ColorPoint invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivRadialGradient.ColorPoint.d.a(hx7Var, jSONObject);
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
                return ((c3.b) ml0.a().c6().getValue()).a(hx7Var, jSONObject);
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
            return ((c3.b) ml0.a().c6().getValue()).b(ml0.b(), this);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivRadialGradient a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((d3.b) ml0.a().i6().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        Double dValueOf = Double.valueOf(0.5d);
        h = new DivRadialGradientCenter.c(new DivRadialGradientRelativeCenter(aVar.a(dValueOf)));
        i = new DivRadialGradientCenter.c(new DivRadialGradientRelativeCenter(aVar.a(dValueOf)));
        j = new DivRadialGradientRadius.c(new DivRadialGradientRelativeRadius(aVar.a(DivRadialGradientRelativeRadius.Value.FARTHEST_CORNER)));
        k = new s74() {
            @Override
            public final DivRadialGradient invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivRadialGradient.g.a(hx7Var, jSONObject);
            }
        };
    }

    public DivRadialGradient(DivRadialGradientCenter divRadialGradientCenter, DivRadialGradientCenter divRadialGradientCenter2, List list, nj3 nj3Var, DivRadialGradientRadius divRadialGradientRadius) {
        y45.j(divRadialGradientCenter, "centerX");
        y45.j(divRadialGradientCenter2, "centerY");
        y45.j(divRadialGradientRadius, "radius");
        this.a = divRadialGradientCenter;
        this.b = divRadialGradientCenter2;
        this.c = list;
        this.d = nj3Var;
        this.e = divRadialGradientRadius;
    }

    public final boolean a(DivRadialGradient divRadialGradient, oj3 oj3Var, oj3 oj3Var2) {
        List listA;
        List listA2;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divRadialGradient == null || !this.a.a(divRadialGradient.a, oj3Var, oj3Var2) || !this.b.a(divRadialGradient.b, oj3Var, oj3Var2)) {
            return false;
        }
        List list = this.c;
        if (list != null) {
            List list2 = divRadialGradient.c;
            if (list2 == null || list.size() != list2.size()) {
                return false;
            }
            int i2 = 0;
            for (Object obj : list) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    y71.u();
                }
                if (!((ColorPoint) obj).a((ColorPoint) list2.get(i2), oj3Var, oj3Var2)) {
                    return false;
                }
                i2 = i3;
            }
        } else if (divRadialGradient.c != null) {
            return false;
        }
        nj3 nj3Var = this.d;
        if (nj3Var != null && (listA = nj3Var.a(oj3Var)) != null) {
            nj3 nj3Var2 = divRadialGradient.d;
            if (nj3Var2 == null || (listA2 = nj3Var2.a(oj3Var2)) == null || listA.size() != listA2.size()) {
                return false;
            }
            int i4 = 0;
            for (Object obj2 : listA) {
                int i5 = i4 + 1;
                if (i4 < 0) {
                    y71.u();
                }
                if (((Number) obj2).intValue() != ((Number) listA2.get(i4)).intValue()) {
                    return false;
                }
                i4 = i5;
            }
        } else if (divRadialGradient.d != null) {
            return false;
        }
        return this.e.a(divRadialGradient.e, oj3Var, oj3Var2);
    }

    @Override
    public int hash() {
        int iHash;
        Integer num = this.f;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivRadialGradient.class).hashCode() + this.a.hash() + this.b.hash();
        List list = this.c;
        if (list != null) {
            Iterator it = list.iterator();
            iHash = 0;
            while (it.hasNext()) {
                iHash += ((ColorPoint) it.next()).hash();
            }
        } else {
            iHash = 0;
        }
        int i2 = iHashCode + iHash;
        nj3 nj3Var = this.d;
        int iHashCode2 = i2 + (nj3Var != null ? nj3Var.hashCode() : 0) + this.e.hash();
        this.f = Integer.valueOf(iHashCode2);
        return iHashCode2;
    }

    @Override
    public JSONObject s() {
        return ((d3.b) ml0.a().i6().getValue()).b(ml0.b(), this);
    }
}
