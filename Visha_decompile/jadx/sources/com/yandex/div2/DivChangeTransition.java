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

public abstract class DivChangeTransition implements d65, ko4 {
    public static final b b = new b(null);
    public static final s74 c = new s74() {
        @Override
        public final DivChangeTransition invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivChangeTransition.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a extends DivChangeTransition {
        public final DivChangeBoundsTransition d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(DivChangeBoundsTransition divChangeBoundsTransition) {
            super(null);
            y45.j(divChangeBoundsTransition, ES6Iterator.VALUE_PROPERTY);
            this.d = divChangeBoundsTransition;
        }

        public final DivChangeBoundsTransition c() {
            return this.d;
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivChangeTransition a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((i0) ml0.a().R1().getValue()).a(hx7Var, jSONObject);
        }

        public b() {
        }
    }

    public static final class c extends DivChangeTransition {
        public final DivChangeSetTransition d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivChangeSetTransition divChangeSetTransition) {
            super(null);
            y45.j(divChangeSetTransition, ES6Iterator.VALUE_PROPERTY);
            this.d = divChangeSetTransition;
        }

        public final DivChangeSetTransition c() {
            return this.d;
        }
    }

    public DivChangeTransition(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivChangeTransition divChangeTransition, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divChangeTransition == null) {
            return false;
        }
        if (this instanceof c) {
            DivChangeSetTransition divChangeSetTransitionC = ((c) this).c();
            Object objB = divChangeTransition.b();
            return divChangeSetTransitionC.a(objB instanceof DivChangeSetTransition ? (DivChangeSetTransition) objB : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof a)) {
            throw new NoWhenBranchMatchedException();
        }
        DivChangeBoundsTransition divChangeBoundsTransitionC = ((a) this).c();
        Object objB2 = divChangeTransition.b();
        return divChangeBoundsTransitionC.a(objB2 instanceof DivChangeBoundsTransition ? (DivChangeBoundsTransition) objB2 : null, oj3Var, oj3Var2);
    }

    public final Object b() {
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof a) {
            return ((a) this).c();
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
            if (!(this instanceof a)) {
                throw new NoWhenBranchMatchedException();
            }
            iHash = ((a) this).c().hash();
        }
        int i = iHashCode + iHash;
        this.a = Integer.valueOf(i);
        return i;
    }

    @Override
    public JSONObject s() {
        return ((i0) ml0.a().R1().getValue()).b(ml0.b(), this);
    }

    public DivChangeTransition() {
    }
}
