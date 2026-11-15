package defpackage;

import java.util.Objects;

public final class bki {
    public final Class a;
    public final Class b;

    public bki(Class cls, Class cls2, cki ckiVar) {
        this.a = cls;
        this.b = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof bki)) {
            return false;
        }
        bki bkiVar = (bki) obj;
        return bkiVar.a.equals(this.a) && bkiVar.b.equals(this.b);
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b);
    }

    public final String toString() {
        Class cls = this.b;
        return this.a.getSimpleName() + " with serialization type: " + cls.getSimpleName();
    }
}
