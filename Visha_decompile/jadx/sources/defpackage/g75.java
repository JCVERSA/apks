package defpackage;

import java.util.Collection;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier;

public final class g75 {
    public final m37 a;
    public final Collection b;
    public final boolean c;

    public g75(m37 m37Var, Collection collection, boolean z) {
        y45.j(m37Var, "nullabilityQualifier");
        y45.j(collection, "qualifierApplicabilityTypes");
        this.a = m37Var;
        this.b = collection;
        this.c = z;
    }

    public static g75 b(g75 g75Var, m37 m37Var, Collection collection, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            m37Var = g75Var.a;
        }
        if ((i & 2) != 0) {
            collection = g75Var.b;
        }
        if ((i & 4) != 0) {
            z = g75Var.c;
        }
        return g75Var.a(m37Var, collection, z);
    }

    public final g75 a(m37 m37Var, Collection collection, boolean z) {
        y45.j(m37Var, "nullabilityQualifier");
        y45.j(collection, "qualifierApplicabilityTypes");
        return new g75(m37Var, collection, z);
    }

    public final boolean c() {
        return this.c;
    }

    public final m37 d() {
        return this.a;
    }

    public final Collection e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g75)) {
            return false;
        }
        g75 g75Var = (g75) obj;
        return y45.e(this.a, g75Var.a) && y45.e(this.b, g75Var.b) && this.c == g75Var.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    public int hashCode() {
        int iHashCode = ((this.a.hashCode() * 31) + this.b.hashCode()) * 31;
        boolean z = this.c;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        return iHashCode + r2;
    }

    public String toString() {
        return "JavaDefaultQualifiers(nullabilityQualifier=" + this.a + ", qualifierApplicabilityTypes=" + this.b + ", definitelyNotNull=" + this.c + ')';
    }

    public g75(m37 m37Var, Collection collection, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(m37Var, collection, (i & 4) != 0 ? m37Var.c() == NullabilityQualifier.NOT_NULL : z);
    }
}
