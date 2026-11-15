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

public abstract class DivBackground implements d65, ko4 {
    public static final a b = new a(null);
    public static final s74 c = new s74() {
        @Override
        public final DivBackground invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivBackground.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivBackground a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((c0) ml0.a().C1().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivBackground {
        public final DivImageBackground d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivImageBackground divImageBackground) {
            super(null);
            y45.j(divImageBackground, ES6Iterator.VALUE_PROPERTY);
            this.d = divImageBackground;
        }

        public final DivImageBackground c() {
            return this.d;
        }
    }

    public static final class c extends DivBackground {
        public final DivLinearGradient d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivLinearGradient divLinearGradient) {
            super(null);
            y45.j(divLinearGradient, ES6Iterator.VALUE_PROPERTY);
            this.d = divLinearGradient;
        }

        public final DivLinearGradient c() {
            return this.d;
        }
    }

    public static final class d extends DivBackground {
        public final DivNinePatchBackground d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(DivNinePatchBackground divNinePatchBackground) {
            super(null);
            y45.j(divNinePatchBackground, ES6Iterator.VALUE_PROPERTY);
            this.d = divNinePatchBackground;
        }

        public final DivNinePatchBackground c() {
            return this.d;
        }
    }

    public static final class e extends DivBackground {
        public final DivRadialGradient d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(DivRadialGradient divRadialGradient) {
            super(null);
            y45.j(divRadialGradient, ES6Iterator.VALUE_PROPERTY);
            this.d = divRadialGradient;
        }

        public final DivRadialGradient c() {
            return this.d;
        }
    }

    public static final class f extends DivBackground {
        public final DivSolidBackground d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(DivSolidBackground divSolidBackground) {
            super(null);
            y45.j(divSolidBackground, ES6Iterator.VALUE_PROPERTY);
            this.d = divSolidBackground;
        }

        public final DivSolidBackground c() {
            return this.d;
        }
    }

    public DivBackground(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivBackground divBackground, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divBackground == null) {
            return false;
        }
        if (this instanceof c) {
            DivLinearGradient divLinearGradientC = ((c) this).c();
            Object objB = divBackground.b();
            return divLinearGradientC.a(objB instanceof DivLinearGradient ? (DivLinearGradient) objB : null, oj3Var, oj3Var2);
        }
        if (this instanceof e) {
            DivRadialGradient divRadialGradientC = ((e) this).c();
            Object objB2 = divBackground.b();
            return divRadialGradientC.a(objB2 instanceof DivRadialGradient ? (DivRadialGradient) objB2 : null, oj3Var, oj3Var2);
        }
        if (this instanceof b) {
            DivImageBackground divImageBackgroundC = ((b) this).c();
            Object objB3 = divBackground.b();
            return divImageBackgroundC.a(objB3 instanceof DivImageBackground ? (DivImageBackground) objB3 : null, oj3Var, oj3Var2);
        }
        if (this instanceof f) {
            DivSolidBackground divSolidBackgroundC = ((f) this).c();
            Object objB4 = divBackground.b();
            return divSolidBackgroundC.a(objB4 instanceof DivSolidBackground ? (DivSolidBackground) objB4 : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof d)) {
            throw new NoWhenBranchMatchedException();
        }
        DivNinePatchBackground divNinePatchBackgroundC = ((d) this).c();
        Object objB5 = divBackground.b();
        return divNinePatchBackgroundC.a(objB5 instanceof DivNinePatchBackground ? (DivNinePatchBackground) objB5 : null, oj3Var, oj3Var2);
    }

    public final Object b() {
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof e) {
            return ((e) this).c();
        }
        if (this instanceof b) {
            return ((b) this).c();
        }
        if (this instanceof f) {
            return ((f) this).c();
        }
        if (this instanceof d) {
            return ((d) this).c();
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
        } else if (this instanceof e) {
            iHash = ((e) this).c().hash();
        } else if (this instanceof b) {
            iHash = ((b) this).c().hash();
        } else if (this instanceof f) {
            iHash = ((f) this).c().hash();
        } else {
            if (!(this instanceof d)) {
                throw new NoWhenBranchMatchedException();
            }
            iHash = ((d) this).c().hash();
        }
        int i = iHashCode + iHash;
        this.a = Integer.valueOf(i);
        return i;
    }

    @Override
    public JSONObject s() {
        return ((c0) ml0.a().C1().getValue()).b(ml0.b(), this);
    }

    public DivBackground() {
    }
}
