package defpackage;

import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.n;

public abstract class ncb implements mcb {
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mcb)) {
            return false;
        }
        mcb mcbVar = (mcb) obj;
        return b() == mcbVar.b() && c() == mcbVar.c() && getType().equals(mcbVar.getType());
    }

    public int hashCode() {
        int iHashCode = c().hashCode();
        if (n.w(getType())) {
            return (iHashCode * 31) + 19;
        }
        return (iHashCode * 31) + (b() ? 17 : getType().hashCode());
    }

    public String toString() {
        if (b()) {
            return "*";
        }
        if (c() == Variance.INVARIANT) {
            return getType().toString();
        }
        return c() + " " + getType();
    }
}
