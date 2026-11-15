package com.yandex.div2;

import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.yl2;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivInputMask implements d65, ko4 {
    public static final a b = new a(null);
    public static final s74 c = new s74() {
        @Override
        public final DivInputMask invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivInputMask.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivInputMask a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((u1) ml0.a().s4().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivInputMask {
        public final DivCurrencyInputMask d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivCurrencyInputMask divCurrencyInputMask) {
            super(null);
            y45.j(divCurrencyInputMask, ES6Iterator.VALUE_PROPERTY);
            this.d = divCurrencyInputMask;
        }

        public final DivCurrencyInputMask c() {
            return this.d;
        }
    }

    public static final class c extends DivInputMask {
        public final DivFixedLengthInputMask d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivFixedLengthInputMask divFixedLengthInputMask) {
            super(null);
            y45.j(divFixedLengthInputMask, ES6Iterator.VALUE_PROPERTY);
            this.d = divFixedLengthInputMask;
        }

        public final DivFixedLengthInputMask c() {
            return this.d;
        }
    }

    public static final class d extends DivInputMask {
        public final DivPhoneInputMask d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(DivPhoneInputMask divPhoneInputMask) {
            super(null);
            y45.j(divPhoneInputMask, ES6Iterator.VALUE_PROPERTY);
            this.d = divPhoneInputMask;
        }

        public final DivPhoneInputMask c() {
            return this.d;
        }
    }

    public DivInputMask(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivInputMask divInputMask, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divInputMask == null) {
            return false;
        }
        if (this instanceof c) {
            DivFixedLengthInputMask divFixedLengthInputMaskC = ((c) this).c();
            yl2 yl2VarB = divInputMask.b();
            return divFixedLengthInputMaskC.b(yl2VarB instanceof DivFixedLengthInputMask ? (DivFixedLengthInputMask) yl2VarB : null, oj3Var, oj3Var2);
        }
        if (this instanceof b) {
            DivCurrencyInputMask divCurrencyInputMaskC = ((b) this).c();
            yl2 yl2VarB2 = divInputMask.b();
            return divCurrencyInputMaskC.b(yl2VarB2 instanceof DivCurrencyInputMask ? (DivCurrencyInputMask) yl2VarB2 : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof d)) {
            throw new NoWhenBranchMatchedException();
        }
        DivPhoneInputMask divPhoneInputMaskC = ((d) this).c();
        yl2 yl2VarB3 = divInputMask.b();
        return divPhoneInputMaskC.b(yl2VarB3 instanceof DivPhoneInputMask ? (DivPhoneInputMask) yl2VarB3 : null, oj3Var, oj3Var2);
    }

    public final yl2 b() {
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof b) {
            return ((b) this).c();
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
        } else if (this instanceof b) {
            iHash = ((b) this).c().hash();
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
        return ((u1) ml0.a().s4().getValue()).b(ml0.b(), this);
    }

    public DivInputMask() {
    }
}
