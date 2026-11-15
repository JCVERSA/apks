package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier;

public final class m37 {
    public final NullabilityQualifier a;
    public final boolean b;

    public m37(NullabilityQualifier nullabilityQualifier, boolean z) {
        y45.j(nullabilityQualifier, "qualifier");
        this.a = nullabilityQualifier;
        this.b = z;
    }

    public static m37 b(m37 m37Var, NullabilityQualifier nullabilityQualifier, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            nullabilityQualifier = m37Var.a;
        }
        if ((i & 2) != 0) {
            z = m37Var.b;
        }
        return m37Var.a(nullabilityQualifier, z);
    }

    public final m37 a(NullabilityQualifier nullabilityQualifier, boolean z) {
        y45.j(nullabilityQualifier, "qualifier");
        return new m37(nullabilityQualifier, z);
    }

    public final NullabilityQualifier c() {
        return this.a;
    }

    public final boolean d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m37)) {
            return false;
        }
        m37 m37Var = (m37) obj;
        return this.a == m37Var.a && this.b == m37Var.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        boolean z = this.b;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    public String toString() {
        return "NullabilityQualifierWithMigrationStatus(qualifier=" + this.a + ", isForWarningOnly=" + this.b + ')';
    }

    public m37(NullabilityQualifier nullabilityQualifier, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(nullabilityQualifier, (i & 2) != 0 ? false : z);
    }
}
