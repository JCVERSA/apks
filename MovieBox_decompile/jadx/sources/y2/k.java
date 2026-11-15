package y2;

import java.util.Objects;

public final class k extends i {

    public final String f76119b;

    public final String f76120c;

    public final String f76121d;

    public k(String str, String str2, String str3) {
        super("----");
        this.f76119b = str;
        this.f76120c = str2;
        this.f76121d = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return Objects.equals(this.f76120c, kVar.f76120c) && Objects.equals(this.f76119b, kVar.f76119b) && Objects.equals(this.f76121d, kVar.f76121d);
    }

    public int hashCode() {
        String str = this.f76119b;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f76120c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f76121d;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override
    public String toString() {
        return this.f76117a + ": domain=" + this.f76119b + ", description=" + this.f76120c;
    }
}
