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

public abstract class DivCount implements d65, ko4 {
    public static final a b = new a(null);
    public static final s74 c = new s74() {
        @Override
        public final DivCount invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivCount.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivCount a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((r0) ml0.a().s2().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivCount {
        public final DivFixedCount d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivFixedCount divFixedCount) {
            super(null);
            y45.j(divFixedCount, ES6Iterator.VALUE_PROPERTY);
            this.d = divFixedCount;
        }

        public final DivFixedCount c() {
            return this.d;
        }
    }

    public static final class c extends DivCount {
        public final DivInfinityCount d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivInfinityCount divInfinityCount) {
            super(null);
            y45.j(divInfinityCount, ES6Iterator.VALUE_PROPERTY);
            this.d = divInfinityCount;
        }

        public final DivInfinityCount c() {
            return this.d;
        }
    }

    public DivCount(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivCount divCount, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divCount == null) {
            return false;
        }
        if (this instanceof c) {
            DivInfinityCount divInfinityCountC = ((c) this).c();
            Object objB = divCount.b();
            return divInfinityCountC.a(objB instanceof DivInfinityCount ? (DivInfinityCount) objB : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof b)) {
            throw new NoWhenBranchMatchedException();
        }
        DivFixedCount divFixedCountC = ((b) this).c();
        Object objB2 = divCount.b();
        return divFixedCountC.a(objB2 instanceof DivFixedCount ? (DivFixedCount) objB2 : null, oj3Var, oj3Var2);
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
        return ((r0) ml0.a().s2().getValue()).b(ml0.b(), this);
    }

    public DivCount() {
    }
}
