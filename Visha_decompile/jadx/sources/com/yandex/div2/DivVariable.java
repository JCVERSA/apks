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

public abstract class DivVariable implements d65, ko4 {
    public static final d b = new d(null);
    public static final s74 c = new s74() {
        @Override
        public final DivVariable invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivVariable.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a extends DivVariable {
        public final ArrayVariable d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ArrayVariable arrayVariable) {
            super(null);
            y45.j(arrayVariable, ES6Iterator.VALUE_PROPERTY);
            this.d = arrayVariable;
        }

        public final ArrayVariable c() {
            return this.d;
        }
    }

    public static final class b extends DivVariable {
        public final BoolVariable d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(BoolVariable boolVariable) {
            super(null);
            y45.j(boolVariable, ES6Iterator.VALUE_PROPERTY);
            this.d = boolVariable;
        }

        public final BoolVariable c() {
            return this.d;
        }
    }

    public static final class c extends DivVariable {
        public final ColorVariable d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ColorVariable colorVariable) {
            super(null);
            y45.j(colorVariable, ES6Iterator.VALUE_PROPERTY);
            this.d = colorVariable;
        }

        public final ColorVariable c() {
            return this.d;
        }
    }

    public static final class d {
        public d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivVariable a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((f5) ml0.a().e9().getValue()).a(hx7Var, jSONObject);
        }

        public d() {
        }
    }

    public static final class e extends DivVariable {
        public final DictVariable d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(DictVariable dictVariable) {
            super(null);
            y45.j(dictVariable, ES6Iterator.VALUE_PROPERTY);
            this.d = dictVariable;
        }

        public final DictVariable c() {
            return this.d;
        }
    }

    public static final class f extends DivVariable {
        public final IntegerVariable d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(IntegerVariable integerVariable) {
            super(null);
            y45.j(integerVariable, ES6Iterator.VALUE_PROPERTY);
            this.d = integerVariable;
        }

        public final IntegerVariable c() {
            return this.d;
        }
    }

    public static final class g extends DivVariable {
        public final NumberVariable d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(NumberVariable numberVariable) {
            super(null);
            y45.j(numberVariable, ES6Iterator.VALUE_PROPERTY);
            this.d = numberVariable;
        }

        public final NumberVariable c() {
            return this.d;
        }
    }

    public static final class h extends DivVariable {
        public final StrVariable d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(StrVariable strVariable) {
            super(null);
            y45.j(strVariable, ES6Iterator.VALUE_PROPERTY);
            this.d = strVariable;
        }

        public final StrVariable c() {
            return this.d;
        }
    }

    public static final class i extends DivVariable {
        public final UrlVariable d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(UrlVariable urlVariable) {
            super(null);
            y45.j(urlVariable, ES6Iterator.VALUE_PROPERTY);
            this.d = urlVariable;
        }

        public final UrlVariable c() {
            return this.d;
        }
    }

    public DivVariable(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivVariable divVariable, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divVariable == null) {
            return false;
        }
        if (this instanceof h) {
            StrVariable strVariableC = ((h) this).c();
            Object objB = divVariable.b();
            return strVariableC.a(objB instanceof StrVariable ? (StrVariable) objB : null, oj3Var, oj3Var2);
        }
        if (this instanceof g) {
            NumberVariable numberVariableC = ((g) this).c();
            Object objB2 = divVariable.b();
            return numberVariableC.a(objB2 instanceof NumberVariable ? (NumberVariable) objB2 : null, oj3Var, oj3Var2);
        }
        if (this instanceof f) {
            IntegerVariable integerVariableC = ((f) this).c();
            Object objB3 = divVariable.b();
            return integerVariableC.a(objB3 instanceof IntegerVariable ? (IntegerVariable) objB3 : null, oj3Var, oj3Var2);
        }
        if (this instanceof b) {
            BoolVariable boolVariableC = ((b) this).c();
            Object objB4 = divVariable.b();
            return boolVariableC.a(objB4 instanceof BoolVariable ? (BoolVariable) objB4 : null, oj3Var, oj3Var2);
        }
        if (this instanceof c) {
            ColorVariable colorVariableC = ((c) this).c();
            Object objB5 = divVariable.b();
            return colorVariableC.a(objB5 instanceof ColorVariable ? (ColorVariable) objB5 : null, oj3Var, oj3Var2);
        }
        if (this instanceof i) {
            UrlVariable urlVariableC = ((i) this).c();
            Object objB6 = divVariable.b();
            return urlVariableC.a(objB6 instanceof UrlVariable ? (UrlVariable) objB6 : null, oj3Var, oj3Var2);
        }
        if (this instanceof e) {
            DictVariable dictVariableC = ((e) this).c();
            Object objB7 = divVariable.b();
            return dictVariableC.a(objB7 instanceof DictVariable ? (DictVariable) objB7 : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof a)) {
            throw new NoWhenBranchMatchedException();
        }
        ArrayVariable arrayVariableC = ((a) this).c();
        Object objB8 = divVariable.b();
        return arrayVariableC.a(objB8 instanceof ArrayVariable ? (ArrayVariable) objB8 : null, oj3Var, oj3Var2);
    }

    public final Object b() {
        if (this instanceof h) {
            return ((h) this).c();
        }
        if (this instanceof g) {
            return ((g) this).c();
        }
        if (this instanceof f) {
            return ((f) this).c();
        }
        if (this instanceof b) {
            return ((b) this).c();
        }
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof i) {
            return ((i) this).c();
        }
        if (this instanceof e) {
            return ((e) this).c();
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
        if (this instanceof h) {
            iHash = ((h) this).c().hash();
        } else if (this instanceof g) {
            iHash = ((g) this).c().hash();
        } else if (this instanceof f) {
            iHash = ((f) this).c().hash();
        } else if (this instanceof b) {
            iHash = ((b) this).c().hash();
        } else if (this instanceof c) {
            iHash = ((c) this).c().hash();
        } else if (this instanceof i) {
            iHash = ((i) this).c().hash();
        } else if (this instanceof e) {
            iHash = ((e) this).c().hash();
        } else {
            if (!(this instanceof a)) {
                throw new NoWhenBranchMatchedException();
            }
            iHash = ((a) this).c().hash();
        }
        int i2 = iHashCode + iHash;
        this.a = Integer.valueOf(i2);
        return i2;
    }

    @Override
    public JSONObject s() {
        return ((f5) ml0.a().e9().getValue()).b(ml0.b(), this);
    }

    public DivVariable() {
    }
}
