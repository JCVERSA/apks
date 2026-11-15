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

public abstract class DivActionScrollDestination implements d65, ko4 {
    public static final a b = new a(null);
    public static final s74 c = new s74() {
        @Override
        public final DivActionScrollDestination invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionScrollDestination.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivActionScrollDestination a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((h) ml0.a().D0().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivActionScrollDestination {
        public final EndDestination d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(EndDestination endDestination) {
            super(null);
            y45.j(endDestination, ES6Iterator.VALUE_PROPERTY);
            this.d = endDestination;
        }

        public final EndDestination c() {
            return this.d;
        }
    }

    public static final class c extends DivActionScrollDestination {
        public final IndexDestination d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(IndexDestination indexDestination) {
            super(null);
            y45.j(indexDestination, ES6Iterator.VALUE_PROPERTY);
            this.d = indexDestination;
        }

        public final IndexDestination c() {
            return this.d;
        }
    }

    public static final class d extends DivActionScrollDestination {
        public final OffsetDestination d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(OffsetDestination offsetDestination) {
            super(null);
            y45.j(offsetDestination, ES6Iterator.VALUE_PROPERTY);
            this.d = offsetDestination;
        }

        public final OffsetDestination c() {
            return this.d;
        }
    }

    public static final class e extends DivActionScrollDestination {
        public final StartDestination d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(StartDestination startDestination) {
            super(null);
            y45.j(startDestination, ES6Iterator.VALUE_PROPERTY);
            this.d = startDestination;
        }

        public final StartDestination c() {
            return this.d;
        }
    }

    public DivActionScrollDestination(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivActionScrollDestination divActionScrollDestination, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divActionScrollDestination == null) {
            return false;
        }
        if (this instanceof d) {
            OffsetDestination offsetDestinationC = ((d) this).c();
            Object objB = divActionScrollDestination.b();
            return offsetDestinationC.a(objB instanceof OffsetDestination ? (OffsetDestination) objB : null, oj3Var, oj3Var2);
        }
        if (this instanceof c) {
            IndexDestination indexDestinationC = ((c) this).c();
            Object objB2 = divActionScrollDestination.b();
            return indexDestinationC.a(objB2 instanceof IndexDestination ? (IndexDestination) objB2 : null, oj3Var, oj3Var2);
        }
        if (this instanceof e) {
            StartDestination startDestinationC = ((e) this).c();
            Object objB3 = divActionScrollDestination.b();
            return startDestinationC.a(objB3 instanceof StartDestination ? (StartDestination) objB3 : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof b)) {
            throw new NoWhenBranchMatchedException();
        }
        EndDestination endDestinationC = ((b) this).c();
        Object objB4 = divActionScrollDestination.b();
        return endDestinationC.a(objB4 instanceof EndDestination ? (EndDestination) objB4 : null, oj3Var, oj3Var2);
    }

    public final Object b() {
        if (this instanceof d) {
            return ((d) this).c();
        }
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof e) {
            return ((e) this).c();
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
        if (this instanceof d) {
            iHash = ((d) this).c().hash();
        } else if (this instanceof c) {
            iHash = ((c) this).c().hash();
        } else if (this instanceof e) {
            iHash = ((e) this).c().hash();
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
        return ((h) ml0.a().D0().getValue()).b(ml0.b(), this);
    }

    public DivActionScrollDestination() {
    }
}
