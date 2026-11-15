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

public abstract class DivAppearanceTransition implements d65, ko4 {
    public static final a b = new a(null);
    public static final s74 c = new s74() {
        @Override
        public final DivAppearanceTransition invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivAppearanceTransition.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivAppearanceTransition a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((y) ml0.a().w1().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivAppearanceTransition {
        public final DivFadeTransition d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivFadeTransition divFadeTransition) {
            super(null);
            y45.j(divFadeTransition, ES6Iterator.VALUE_PROPERTY);
            this.d = divFadeTransition;
        }

        public final DivFadeTransition c() {
            return this.d;
        }
    }

    public static final class c extends DivAppearanceTransition {
        public final DivScaleTransition d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivScaleTransition divScaleTransition) {
            super(null);
            y45.j(divScaleTransition, ES6Iterator.VALUE_PROPERTY);
            this.d = divScaleTransition;
        }

        public final DivScaleTransition c() {
            return this.d;
        }
    }

    public static final class d extends DivAppearanceTransition {
        public final DivAppearanceSetTransition d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(DivAppearanceSetTransition divAppearanceSetTransition) {
            super(null);
            y45.j(divAppearanceSetTransition, ES6Iterator.VALUE_PROPERTY);
            this.d = divAppearanceSetTransition;
        }

        public final DivAppearanceSetTransition c() {
            return this.d;
        }
    }

    public static final class e extends DivAppearanceTransition {
        public final DivSlideTransition d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(DivSlideTransition divSlideTransition) {
            super(null);
            y45.j(divSlideTransition, ES6Iterator.VALUE_PROPERTY);
            this.d = divSlideTransition;
        }

        public final DivSlideTransition c() {
            return this.d;
        }
    }

    public DivAppearanceTransition(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivAppearanceTransition divAppearanceTransition, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divAppearanceTransition == null) {
            return false;
        }
        if (this instanceof d) {
            DivAppearanceSetTransition divAppearanceSetTransitionC = ((d) this).c();
            Object objB = divAppearanceTransition.b();
            return divAppearanceSetTransitionC.a(objB instanceof DivAppearanceSetTransition ? (DivAppearanceSetTransition) objB : null, oj3Var, oj3Var2);
        }
        if (this instanceof b) {
            DivFadeTransition divFadeTransitionC = ((b) this).c();
            Object objB2 = divAppearanceTransition.b();
            return divFadeTransitionC.a(objB2 instanceof DivFadeTransition ? (DivFadeTransition) objB2 : null, oj3Var, oj3Var2);
        }
        if (this instanceof c) {
            DivScaleTransition divScaleTransitionC = ((c) this).c();
            Object objB3 = divAppearanceTransition.b();
            return divScaleTransitionC.a(objB3 instanceof DivScaleTransition ? (DivScaleTransition) objB3 : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof e)) {
            throw new NoWhenBranchMatchedException();
        }
        DivSlideTransition divSlideTransitionC = ((e) this).c();
        Object objB4 = divAppearanceTransition.b();
        return divSlideTransitionC.a(objB4 instanceof DivSlideTransition ? (DivSlideTransition) objB4 : null, oj3Var, oj3Var2);
    }

    public final Object b() {
        if (this instanceof d) {
            return ((d) this).c();
        }
        if (this instanceof b) {
            return ((b) this).c();
        }
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof e) {
            return ((e) this).c();
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
        if (this instanceof d) {
            iHash = ((d) this).c().hash();
        } else if (this instanceof b) {
            iHash = ((b) this).c().hash();
        } else if (this instanceof c) {
            iHash = ((c) this).c().hash();
        } else {
            if (!(this instanceof e)) {
                throw new NoWhenBranchMatchedException();
            }
            iHash = ((e) this).c().hash();
        }
        int i = iHashCode + iHash;
        this.a = Integer.valueOf(i);
        return i;
    }

    @Override
    public JSONObject s() {
        return ((y) ml0.a().w1().getValue()).b(ml0.b(), this);
    }

    public DivAppearanceTransition() {
    }
}
