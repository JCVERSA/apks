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

public final class DivData implements d65, ko4 {
    public static final a j = new a(null);
    public static final Expression k = Expression.a.a(DivTransitionSelector.NONE);
    public static final s74 l = new s74() {
        @Override
        public final DivData invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivData.j.a(hx7Var, jSONObject);
        }
    };
    public final List a;
    public final String b;
    public final List c;
    public final List d;
    public final Expression e;
    public final List f;
    public final List g;
    public final List h;
    public Integer i;

    public static final class State implements d65, ko4 {
        public static final a d = new a(null);
        public static final s74 e = new s74() {
            @Override
            public final DivData.State invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivData.State.d.a(hx7Var, jSONObject);
            }
        };
        public final Div a;
        public final long b;
        public Integer c;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final State a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((u0) ml0.a().D2().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        public State(Div div, long j) {
            y45.j(div, TtmlNode.TAG_DIV);
            this.a = div;
            this.b = j;
        }

        @Override
        public int hash() {
            Integer num = this.c;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(State.class).hashCode() + this.a.hash() + Long.hashCode(this.b);
            this.c = Integer.valueOf(iHashCode);
            return iHashCode;
        }

        @Override
        public JSONObject s() {
            return ((u0) ml0.a().D2().getValue()).b(ml0.b(), this);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivData a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivDataJsonParser.b) ml0.a().B2().getValue()).d(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivData(List list, String str, List list2, List list3, Expression expression, List list4, List list5, List list6) {
        y45.j(str, "logId");
        y45.j(list2, "states");
        y45.j(expression, "transitionAnimationSelector");
        this.a = list;
        this.b = str;
        this.c = list2;
        this.d = list3;
        this.e = expression;
        this.f = list4;
        this.g = list5;
        this.h = list6;
    }

    @Override
    public int hash() {
        int iHash;
        int iHash2;
        int iHash3;
        Integer num = this.i;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivData.class).hashCode();
        List list = this.a;
        int iHash4 = 0;
        if (list != null) {
            Iterator it = list.iterator();
            iHash = 0;
            while (it.hasNext()) {
                iHash += ((DivFunction) it.next()).hash();
            }
        } else {
            iHash = 0;
        }
        int iHashCode2 = iHashCode + iHash + this.b.hashCode();
        Iterator it2 = this.c.iterator();
        int iHash5 = 0;
        while (it2.hasNext()) {
            iHash5 += ((State) it2.next()).hash();
        }
        int i = iHashCode2 + iHash5;
        List list2 = this.d;
        if (list2 != null) {
            Iterator it3 = list2.iterator();
            iHash2 = 0;
            while (it3.hasNext()) {
                iHash2 += ((DivTimer) it3.next()).hash();
            }
        } else {
            iHash2 = 0;
        }
        int iHashCode3 = i + iHash2 + this.e.hashCode();
        List list3 = this.f;
        if (list3 != null) {
            Iterator it4 = list3.iterator();
            iHash3 = 0;
            while (it4.hasNext()) {
                iHash3 += ((DivTrigger) it4.next()).hash();
            }
        } else {
            iHash3 = 0;
        }
        int i2 = iHashCode3 + iHash3;
        List list4 = this.g;
        if (list4 != null) {
            Iterator it5 = list4.iterator();
            while (it5.hasNext()) {
                iHash4 += ((DivVariable) it5.next()).hash();
            }
        }
        int i3 = i2 + iHash4;
        this.i = Integer.valueOf(i3);
        return i3;
    }

    @Override
    public JSONObject s() {
        return ((DivDataJsonParser.b) ml0.a().B2().getValue()).e(ml0.b(), this);
    }

    public DivData(List list, String str, List list2, List list3, Expression expression, List list4, List list5, List list6, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : list, str, list2, (i & 8) != 0 ? null : list3, (i & 16) != 0 ? k : expression, (i & 32) != 0 ? null : list4, (i & 64) != 0 ? null : list5, (i & 128) != 0 ? null : list6);
    }
}
