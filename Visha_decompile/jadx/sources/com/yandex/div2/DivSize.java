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

public abstract class DivSize implements d65, ko4 {
    public static final a b = new a(null);
    public static final s74 c = new s74() {
        @Override
        public final DivSize invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivSize.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivSize a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((p3) ml0.a().V6().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivSize {
        public final DivFixedSize d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivFixedSize divFixedSize) {
            super(null);
            y45.j(divFixedSize, ES6Iterator.VALUE_PROPERTY);
            this.d = divFixedSize;
        }

        public final DivFixedSize c() {
            return this.d;
        }
    }

    public static final class c extends DivSize {
        public final DivMatchParentSize d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivMatchParentSize divMatchParentSize) {
            super(null);
            y45.j(divMatchParentSize, ES6Iterator.VALUE_PROPERTY);
            this.d = divMatchParentSize;
        }

        public final DivMatchParentSize c() {
            return this.d;
        }
    }

    public static final class d extends DivSize {
        public final DivWrapContentSize d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(DivWrapContentSize divWrapContentSize) {
            super(null);
            y45.j(divWrapContentSize, ES6Iterator.VALUE_PROPERTY);
            this.d = divWrapContentSize;
        }

        public final DivWrapContentSize c() {
            return this.d;
        }
    }

    public DivSize(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivSize divSize, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divSize == null) {
            return false;
        }
        if (this instanceof b) {
            DivFixedSize divFixedSizeC = ((b) this).c();
            Object objB = divSize.b();
            return divFixedSizeC.a(objB instanceof DivFixedSize ? (DivFixedSize) objB : null, oj3Var, oj3Var2);
        }
        if (this instanceof c) {
            DivMatchParentSize divMatchParentSizeC = ((c) this).c();
            Object objB2 = divSize.b();
            return divMatchParentSizeC.a(objB2 instanceof DivMatchParentSize ? (DivMatchParentSize) objB2 : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof d)) {
            throw new NoWhenBranchMatchedException();
        }
        DivWrapContentSize divWrapContentSizeC = ((d) this).c();
        Object objB3 = divSize.b();
        return divWrapContentSizeC.a(objB3 instanceof DivWrapContentSize ? (DivWrapContentSize) objB3 : null, oj3Var, oj3Var2);
    }

    public final Object b() {
        if (this instanceof b) {
            return ((b) this).c();
        }
        if (this instanceof c) {
            return ((c) this).c();
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
        if (this instanceof b) {
            iHash = ((b) this).c().hash();
        } else if (this instanceof c) {
            iHash = ((c) this).c().hash();
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
        return ((p3) ml0.a().V6().getValue()).b(ml0.b(), this);
    }

    public DivSize() {
    }
}
