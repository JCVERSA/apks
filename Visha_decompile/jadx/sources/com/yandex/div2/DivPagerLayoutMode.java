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

public abstract class DivPagerLayoutMode implements d65, ko4 {
    public static final a b = new a(null);
    public static final s74 c = new s74() {
        @Override
        public final DivPagerLayoutMode invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivPagerLayoutMode.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivPagerLayoutMode a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((p2) ml0.a().z5().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivPagerLayoutMode {
        public final DivNeighbourPageSize d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivNeighbourPageSize divNeighbourPageSize) {
            super(null);
            y45.j(divNeighbourPageSize, ES6Iterator.VALUE_PROPERTY);
            this.d = divNeighbourPageSize;
        }

        public final DivNeighbourPageSize c() {
            return this.d;
        }
    }

    public static final class c extends DivPagerLayoutMode {
        public final DivPageContentSize d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivPageContentSize divPageContentSize) {
            super(null);
            y45.j(divPageContentSize, ES6Iterator.VALUE_PROPERTY);
            this.d = divPageContentSize;
        }

        public final DivPageContentSize c() {
            return this.d;
        }
    }

    public static final class d extends DivPagerLayoutMode {
        public final DivPageSize d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(DivPageSize divPageSize) {
            super(null);
            y45.j(divPageSize, ES6Iterator.VALUE_PROPERTY);
            this.d = divPageSize;
        }

        public final DivPageSize c() {
            return this.d;
        }
    }

    public DivPagerLayoutMode(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivPagerLayoutMode divPagerLayoutMode, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divPagerLayoutMode == null) {
            return false;
        }
        if (this instanceof d) {
            DivPageSize divPageSizeC = ((d) this).c();
            Object objB = divPagerLayoutMode.b();
            return divPageSizeC.a(objB instanceof DivPageSize ? (DivPageSize) objB : null, oj3Var, oj3Var2);
        }
        if (this instanceof b) {
            DivNeighbourPageSize divNeighbourPageSizeC = ((b) this).c();
            Object objB2 = divPagerLayoutMode.b();
            return divNeighbourPageSizeC.a(objB2 instanceof DivNeighbourPageSize ? (DivNeighbourPageSize) objB2 : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof c)) {
            throw new NoWhenBranchMatchedException();
        }
        DivPageContentSize divPageContentSizeC = ((c) this).c();
        Object objB3 = divPagerLayoutMode.b();
        return divPageContentSizeC.a(objB3 instanceof DivPageContentSize ? (DivPageContentSize) objB3 : null, oj3Var, oj3Var2);
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
        return ((p2) ml0.a().z5().getValue()).b(ml0.b(), this);
    }

    public DivPagerLayoutMode() {
    }
}
