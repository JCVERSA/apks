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

public abstract class DivTypedValue implements d65, ko4 {
    public static final d b = new d(null);
    public static final s74 c = new s74() {
        @Override
        public final DivTypedValue invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivTypedValue.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a extends DivTypedValue {
        public final ArrayValue d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ArrayValue arrayValue) {
            super(null);
            y45.j(arrayValue, ES6Iterator.VALUE_PROPERTY);
            this.d = arrayValue;
        }

        public final ArrayValue c() {
            return this.d;
        }
    }

    public static final class b extends DivTypedValue {
        public final BoolValue d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(BoolValue boolValue) {
            super(null);
            y45.j(boolValue, ES6Iterator.VALUE_PROPERTY);
            this.d = boolValue;
        }

        public final BoolValue c() {
            return this.d;
        }
    }

    public static final class c extends DivTypedValue {
        public final ColorValue d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ColorValue colorValue) {
            super(null);
            y45.j(colorValue, ES6Iterator.VALUE_PROPERTY);
            this.d = colorValue;
        }

        public final ColorValue c() {
            return this.d;
        }
    }

    public static final class d {
        public d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivTypedValue a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((c5) ml0.a().b9().getValue()).a(hx7Var, jSONObject);
        }

        public d() {
        }
    }

    public static final class e extends DivTypedValue {
        public final DictValue d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(DictValue dictValue) {
            super(null);
            y45.j(dictValue, ES6Iterator.VALUE_PROPERTY);
            this.d = dictValue;
        }

        public final DictValue c() {
            return this.d;
        }
    }

    public static final class f extends DivTypedValue {
        public final IntegerValue d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(IntegerValue integerValue) {
            super(null);
            y45.j(integerValue, ES6Iterator.VALUE_PROPERTY);
            this.d = integerValue;
        }

        public final IntegerValue c() {
            return this.d;
        }
    }

    public static final class g extends DivTypedValue {
        public final NumberValue d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(NumberValue numberValue) {
            super(null);
            y45.j(numberValue, ES6Iterator.VALUE_PROPERTY);
            this.d = numberValue;
        }

        public final NumberValue c() {
            return this.d;
        }
    }

    public static final class h extends DivTypedValue {
        public final StrValue d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(StrValue strValue) {
            super(null);
            y45.j(strValue, ES6Iterator.VALUE_PROPERTY);
            this.d = strValue;
        }

        public final StrValue c() {
            return this.d;
        }
    }

    public static final class i extends DivTypedValue {
        public final UrlValue d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(UrlValue urlValue) {
            super(null);
            y45.j(urlValue, ES6Iterator.VALUE_PROPERTY);
            this.d = urlValue;
        }

        public final UrlValue c() {
            return this.d;
        }
    }

    public DivTypedValue(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivTypedValue divTypedValue, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divTypedValue == null) {
            return false;
        }
        if (this instanceof h) {
            StrValue strValueC = ((h) this).c();
            Object objB = divTypedValue.b();
            return strValueC.a(objB instanceof StrValue ? (StrValue) objB : null, oj3Var, oj3Var2);
        }
        if (this instanceof f) {
            IntegerValue integerValueC = ((f) this).c();
            Object objB2 = divTypedValue.b();
            return integerValueC.a(objB2 instanceof IntegerValue ? (IntegerValue) objB2 : null, oj3Var, oj3Var2);
        }
        if (this instanceof g) {
            NumberValue numberValueC = ((g) this).c();
            Object objB3 = divTypedValue.b();
            return numberValueC.a(objB3 instanceof NumberValue ? (NumberValue) objB3 : null, oj3Var, oj3Var2);
        }
        if (this instanceof c) {
            ColorValue colorValueC = ((c) this).c();
            Object objB4 = divTypedValue.b();
            return colorValueC.a(objB4 instanceof ColorValue ? (ColorValue) objB4 : null, oj3Var, oj3Var2);
        }
        if (this instanceof b) {
            BoolValue boolValueC = ((b) this).c();
            Object objB5 = divTypedValue.b();
            return boolValueC.a(objB5 instanceof BoolValue ? (BoolValue) objB5 : null, oj3Var, oj3Var2);
        }
        if (this instanceof i) {
            UrlValue urlValueC = ((i) this).c();
            Object objB6 = divTypedValue.b();
            return urlValueC.a(objB6 instanceof UrlValue ? (UrlValue) objB6 : null, oj3Var, oj3Var2);
        }
        if (this instanceof e) {
            DictValue dictValueC = ((e) this).c();
            Object objB7 = divTypedValue.b();
            return dictValueC.a(objB7 instanceof DictValue ? (DictValue) objB7 : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof a)) {
            throw new NoWhenBranchMatchedException();
        }
        ArrayValue arrayValueC = ((a) this).c();
        Object objB8 = divTypedValue.b();
        return arrayValueC.a(objB8 instanceof ArrayValue ? (ArrayValue) objB8 : null, oj3Var, oj3Var2);
    }

    public final Object b() {
        if (this instanceof h) {
            return ((h) this).c();
        }
        if (this instanceof f) {
            return ((f) this).c();
        }
        if (this instanceof g) {
            return ((g) this).c();
        }
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof b) {
            return ((b) this).c();
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
        } else if (this instanceof f) {
            iHash = ((f) this).c().hash();
        } else if (this instanceof g) {
            iHash = ((g) this).c().hash();
        } else if (this instanceof c) {
            iHash = ((c) this).c().hash();
        } else if (this instanceof b) {
            iHash = ((b) this).c().hash();
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
        return ((c5) ml0.a().b9().getValue()).b(ml0.b(), this);
    }

    public DivTypedValue() {
    }
}
