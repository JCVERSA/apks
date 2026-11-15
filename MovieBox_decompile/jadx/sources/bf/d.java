package bf;

final class d {

    private final Object f15794a;

    private final Object f15795b;

    private d(Object obj, Object obj2) {
        this.f15794a = obj;
        this.f15795b = obj2;
    }

    public static d b(Object obj, Object obj2) {
        return new d(obj, obj2);
    }

    public Object a() {
        return this.f15794a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        Object obj2 = this.f15794a;
        if (obj2 == null) {
            if (dVar.f15794a != null) {
                return false;
            }
        } else if (!obj2.equals(dVar.f15794a)) {
            return false;
        }
        Object obj3 = this.f15795b;
        if (obj3 == null) {
            if (dVar.f15795b != null) {
                return false;
            }
        } else if (!obj3.equals(dVar.f15795b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        Object obj = this.f15794a;
        int iHashCode = ((obj == null ? 0 : obj.hashCode()) + 31) * 31;
        Object obj2 = this.f15795b;
        return iHashCode + (obj2 != null ? obj2.hashCode() : 0);
    }
}
