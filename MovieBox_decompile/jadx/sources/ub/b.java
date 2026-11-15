package ub;

import qb.f;

final class b extends e.a {

    private final String f73020a;

    private final String f73021b;

    private final String f73022c;

    private final String f73023d;

    private final int f73024e;

    private final f f73025f;

    b(String str, String str2, String str3, String str4, int i10, f fVar) {
        if (str == null) {
            throw new NullPointerException("Null appIdentifier");
        }
        this.f73020a = str;
        if (str2 == null) {
            throw new NullPointerException("Null versionCode");
        }
        this.f73021b = str2;
        if (str3 == null) {
            throw new NullPointerException("Null versionName");
        }
        this.f73022c = str3;
        if (str4 == null) {
            throw new NullPointerException("Null installUuid");
        }
        this.f73023d = str4;
        this.f73024e = i10;
        if (fVar == null) {
            throw new NullPointerException("Null developmentPlatformProvider");
        }
        this.f73025f = fVar;
    }

    @Override
    public String a() {
        return this.f73020a;
    }

    @Override
    public int c() {
        return this.f73024e;
    }

    @Override
    public f d() {
        return this.f73025f;
    }

    @Override
    public String e() {
        return this.f73023d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e.a)) {
            return false;
        }
        e.a aVar = (e.a) obj;
        return this.f73020a.equals(aVar.a()) && this.f73021b.equals(aVar.f()) && this.f73022c.equals(aVar.g()) && this.f73023d.equals(aVar.e()) && this.f73024e == aVar.c() && this.f73025f.equals(aVar.d());
    }

    @Override
    public String f() {
        return this.f73021b;
    }

    @Override
    public String g() {
        return this.f73022c;
    }

    public int hashCode() {
        return ((((((((((this.f73020a.hashCode() ^ 1000003) * 1000003) ^ this.f73021b.hashCode()) * 1000003) ^ this.f73022c.hashCode()) * 1000003) ^ this.f73023d.hashCode()) * 1000003) ^ this.f73024e) * 1000003) ^ this.f73025f.hashCode();
    }

    public String toString() {
        return "AppData{appIdentifier=" + this.f73020a + ", versionCode=" + this.f73021b + ", versionName=" + this.f73022c + ", installUuid=" + this.f73023d + ", deliveryMechanism=" + this.f73024e + ", developmentPlatformProvider=" + this.f73025f + "}";
    }
}
