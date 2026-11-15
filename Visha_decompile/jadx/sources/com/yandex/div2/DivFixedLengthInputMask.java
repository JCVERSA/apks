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
import defpackage.yl2;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivFixedLengthInputMask implements d65, ko4, yl2 {
    public static final a f = new a(null);
    public static final Expression g = Expression.a.a(Boolean.FALSE);
    public static final s74 h = new s74() {
        @Override
        public final DivFixedLengthInputMask invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivFixedLengthInputMask.f.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final Expression b;
    public final List c;
    public final String d;
    public Integer e;

    public static final class PatternElement implements d65, ko4 {
        public static final a e = new a(null);
        public static final Expression f = Expression.a.a("_");
        public static final s74 g = new s74() {
            @Override
            public final DivFixedLengthInputMask.PatternElement invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivFixedLengthInputMask.PatternElement.e.a(hx7Var, jSONObject);
            }
        };
        public final Expression a;
        public final Expression b;
        public final Expression c;
        public Integer d;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final PatternElement a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((h1.b) ml0.a().q3().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        public PatternElement(Expression expression, Expression expression2, Expression expression3) {
            y45.j(expression, "key");
            y45.j(expression2, "placeholder");
            this.a = expression;
            this.b = expression2;
            this.c = expression3;
        }

        public final boolean a(PatternElement patternElement, oj3 oj3Var, oj3 oj3Var2) {
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            if (patternElement == null || !y45.e(this.a.b(oj3Var), patternElement.a.b(oj3Var2)) || !y45.e(this.b.b(oj3Var), patternElement.b.b(oj3Var2))) {
                return false;
            }
            Expression expression = this.c;
            String str = expression != null ? (String) expression.b(oj3Var) : null;
            Expression expression2 = patternElement.c;
            return y45.e(str, expression2 != null ? (String) expression2.b(oj3Var2) : null);
        }

        @Override
        public int hash() {
            Integer num = this.d;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(PatternElement.class).hashCode() + this.a.hashCode() + this.b.hashCode();
            Expression expression = this.c;
            int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0);
            this.d = Integer.valueOf(iHashCode2);
            return iHashCode2;
        }

        @Override
        public JSONObject s() {
            return ((h1.b) ml0.a().q3().getValue()).b(ml0.b(), this);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivFixedLengthInputMask a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((g1.b) ml0.a().n3().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivFixedLengthInputMask(Expression expression, Expression expression2, List list, String str) {
        y45.j(expression, "alwaysVisible");
        y45.j(expression2, "pattern");
        y45.j(list, "patternElements");
        y45.j(str, "rawTextVariable");
        this.a = expression;
        this.b = expression2;
        this.c = list;
        this.d = str;
    }

    @Override
    public String a() {
        return this.d;
    }

    public final boolean b(DivFixedLengthInputMask divFixedLengthInputMask, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divFixedLengthInputMask == null || ((Boolean) this.a.b(oj3Var)).booleanValue() != ((Boolean) divFixedLengthInputMask.a.b(oj3Var2)).booleanValue() || !y45.e(this.b.b(oj3Var), divFixedLengthInputMask.b.b(oj3Var2))) {
            return false;
        }
        List list = this.c;
        List list2 = divFixedLengthInputMask.c;
        if (list.size() != list2.size()) {
            return false;
        }
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            if (!((PatternElement) obj).a((PatternElement) list2.get(i), oj3Var, oj3Var2)) {
                return false;
            }
            i = i2;
        }
        return y45.e(a(), divFixedLengthInputMask.a());
    }

    @Override
    public int hash() {
        Integer num = this.e;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivFixedLengthInputMask.class).hashCode() + this.a.hashCode() + this.b.hashCode();
        Iterator it = this.c.iterator();
        int iHash = 0;
        while (it.hasNext()) {
            iHash += ((PatternElement) it.next()).hash();
        }
        int iHashCode2 = iHashCode + iHash + a().hashCode();
        this.e = Integer.valueOf(iHashCode2);
        return iHashCode2;
    }

    @Override
    public JSONObject s() {
        return ((g1.b) ml0.a().n3().getValue()).b(ml0.b(), this);
    }
}
