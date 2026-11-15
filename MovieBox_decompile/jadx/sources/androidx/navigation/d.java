package androidx.navigation;

import android.os.Bundle;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    private final o f13551a;

    private final boolean f13552b;

    private final boolean f13553c;

    private final Object f13554d;

    public static final class a {

        private o f13555a;

        private boolean f13556b;

        private Object f13557c;

        private boolean f13558d;

        public final d a() {
            o oVarC = this.f13555a;
            if (oVarC == null) {
                oVarC = o.f13624c.c(this.f13557c);
            }
            return new d(oVarC, this.f13556b, this.f13557c, this.f13558d);
        }

        public final a b(Object obj) {
            this.f13557c = obj;
            this.f13558d = true;
            return this;
        }

        public final a c(boolean z10) {
            this.f13556b = z10;
            return this;
        }

        public final a d(o type) {
            Intrinsics.h(type, "type");
            this.f13555a = type;
            return this;
        }
    }

    public d(o type, boolean z10, Object obj, boolean z11) {
        Intrinsics.h(type, "type");
        if (!type.c() && z10) {
            throw new IllegalArgumentException(Intrinsics.q(type.b(), " does not allow nullable values").toString());
        }
        if (!z10 && z11 && obj == null) {
            throw new IllegalArgumentException(("Argument with type " + type.b() + " has null value but is not nullable.").toString());
        }
        this.f13551a = type;
        this.f13552b = z10;
        this.f13554d = obj;
        this.f13553c = z11;
    }

    public final o a() {
        return this.f13551a;
    }

    public final boolean b() {
        return this.f13553c;
    }

    public final boolean c() {
        return this.f13552b;
    }

    public final void d(String name, Bundle bundle) {
        Intrinsics.h(name, "name");
        Intrinsics.h(bundle, "bundle");
        if (this.f13553c) {
            this.f13551a.f(bundle, name, this.f13554d);
        }
    }

    public final boolean e(String name, Bundle bundle) {
        Intrinsics.h(name, "name");
        Intrinsics.h(bundle, "bundle");
        if (!this.f13552b && bundle.containsKey(name) && bundle.get(name) == null) {
            return false;
        }
        try {
            this.f13551a.a(bundle, name);
            return true;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.c(d.class, obj.getClass())) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f13552b != dVar.f13552b || this.f13553c != dVar.f13553c || !Intrinsics.c(this.f13551a, dVar.f13551a)) {
            return false;
        }
        Object obj2 = this.f13554d;
        if (obj2 != null) {
            return Intrinsics.c(obj2, dVar.f13554d);
        }
        return dVar.f13554d == null;
    }

    public int hashCode() {
        int iHashCode = ((((this.f13551a.hashCode() * 31) + (this.f13552b ? 1 : 0)) * 31) + (this.f13553c ? 1 : 0)) * 31;
        Object obj = this.f13554d;
        return iHashCode + (obj == null ? 0 : obj.hashCode());
    }
}
