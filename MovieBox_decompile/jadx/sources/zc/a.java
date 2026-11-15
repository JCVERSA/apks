package zc;

final class a extends f {

    private final String f76767a;

    private final String f76768b;

    a(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("Null libraryName");
        }
        this.f76767a = str;
        if (str2 == null) {
            throw new NullPointerException("Null version");
        }
        this.f76768b = str2;
    }

    @Override
    public String b() {
        return this.f76767a;
    }

    @Override
    public String c() {
        return this.f76768b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f76767a.equals(fVar.b()) && this.f76768b.equals(fVar.c());
    }

    public int hashCode() {
        return ((this.f76767a.hashCode() ^ 1000003) * 1000003) ^ this.f76768b.hashCode();
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.f76767a + ", version=" + this.f76768b + "}";
    }
}
