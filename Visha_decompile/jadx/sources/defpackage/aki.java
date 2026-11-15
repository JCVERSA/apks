package defpackage;

import java.util.Objects;

public final class aki {
    public final Class a;
    public final eri b;

    public aki(Class cls, eri eriVar, cki ckiVar) {
        this.a = cls;
        this.b = eriVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof aki)) {
            return false;
        }
        aki akiVar = (aki) obj;
        return akiVar.a.equals(this.a) && akiVar.b.equals(this.b);
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b);
    }

    public final String toString() {
        eri eriVar = this.b;
        return this.a.getSimpleName() + ", object identifier: " + String.valueOf(eriVar);
    }
}
