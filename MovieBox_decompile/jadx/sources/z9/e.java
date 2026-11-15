package z9;

import com.google.android.exoplayer2.util.p0;

public final class e {

    public final String f76666a;

    public final String f76667b;

    public final String f76668c;

    public e(String str, String str2, String str3) {
        this.f76666a = str;
        this.f76667b = str2;
        this.f76668c = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return p0.c(this.f76666a, eVar.f76666a) && p0.c(this.f76667b, eVar.f76667b) && p0.c(this.f76668c, eVar.f76668c);
    }

    public int hashCode() {
        int iHashCode = this.f76666a.hashCode() * 31;
        String str = this.f76667b;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f76668c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }
}
