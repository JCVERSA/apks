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

public abstract class DivFilter implements d65, ko4 {
    public static final b b = new b(null);
    public static final s74 c = new s74() {
        @Override
        public final DivFilter invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivFilter.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a extends DivFilter {
        public final DivBlur d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(DivBlur divBlur) {
            super(null);
            y45.j(divBlur, ES6Iterator.VALUE_PROPERTY);
            this.d = divBlur;
        }

        public final DivBlur c() {
            return this.d;
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivFilter a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((c1) ml0.a().e3().getValue()).a(hx7Var, jSONObject);
        }

        public b() {
        }
    }

    public static final class c extends DivFilter {
        public final DivFilterRtlMirror d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivFilterRtlMirror divFilterRtlMirror) {
            super(null);
            y45.j(divFilterRtlMirror, ES6Iterator.VALUE_PROPERTY);
            this.d = divFilterRtlMirror;
        }

        public final DivFilterRtlMirror c() {
            return this.d;
        }
    }

    public DivFilter(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivFilter divFilter, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divFilter == null) {
            return false;
        }
        if (this instanceof a) {
            DivBlur divBlurC = ((a) this).c();
            Object objB = divFilter.b();
            return divBlurC.a(objB instanceof DivBlur ? (DivBlur) objB : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof c)) {
            throw new NoWhenBranchMatchedException();
        }
        DivFilterRtlMirror divFilterRtlMirrorC = ((c) this).c();
        Object objB2 = divFilter.b();
        return divFilterRtlMirrorC.a(objB2 instanceof DivFilterRtlMirror ? (DivFilterRtlMirror) objB2 : null, oj3Var, oj3Var2);
    }

    public final Object b() {
        if (this instanceof a) {
            return ((a) this).c();
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
        if (this instanceof a) {
            iHash = ((a) this).c().hash();
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
        return ((c1) ml0.a().e3().getValue()).b(ml0.b(), this);
    }

    public DivFilter() {
    }
}
