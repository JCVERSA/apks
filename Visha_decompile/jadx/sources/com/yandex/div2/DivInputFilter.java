package com.yandex.div2;

import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivInputFilter implements d65, ko4 {
    public static final a b = new a(null);
    public static final s74 c = new s74() {
        @Override
        public final DivInputFilter invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivInputFilter.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivInputFilter a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((r1) ml0.a().j4().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivInputFilter {
        public final DivInputFilterExpression d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivInputFilterExpression divInputFilterExpression) {
            super(null);
            y45.j(divInputFilterExpression, ES6Iterator.VALUE_PROPERTY);
            this.d = divInputFilterExpression;
        }

        public final DivInputFilterExpression c() {
            return this.d;
        }
    }

    public static final class c extends DivInputFilter {
        public final DivInputFilterRegex d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivInputFilterRegex divInputFilterRegex) {
            super(null);
            y45.j(divInputFilterRegex, ES6Iterator.VALUE_PROPERTY);
            this.d = divInputFilterRegex;
        }

        public final DivInputFilterRegex c() {
            return this.d;
        }
    }

    public DivInputFilter(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivInputFilter divInputFilter, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divInputFilter == null) {
            return false;
        }
        if (this instanceof c) {
            DivInputFilterRegex divInputFilterRegexC = ((c) this).c();
            Object objB = divInputFilter.b();
            return divInputFilterRegexC.a(objB instanceof DivInputFilterRegex ? (DivInputFilterRegex) objB : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof b)) {
            throw new NoWhenBranchMatchedException();
        }
        DivInputFilterExpression divInputFilterExpressionC = ((b) this).c();
        Object objB2 = divInputFilter.b();
        return divInputFilterExpressionC.a(objB2 instanceof DivInputFilterExpression ? (DivInputFilterExpression) objB2 : null, oj3Var, oj3Var2);
    }

    public final Object b() {
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof b) {
            return ((b) this).c();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public int hash() {
        int iHash;
        Integer num = this.a;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(getClass()).hashCode();
        if (this instanceof c) {
            iHash = ((c) this).c().hash();
        } else {
            if (!(this instanceof b)) {
                throw new NoWhenBranchMatchedException();
            }
            iHash = ((b) this).c().hash();
        }
        int i = iHashCode + iHash;
        this.a = Integer.valueOf(i);
        return i;
    }

    @Override
    public JSONObject s() {
        return ((r1) ml0.a().j4().getValue()).b(ml0.b(), this);
    }

    public DivInputFilter() {
    }
}
