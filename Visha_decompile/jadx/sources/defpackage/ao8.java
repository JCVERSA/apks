package defpackage;

import java.util.List;
import java.util.Set;

public final class ao8 {
    public final Set a;
    public final List b;

    public ao8(Set set, List list) {
        y45.j(set, "ids");
        y45.j(list, "errors");
        this.a = set;
        this.b = list;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ao8)) {
            return false;
        }
        ao8 ao8Var = (ao8) obj;
        return y45.e(this.a, ao8Var.a) && y45.e(this.b, ao8Var.b);
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + this.b.hashCode();
    }

    public String toString() {
        return "RawJsonRepositoryRemoveResult(ids=" + this.a + ", errors=" + this.b + ')';
    }
}
