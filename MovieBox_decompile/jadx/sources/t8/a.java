package t8;

import com.google.android.datatransport.Priority;

final class a extends d {

    private final Integer f72559a;

    private final Object f72560b;

    private final Priority f72561c;

    private final f f72562d;

    private final e f72563e;

    a(Integer num, Object obj, Priority priority, f fVar, e eVar) {
        this.f72559a = num;
        if (obj == null) {
            throw new NullPointerException("Null payload");
        }
        this.f72560b = obj;
        if (priority == null) {
            throw new NullPointerException("Null priority");
        }
        this.f72561c = priority;
        this.f72562d = fVar;
        this.f72563e = eVar;
    }

    @Override
    public Integer a() {
        return this.f72559a;
    }

    @Override
    public e b() {
        return this.f72563e;
    }

    @Override
    public Object c() {
        return this.f72560b;
    }

    @Override
    public Priority d() {
        return this.f72561c;
    }

    @Override
    public f e() {
        return this.f72562d;
    }

    public boolean equals(Object obj) {
        f fVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        Integer num = this.f72559a;
        if (num != null ? num.equals(dVar.a()) : dVar.a() == null) {
            if (this.f72560b.equals(dVar.c()) && this.f72561c.equals(dVar.d()) && ((fVar = this.f72562d) != null ? fVar.equals(dVar.e()) : dVar.e() == null)) {
                e eVar = this.f72563e;
                if (eVar == null) {
                    if (dVar.b() == null) {
                        return true;
                    }
                } else if (eVar.equals(dVar.b())) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        Integer num = this.f72559a;
        int iHashCode = ((((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f72560b.hashCode()) * 1000003) ^ this.f72561c.hashCode()) * 1000003;
        f fVar = this.f72562d;
        int iHashCode2 = (iHashCode ^ (fVar == null ? 0 : fVar.hashCode())) * 1000003;
        e eVar = this.f72563e;
        return iHashCode2 ^ (eVar != null ? eVar.hashCode() : 0);
    }

    public String toString() {
        return "Event{code=" + this.f72559a + ", payload=" + this.f72560b + ", priority=" + this.f72561c + ", productData=" + this.f72562d + ", eventContext=" + this.f72563e + "}";
    }
}
