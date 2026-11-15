package y2;

import java.util.Objects;

public final class e extends i {

    public final String f76105b;

    public final String f76106c;

    public final String f76107d;

    public e(String str, String str2, String str3) {
        super("COMM");
        this.f76105b = str;
        this.f76106c = str2;
        this.f76107d = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return Objects.equals(this.f76106c, eVar.f76106c) && Objects.equals(this.f76105b, eVar.f76105b) && Objects.equals(this.f76107d, eVar.f76107d);
    }

    public int hashCode() {
        String str = this.f76105b;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f76106c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f76107d;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override
    public String toString() {
        return this.f76117a + ": language=" + this.f76105b + ", description=" + this.f76106c + ", text=" + this.f76107d;
    }
}
