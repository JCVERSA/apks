package r4;

public class h {

    Object f70840a;

    Object f70841b;

    private static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public void b(Object obj, Object obj2) {
        this.f70840a = obj;
        this.f70841b = obj2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof androidx.core.util.e)) {
            return false;
        }
        androidx.core.util.e eVar = (androidx.core.util.e) obj;
        return a(eVar.f7958a, this.f70840a) && a(eVar.f7959b, this.f70841b);
    }

    public int hashCode() {
        Object obj = this.f70840a;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f70841b;
        return iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + this.f70840a + " " + this.f70841b + "}";
    }
}
