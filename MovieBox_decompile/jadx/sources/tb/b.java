package tb;

final class b extends i {

    private final String f72618b;

    private final String f72619c;

    private final String f72620d;

    private final String f72621e;

    private final long f72622f;

    b(String str, String str2, String str3, String str4, long j10) {
        if (str == null) {
            throw new NullPointerException("Null rolloutId");
        }
        this.f72618b = str;
        if (str2 == null) {
            throw new NullPointerException("Null parameterKey");
        }
        this.f72619c = str2;
        if (str3 == null) {
            throw new NullPointerException("Null parameterValue");
        }
        this.f72620d = str3;
        if (str4 == null) {
            throw new NullPointerException("Null variantId");
        }
        this.f72621e = str4;
        this.f72622f = j10;
    }

    @Override
    public String c() {
        return this.f72619c;
    }

    @Override
    public String d() {
        return this.f72620d;
    }

    @Override
    public String e() {
        return this.f72618b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f72618b.equals(iVar.e()) && this.f72619c.equals(iVar.c()) && this.f72620d.equals(iVar.d()) && this.f72621e.equals(iVar.g()) && this.f72622f == iVar.f();
    }

    @Override
    public long f() {
        return this.f72622f;
    }

    @Override
    public String g() {
        return this.f72621e;
    }

    public int hashCode() {
        int iHashCode = (((((((this.f72618b.hashCode() ^ 1000003) * 1000003) ^ this.f72619c.hashCode()) * 1000003) ^ this.f72620d.hashCode()) * 1000003) ^ this.f72621e.hashCode()) * 1000003;
        long j10 = this.f72622f;
        return iHashCode ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "RolloutAssignment{rolloutId=" + this.f72618b + ", parameterKey=" + this.f72619c + ", parameterValue=" + this.f72620d + ", variantId=" + this.f72621e + ", templateVersion=" + this.f72622f + "}";
    }
}
