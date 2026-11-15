package z1;

import java.util.Objects;

public final class h {

    public final String f76546a;

    public final String f76547b;

    public final String f76548c;

    public final String f76549d;

    public final String f76550e;

    public h(String str, String str2, String str3, String str4, String str5) {
        this.f76546a = str;
        this.f76547b = str2;
        this.f76548c = str3;
        this.f76549d = str4;
        this.f76550e = str5;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return Objects.equals(this.f76546a, hVar.f76546a) && Objects.equals(this.f76547b, hVar.f76547b) && Objects.equals(this.f76548c, hVar.f76548c) && Objects.equals(this.f76549d, hVar.f76549d) && Objects.equals(this.f76550e, hVar.f76550e);
    }

    public int hashCode() {
        String str = this.f76546a;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f76547b;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f76548c;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f76549d;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f76550e;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }
}
