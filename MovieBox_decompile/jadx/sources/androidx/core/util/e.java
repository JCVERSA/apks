package androidx.core.util;

public class e {

    public final Object f7958a;

    public final Object f7959b;

    public e(Object obj, Object obj2) {
        this.f7958a = obj;
        this.f7959b = obj2;
    }

    public static e a(Object obj, Object obj2) {
        return new e(obj, obj2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return d.a(eVar.f7958a, this.f7958a) && d.a(eVar.f7959b, this.f7959b);
    }

    public int hashCode() {
        Object obj = this.f7958a;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f7959b;
        return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + this.f7958a + " " + this.f7959b + "}";
    }
}
