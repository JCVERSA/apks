package ic;

import java.util.List;

final class a extends p {

    private final String f62037a;

    private final List f62038b;

    a(String str, List list) {
        if (str == null) {
            throw new NullPointerException("Null userAgent");
        }
        this.f62037a = str;
        if (list == null) {
            throw new NullPointerException("Null usedDates");
        }
        this.f62038b = list;
    }

    @Override
    public List b() {
        return this.f62038b;
    }

    @Override
    public String c() {
        return this.f62037a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f62037a.equals(pVar.c()) && this.f62038b.equals(pVar.b());
    }

    public int hashCode() {
        return ((this.f62037a.hashCode() ^ 1000003) * 1000003) ^ this.f62038b.hashCode();
    }

    public String toString() {
        return "HeartBeatResult{userAgent=" + this.f62037a + ", usedDates=" + this.f62038b + "}";
    }
}
