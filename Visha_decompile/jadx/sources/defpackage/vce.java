package defpackage;

import java.util.Arrays;
import java.util.Objects;

public final class vce extends cde {
    public final String b;
    public final int c;
    public final int d;
    public final long e;
    public final long f;
    public final cde[] g;

    public vce(String str, int i, int i2, long j, long j2, cde[] cdeVarArr) {
        super("CHAP");
        this.b = str;
        this.c = i;
        this.d = i2;
        this.e = j;
        this.f = j2;
        this.g = cdeVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && vce.class == obj.getClass()) {
            vce vceVar = (vce) obj;
            if (this.c == vceVar.c && this.d == vceVar.d && this.e == vceVar.e && this.f == vceVar.f && Objects.equals(this.b, vceVar.b) && Arrays.equals(this.g, vceVar.g)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.c + 527;
        String str = this.b;
        long j = this.f;
        return (((((((i * 31) + this.d) * 31) + ((int) this.e)) * 31) + ((int) j)) * 31) + str.hashCode();
    }
}
