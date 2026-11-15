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

public abstract class DivDrawable implements d65, ko4 {
    public static final a b = new a(null);
    public static final s74 c = new s74() {
        @Override
        public final DivDrawable invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivDrawable.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivDrawable a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((z0) ml0.a().S2().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivDrawable {
        public final DivShapeDrawable d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivShapeDrawable divShapeDrawable) {
            super(null);
            y45.j(divShapeDrawable, ES6Iterator.VALUE_PROPERTY);
            this.d = divShapeDrawable;
        }

        public final DivShapeDrawable c() {
            return this.d;
        }
    }

    public DivDrawable(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivDrawable divDrawable, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divDrawable == null) {
            return false;
        }
        if (!(this instanceof b)) {
            throw new NoWhenBranchMatchedException();
        }
        DivShapeDrawable divShapeDrawableC = ((b) this).c();
        Object objB = divDrawable.b();
        return divShapeDrawableC.a(objB instanceof DivShapeDrawable ? (DivShapeDrawable) objB : null, oj3Var, oj3Var2);
    }

    public final Object b() {
        if (this instanceof b) {
            return ((b) this).c();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public int hash() {
        Integer num = this.a;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(getClass()).hashCode();
        if (!(this instanceof b)) {
            throw new NoWhenBranchMatchedException();
        }
        int iHash = iHashCode + ((b) this).c().hash();
        this.a = Integer.valueOf(iHash);
        return iHash;
    }

    @Override
    public JSONObject s() {
        return ((z0) ml0.a().S2().getValue()).b(ml0.b(), this);
    }

    public DivDrawable() {
    }
}
