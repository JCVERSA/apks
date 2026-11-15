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

public abstract class DivIndicatorItemPlacement implements d65, ko4 {
    public static final a b = new a(null);
    public static final s74 c = new s74() {
        @Override
        public final DivIndicatorItemPlacement invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivIndicatorItemPlacement.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivIndicatorItemPlacement a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((o1) ml0.a().X3().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivIndicatorItemPlacement {
        public final DivDefaultIndicatorItemPlacement d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivDefaultIndicatorItemPlacement divDefaultIndicatorItemPlacement) {
            super(null);
            y45.j(divDefaultIndicatorItemPlacement, ES6Iterator.VALUE_PROPERTY);
            this.d = divDefaultIndicatorItemPlacement;
        }

        public final DivDefaultIndicatorItemPlacement c() {
            return this.d;
        }
    }

    public static final class c extends DivIndicatorItemPlacement {
        public final DivStretchIndicatorItemPlacement d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivStretchIndicatorItemPlacement divStretchIndicatorItemPlacement) {
            super(null);
            y45.j(divStretchIndicatorItemPlacement, ES6Iterator.VALUE_PROPERTY);
            this.d = divStretchIndicatorItemPlacement;
        }

        public final DivStretchIndicatorItemPlacement c() {
            return this.d;
        }
    }

    public DivIndicatorItemPlacement(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivIndicatorItemPlacement divIndicatorItemPlacement, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divIndicatorItemPlacement == null) {
            return false;
        }
        if (this instanceof b) {
            DivDefaultIndicatorItemPlacement divDefaultIndicatorItemPlacementC = ((b) this).c();
            Object objB = divIndicatorItemPlacement.b();
            return divDefaultIndicatorItemPlacementC.a(objB instanceof DivDefaultIndicatorItemPlacement ? (DivDefaultIndicatorItemPlacement) objB : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof c)) {
            throw new NoWhenBranchMatchedException();
        }
        DivStretchIndicatorItemPlacement divStretchIndicatorItemPlacementC = ((c) this).c();
        Object objB2 = divIndicatorItemPlacement.b();
        return divStretchIndicatorItemPlacementC.a(objB2 instanceof DivStretchIndicatorItemPlacement ? (DivStretchIndicatorItemPlacement) objB2 : null, oj3Var, oj3Var2);
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
        return ((o1) ml0.a().X3().getValue()).b(ml0.b(), this);
    }

    public DivIndicatorItemPlacement() {
    }
}
