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

public abstract class DivPageTransformation implements d65, ko4 {
    public static final a b = new a(null);
    public static final s74 c = new s74() {
        @Override
        public final DivPageTransformation invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivPageTransformation.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivPageTransformation a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((m2) ml0.a().n5().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivPageTransformation {
        public final DivPageTransformationOverlap d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivPageTransformationOverlap divPageTransformationOverlap) {
            super(null);
            y45.j(divPageTransformationOverlap, ES6Iterator.VALUE_PROPERTY);
            this.d = divPageTransformationOverlap;
        }

        public final DivPageTransformationOverlap c() {
            return this.d;
        }
    }

    public static final class c extends DivPageTransformation {
        public final DivPageTransformationSlide d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivPageTransformationSlide divPageTransformationSlide) {
            super(null);
            y45.j(divPageTransformationSlide, ES6Iterator.VALUE_PROPERTY);
            this.d = divPageTransformationSlide;
        }

        public final DivPageTransformationSlide c() {
            return this.d;
        }
    }

    public DivPageTransformation(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivPageTransformation divPageTransformation, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divPageTransformation == null) {
            return false;
        }
        if (this instanceof c) {
            DivPageTransformationSlide divPageTransformationSlideC = ((c) this).c();
            Object objB = divPageTransformation.b();
            return divPageTransformationSlideC.a(objB instanceof DivPageTransformationSlide ? (DivPageTransformationSlide) objB : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof b)) {
            throw new NoWhenBranchMatchedException();
        }
        DivPageTransformationOverlap divPageTransformationOverlapC = ((b) this).c();
        Object objB2 = divPageTransformation.b();
        return divPageTransformationOverlapC.a(objB2 instanceof DivPageTransformationOverlap ? (DivPageTransformationOverlap) objB2 : null, oj3Var, oj3Var2);
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
        return ((m2) ml0.a().n5().getValue()).b(ml0.b(), this);
    }

    public DivPageTransformation() {
    }
}
