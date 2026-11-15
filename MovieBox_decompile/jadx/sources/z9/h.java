package z9;

import com.google.android.exoplayer2.util.p0;

public final class h {

    public final String f76679a;

    public final String f76680b;

    public final String f76681c;

    public final String f76682d;

    public final String f76683e;

    public h(String str, String str2, String str3, String str4, String str5) {
        this.f76679a = str;
        this.f76680b = str2;
        this.f76681c = str3;
        this.f76682d = str4;
        this.f76683e = str5;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return p0.c(this.f76679a, hVar.f76679a) && p0.c(this.f76680b, hVar.f76680b) && p0.c(this.f76681c, hVar.f76681c) && p0.c(this.f76682d, hVar.f76682d) && p0.c(this.f76683e, hVar.f76683e);
    }

    public int hashCode() {
        String str = this.f76679a;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f76680b;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f76681c;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f76682d;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f76683e;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }
}
