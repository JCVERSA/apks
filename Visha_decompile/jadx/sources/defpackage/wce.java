package defpackage;

import java.util.Arrays;
import java.util.Objects;

public final class wce extends cde {
    public final String b;
    public final boolean c;
    public final boolean d;
    public final String[] e;
    public final cde[] f;

    public wce(String str, boolean z, boolean z2, String[] strArr, cde[] cdeVarArr) {
        super("CTOC");
        this.b = str;
        this.c = z;
        this.d = z2;
        this.e = strArr;
        this.f = cdeVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && wce.class == obj.getClass()) {
            wce wceVar = (wce) obj;
            if (this.c == wceVar.c && this.d == wceVar.d && Objects.equals(this.b, wceVar.b) && Arrays.equals(this.e, wceVar.e) && Arrays.equals(this.f, wceVar.f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.c ? 1 : 0) + 527) * 31) + (this.d ? 1 : 0)) * 31) + this.b.hashCode();
    }
}
