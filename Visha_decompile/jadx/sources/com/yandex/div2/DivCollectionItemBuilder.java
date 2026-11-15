package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
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

public final class DivCollectionItemBuilder implements d65, ko4 {
    public static final a e = new a(null);
    public static final String f = "it";
    public static final s74 g = new s74() {
        @Override
        public final DivCollectionItemBuilder invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivCollectionItemBuilder.e.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final String b;
    public final List c;
    public Integer d;

    public static final class Prototype implements d65, ko4 {
        public static final a e = new a(null);
        public static final Expression f = Expression.a.a(Boolean.TRUE);
        public static final s74 g = new s74() {
            @Override
            public final DivCollectionItemBuilder.Prototype invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivCollectionItemBuilder.Prototype.e.a(hx7Var, jSONObject);
            }
        };
        public final Div a;
        public final Expression b;
        public final Expression c;
        public Integer d;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Prototype a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((o0.b) ml0.a().d2().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        public Prototype(Div div, Expression expression, Expression expression2) {
            y45.j(div, TtmlNode.TAG_DIV);
            y45.j(expression2, "selector");
            this.a = div;
            this.b = expression;
            this.c = expression2;
        }

        public final boolean a(Prototype prototype, oj3 oj3Var, oj3 oj3Var2) {
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            if (prototype == null || !this.a.a(prototype.a, oj3Var, oj3Var2)) {
                return false;
            }
            Expression expression = this.b;
            String str = expression != null ? (String) expression.b(oj3Var) : null;
            Expression expression2 = prototype.b;
            return y45.e(str, expression2 != null ? (String) expression2.b(oj3Var2) : null) && ((Boolean) this.c.b(oj3Var)).booleanValue() == ((Boolean) prototype.c.b(oj3Var2)).booleanValue();
        }

        @Override
        public int hash() {
            Integer num = this.d;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(Prototype.class).hashCode() + this.a.hash();
            Expression expression = this.b;
            int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0) + this.c.hashCode();
            this.d = Integer.valueOf(iHashCode2);
            return iHashCode2;
        }

        @Override
        public JSONObject s() {
            return ((o0.b) ml0.a().d2().getValue()).b(ml0.b(), this);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivCollectionItemBuilder a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((n0.b) ml0.a().a2().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivCollectionItemBuilder(Expression expression, String str, List list) {
        y45.j(expression, "data");
        y45.j(str, "dataElementName");
        y45.j(list, "prototypes");
        this.a = expression;
        this.b = str;
        this.c = list;
    }

    public final boolean a(DivCollectionItemBuilder divCollectionItemBuilder, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divCollectionItemBuilder == null || !y45.e(this.a.b(oj3Var), divCollectionItemBuilder.a.b(oj3Var2)) || !y45.e(this.b, divCollectionItemBuilder.b)) {
            return false;
        }
        List list = this.c;
        List list2 = divCollectionItemBuilder.c;
        if (list.size() != list2.size()) {
            return false;
        }
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            if (!((Prototype) obj).a((Prototype) list2.get(i), oj3Var, oj3Var2)) {
                return false;
            }
            i = i2;
        }
        return true;
    }

    @Override
    public int hash() {
        Integer num = this.d;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivCollectionItemBuilder.class).hashCode() + this.a.hashCode() + this.b.hashCode();
        Iterator it = this.c.iterator();
        int iHash = 0;
        while (it.hasNext()) {
            iHash += ((Prototype) it.next()).hash();
        }
        int i = iHashCode + iHash;
        this.d = Integer.valueOf(i);
        return i;
    }

    @Override
    public JSONObject s() {
        return ((n0.b) ml0.a().a2().getValue()).b(ml0.b(), this);
    }
}
