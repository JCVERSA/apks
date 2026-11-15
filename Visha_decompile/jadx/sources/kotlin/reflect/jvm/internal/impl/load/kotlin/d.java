package kotlin.reflect.jvm.internal.impl.load.kotlin;

import defpackage.cy6;
import defpackage.id5;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;

public final class d {
    public static final a b = new a(null);
    public final String a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a(String str, String str2) {
            y45.j(str, "name");
            y45.j(str2, "desc");
            return new d(str + '#' + str2, null);
        }

        public final d b(id5 id5Var) {
            y45.j(id5Var, "signature");
            if (id5Var instanceof id5.b) {
                return d(id5Var.c(), id5Var.b());
            }
            if (id5Var instanceof id5.a) {
                return a(id5Var.c(), id5Var.b());
            }
            throw new NoWhenBranchMatchedException();
        }

        public final d c(cy6 cy6Var, JvmProtoBuf.JvmMethodSignature jvmMethodSignature) {
            y45.j(cy6Var, "nameResolver");
            y45.j(jvmMethodSignature, "signature");
            return d(cy6Var.getString(jvmMethodSignature.getName()), cy6Var.getString(jvmMethodSignature.getDesc()));
        }

        public final d d(String str, String str2) {
            y45.j(str, "name");
            y45.j(str2, "desc");
            return new d(str + str2, null);
        }

        public final d e(d dVar, int i) {
            y45.j(dVar, "signature");
            return new d(dVar.a() + '@' + i, null);
        }

        public a() {
        }
    }

    public d(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    public final String a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d) && y45.e(this.a, ((d) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return "MemberSignature(signature=" + this.a + ')';
    }

    public d(String str) {
        this.a = str;
    }
}
