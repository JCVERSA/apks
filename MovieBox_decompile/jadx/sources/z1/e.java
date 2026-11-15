package z1;

import java.util.Objects;

public final class e {

    public final String f76533a;

    public final String f76534b;

    public final String f76535c;

    public e(String str, String str2, String str3) {
        this.f76533a = str;
        this.f76534b = str2;
        this.f76535c = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return Objects.equals(this.f76533a, eVar.f76533a) && Objects.equals(this.f76534b, eVar.f76534b) && Objects.equals(this.f76535c, eVar.f76535c);
    }

    public int hashCode() {
        int iHashCode = this.f76533a.hashCode() * 31;
        String str = this.f76534b;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f76535c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }
}
