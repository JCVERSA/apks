package com.yandex.div.storage;

import defpackage.i81;
import defpackage.y45;
import defpackage.y71;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class e {
    public static final a c = new a(null);
    public static final e d = new e(y71.k(), y71.k());
    public final List a;
    public final List b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final e a() {
            return e.d;
        }

        public a() {
        }
    }

    public e(List list, List list2) {
        y45.j(list, "resultData");
        y45.j(list2, "errors");
        this.a = list;
        this.b = list2;
    }

    public static e d(e eVar, List list, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = eVar.a;
        }
        if ((i & 2) != 0) {
            list2 = eVar.b;
        }
        return eVar.c(list, list2);
    }

    public final e b(Collection collection) {
        y45.j(collection, "data");
        return d(this, i81.J0(this.a, collection), null, 2, null);
    }

    public final e c(List list, List list2) {
        y45.j(list, "resultData");
        y45.j(list2, "errors");
        return new e(list, list2);
    }

    public final List e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return y45.e(this.a, eVar.a) && y45.e(this.b, eVar.b);
    }

    public final List f() {
        return this.a;
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + this.b.hashCode();
    }

    public String toString() {
        return "RawJsonRepositoryResult(resultData=" + this.a + ", errors=" + this.b + ')';
    }
}
