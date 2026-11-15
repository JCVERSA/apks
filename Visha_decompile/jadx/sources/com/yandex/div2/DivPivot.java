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

public abstract class DivPivot implements d65, ko4 {
    public static final a b = new a(null);
    public static final s74 c = new s74() {
        @Override
        public final DivPivot invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivPivot.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivPivot a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((w2) ml0.a().Q5().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivPivot {
        public final DivPivotFixed d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivPivotFixed divPivotFixed) {
            super(null);
            y45.j(divPivotFixed, ES6Iterator.VALUE_PROPERTY);
            this.d = divPivotFixed;
        }

        public final DivPivotFixed c() {
            return this.d;
        }
    }

    public static final class c extends DivPivot {
        public final DivPivotPercentage d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivPivotPercentage divPivotPercentage) {
            super(null);
            y45.j(divPivotPercentage, ES6Iterator.VALUE_PROPERTY);
            this.d = divPivotPercentage;
        }

        public final DivPivotPercentage c() {
            return this.d;
        }
    }

    public DivPivot(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivPivot divPivot, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divPivot == null) {
            return false;
        }
        if (this instanceof b) {
            DivPivotFixed divPivotFixedC = ((b) this).c();
            Object objB = divPivot.b();
            return divPivotFixedC.a(objB instanceof DivPivotFixed ? (DivPivotFixed) objB : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof c)) {
            throw new NoWhenBranchMatchedException();
        }
        DivPivotPercentage divPivotPercentageC = ((c) this).c();
        Object objB2 = divPivot.b();
        return divPivotPercentageC.a(objB2 instanceof DivPivotPercentage ? (DivPivotPercentage) objB2 : null, oj3Var, oj3Var2);
    }

    public final Object b() {
        if (this instanceof b) {
            return ((b) this).c();
        }
        if (this instanceof c) {
            return ((c) this).c();
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
        if (this instanceof b) {
            iHash = ((b) this).c().hash();
        } else {
            if (!(this instanceof c)) {
                throw new NoWhenBranchMatchedException();
            }
            iHash = ((c) this).c().hash();
        }
        int i = iHashCode + iHash;
        this.a = Integer.valueOf(i);
        return i;
    }

    @Override
    public JSONObject s() {
        return ((w2) ml0.a().Q5().getValue()).b(ml0.b(), this);
    }

    public DivPivot() {
    }
}
