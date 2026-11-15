package ud;

import java.util.Objects;

final class b {

    private final td.b f73042a;

    private final td.b f73043b;

    private final td.c f73044c;

    b(td.b bVar, td.b bVar2, td.c cVar) {
        this.f73042a = bVar;
        this.f73043b = bVar2;
        this.f73044c = cVar;
    }

    td.c a() {
        return this.f73044c;
    }

    td.b b() {
        return this.f73042a;
    }

    td.b c() {
        return this.f73043b;
    }

    boolean d() {
        return this.f73043b == null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Objects.equals(this.f73042a, bVar.f73042a) && Objects.equals(this.f73043b, bVar.f73043b) && Objects.equals(this.f73044c, bVar.f73044c);
    }

    public int hashCode() {
        return (Objects.hashCode(this.f73042a) ^ Objects.hashCode(this.f73043b)) ^ Objects.hashCode(this.f73044c);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[ ");
        sb2.append(this.f73042a);
        sb2.append(" , ");
        sb2.append(this.f73043b);
        sb2.append(" : ");
        td.c cVar = this.f73044c;
        sb2.append(cVar == null ? "null" : Integer.valueOf(cVar.c()));
        sb2.append(" ]");
        return sb2.toString();
    }
}
