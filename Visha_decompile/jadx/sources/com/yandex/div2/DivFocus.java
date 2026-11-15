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

public final class DivFocus implements d65, ko4 {
    public static final a g = new a(null);
    public static final s74 h = new s74() {
        @Override
        public final DivFocus invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivFocus.g.a(hx7Var, jSONObject);
        }
    };
    public final List a;
    public final DivBorder b;
    public final NextFocusIds c;
    public final List d;
    public final List e;
    public Integer f;

    public static final class NextFocusIds implements d65, ko4 {
        public static final a g = new a(null);
        public static final s74 h = new s74() {
            @Override
            public final DivFocus.NextFocusIds invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivFocus.NextFocusIds.g.a(hx7Var, jSONObject);
            }
        };
        public final Expression a;
        public final Expression b;
        public final Expression c;
        public final Expression d;
        public final Expression e;
        public Integer f;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final NextFocusIds a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((k1) ml0.a().z3().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        public NextFocusIds(Expression expression, Expression expression2, Expression expression3, Expression expression4, Expression expression5) {
            this.a = expression;
            this.b = expression2;
            this.c = expression3;
            this.d = expression4;
            this.e = expression5;
        }

        public final boolean a(NextFocusIds nextFocusIds, oj3 oj3Var, oj3 oj3Var2) {
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            if (nextFocusIds == null) {
                return false;
            }
            Expression expression = this.a;
            String str = expression != null ? (String) expression.b(oj3Var) : null;
            Expression expression2 = nextFocusIds.a;
            if (!y45.e(str, expression2 != null ? (String) expression2.b(oj3Var2) : null)) {
                return false;
            }
            Expression expression3 = this.b;
            String str2 = expression3 != null ? (String) expression3.b(oj3Var) : null;
            Expression expression4 = nextFocusIds.b;
            if (!y45.e(str2, expression4 != null ? (String) expression4.b(oj3Var2) : null)) {
                return false;
            }
            Expression expression5 = this.c;
            String str3 = expression5 != null ? (String) expression5.b(oj3Var) : null;
            Expression expression6 = nextFocusIds.c;
            if (!y45.e(str3, expression6 != null ? (String) expression6.b(oj3Var2) : null)) {
                return false;
            }
            Expression expression7 = this.d;
            String str4 = expression7 != null ? (String) expression7.b(oj3Var) : null;
            Expression expression8 = nextFocusIds.d;
            if (!y45.e(str4, expression8 != null ? (String) expression8.b(oj3Var2) : null)) {
                return false;
            }
            Expression expression9 = this.e;
            String str5 = expression9 != null ? (String) expression9.b(oj3Var) : null;
            Expression expression10 = nextFocusIds.e;
            return y45.e(str5, expression10 != null ? (String) expression10.b(oj3Var2) : null);
        }

        @Override
        public int hash() {
            Integer num = this.f;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(NextFocusIds.class).hashCode();
            Expression expression = this.a;
            int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0);
            Expression expression2 = this.b;
            int iHashCode3 = iHashCode2 + (expression2 != null ? expression2.hashCode() : 0);
            Expression expression3 = this.c;
            int iHashCode4 = iHashCode3 + (expression3 != null ? expression3.hashCode() : 0);
            Expression expression4 = this.d;
            int iHashCode5 = iHashCode4 + (expression4 != null ? expression4.hashCode() : 0);
            Expression expression5 = this.e;
            int iHashCode6 = iHashCode5 + (expression5 != null ? expression5.hashCode() : 0);
            this.f = Integer.valueOf(iHashCode6);
            return iHashCode6;
        }

        @Override
        public JSONObject s() {
            return ((k1) ml0.a().z3().getValue()).b(ml0.b(), this);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivFocus a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((i1) ml0.a().w3().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivFocus(List list, DivBorder divBorder, NextFocusIds nextFocusIds, List list2, List list3) {
        this.a = list;
        this.b = divBorder;
        this.c = nextFocusIds;
        this.d = list2;
        this.e = list3;
    }

    public final boolean a(DivFocus divFocus, oj3 oj3Var, oj3 oj3Var2) {
        boolean z;
        boolean z2;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divFocus == null) {
            return false;
        }
        List list = this.a;
        if (list != null) {
            List list2 = divFocus.a;
            if (list2 == null || list.size() != list2.size()) {
                return false;
            }
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    y71.u();
                }
                if (!((DivBackground) obj).a((DivBackground) list2.get(i), oj3Var, oj3Var2)) {
                    return false;
                }
                i = i2;
            }
        } else if (divFocus.a != null) {
            return false;
        }
        DivBorder divBorder = this.b;
        if (!(divBorder != null ? divBorder.a(divFocus.b, oj3Var, oj3Var2) : divFocus.b == null)) {
            return false;
        }
        NextFocusIds nextFocusIds = this.c;
        if (!(nextFocusIds != null ? nextFocusIds.a(divFocus.c, oj3Var, oj3Var2) : divFocus.c == null)) {
            return false;
        }
        List list3 = this.d;
        if (list3 != null) {
            List list4 = divFocus.d;
            if (list4 == null) {
                return false;
            }
            if (list3.size() == list4.size()) {
                Iterator it = list3.iterator();
                int i3 = 0;
                while (true) {
                    if (it.hasNext()) {
                        Object next = it.next();
                        int i4 = i3 + 1;
                        if (i3 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next).a((DivAction) list4.get(i3), oj3Var, oj3Var2)) {
                            i3 = i4;
                        }
                    }
                }
            }
        } else {
            z = divFocus.d == null;
        }
        if (!z) {
            return false;
        }
        List list5 = this.e;
        if (list5 != null) {
            List list6 = divFocus.e;
            if (list6 == null) {
                return false;
            }
            if (list5.size() == list6.size()) {
                Iterator it2 = list5.iterator();
                int i5 = 0;
                while (true) {
                    if (it2.hasNext()) {
                        Object next2 = it2.next();
                        int i6 = i5 + 1;
                        if (i5 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next2).a((DivAction) list6.get(i5), oj3Var, oj3Var2)) {
                            i5 = i6;
                        }
                    }
                }
            }
        } else {
            z2 = divFocus.e == null;
        }
        return z2;
    }

    @Override
    public int hash() {
        int iHash;
        int iHash2;
        Integer num = this.f;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivFocus.class).hashCode();
        List list = this.a;
        int iHash3 = 0;
        if (list != null) {
            Iterator it = list.iterator();
            iHash = 0;
            while (it.hasNext()) {
                iHash += ((DivBackground) it.next()).hash();
            }
        } else {
            iHash = 0;
        }
        int i = iHashCode + iHash;
        DivBorder divBorder = this.b;
        int iHash4 = i + (divBorder != null ? divBorder.hash() : 0);
        NextFocusIds nextFocusIds = this.c;
        int iHash5 = iHash4 + (nextFocusIds != null ? nextFocusIds.hash() : 0);
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
        int i2 = iHash5 + iHash2;
        List list3 = this.e;
        if (list3 != null) {
            Iterator it3 = list3.iterator();
            while (it3.hasNext()) {
                iHash3 += ((DivAction) it3.next()).hash();
            }
        }
        int i3 = i2 + iHash3;
        this.f = Integer.valueOf(i3);
        return i3;
    }

    @Override
    public JSONObject s() {
        return ((i1) ml0.a().w3().getValue()).b(ml0.b(), this);
    }
}
