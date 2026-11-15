package ub;

final class a extends e {

    private final e.a f73017a;

    private final e.c f73018b;

    private final e.b f73019c;

    a(e.a aVar, e.c cVar, e.b bVar) {
        if (aVar == null) {
            throw new NullPointerException("Null appData");
        }
        this.f73017a = aVar;
        if (cVar == null) {
            throw new NullPointerException("Null osData");
        }
        this.f73018b = cVar;
        if (bVar == null) {
            throw new NullPointerException("Null deviceData");
        }
        this.f73019c = bVar;
    }

    @Override
    public e.a a() {
        return this.f73017a;
    }

    @Override
    public e.b c() {
        return this.f73019c;
    }

    @Override
    public e.c d() {
        return this.f73018b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f73017a.equals(eVar.a()) && this.f73018b.equals(eVar.d()) && this.f73019c.equals(eVar.c());
    }

    public int hashCode() {
        return ((((this.f73017a.hashCode() ^ 1000003) * 1000003) ^ this.f73018b.hashCode()) * 1000003) ^ this.f73019c.hashCode();
    }

    public String toString() {
        return "StaticSessionData{appData=" + this.f73017a + ", osData=" + this.f73018b + ", deviceData=" + this.f73019c + "}";
    }
}
