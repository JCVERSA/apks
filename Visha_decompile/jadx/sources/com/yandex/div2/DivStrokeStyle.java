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

public abstract class DivStrokeStyle implements d65, ko4 {
    public static final a b = new a(null);
    public static final s74 c = new s74() {
        @Override
        public final DivStrokeStyle invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivStrokeStyle.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivStrokeStyle a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((z3) ml0.a().C7().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivStrokeStyle {
        public final DivStrokeStyleDashed d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivStrokeStyleDashed divStrokeStyleDashed) {
            super(null);
            y45.j(divStrokeStyleDashed, ES6Iterator.VALUE_PROPERTY);
            this.d = divStrokeStyleDashed;
        }

        public final DivStrokeStyleDashed c() {
            return this.d;
        }
    }

    public static final class c extends DivStrokeStyle {
        public final DivStrokeStyleSolid d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivStrokeStyleSolid divStrokeStyleSolid) {
            super(null);
            y45.j(divStrokeStyleSolid, ES6Iterator.VALUE_PROPERTY);
            this.d = divStrokeStyleSolid;
        }

        public final DivStrokeStyleSolid c() {
            return this.d;
        }
    }

    public DivStrokeStyle(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivStrokeStyle divStrokeStyle, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divStrokeStyle == null) {
            return false;
        }
        if (this instanceof c) {
            DivStrokeStyleSolid divStrokeStyleSolidC = ((c) this).c();
            Object objB = divStrokeStyle.b();
            return divStrokeStyleSolidC.a(objB instanceof DivStrokeStyleSolid ? (DivStrokeStyleSolid) objB : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof b)) {
            throw new NoWhenBranchMatchedException();
        }
        DivStrokeStyleDashed divStrokeStyleDashedC = ((b) this).c();
        Object objB2 = divStrokeStyle.b();
        return divStrokeStyleDashedC.a(objB2 instanceof DivStrokeStyleDashed ? (DivStrokeStyleDashed) objB2 : null, oj3Var, oj3Var2);
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
        return ((z3) ml0.a().C7().getValue()).b(ml0.b(), this);
    }

    public DivStrokeStyle() {
    }
}
