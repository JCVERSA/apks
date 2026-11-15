package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class f84 {
    public final EvaluableType a;
    public final boolean b;

    public f84(EvaluableType evaluableType, boolean z) {
        y45.j(evaluableType, "type");
        this.a = evaluableType;
        this.b = z;
    }

    public final EvaluableType a() {
        return this.a;
    }

    public final boolean b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f84)) {
            return false;
        }
        f84 f84Var = (f84) obj;
        return this.a == f84Var.a && this.b == f84Var.b;
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
        return "FunctionArgument(type=" + this.a + ", isVariadic=" + this.b + ')';
    }

    public f84(EvaluableType evaluableType, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(evaluableType, (i & 2) != 0 ? false : z);
    }
}
