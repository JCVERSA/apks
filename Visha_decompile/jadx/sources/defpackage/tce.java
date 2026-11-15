package defpackage;

import java.util.Arrays;
import java.util.Objects;

public final class tce extends cde {
    public final String b;
    public final String c;
    public final int d;
    public final byte[] e;

    public tce(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.b = str;
        this.c = str2;
        this.d = i;
        this.e = bArr;
    }

    @Override
    public final void a(une uneVar) {
        uneVar.x(this.e, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && tce.class == obj.getClass()) {
            tce tceVar = (tce) obj;
            if (this.d == tceVar.d && Objects.equals(this.b, tceVar.b) && Objects.equals(this.c, tceVar.c) && Arrays.equals(this.e, tceVar.e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.b;
        int iHashCode = str != null ? str.hashCode() : 0;
        int i = this.d;
        String str2 = this.c;
        return ((((((i + 527) * 31) + iHashCode) * 31) + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.e);
    }

    @Override
    public final String toString() {
        return this.a + ": mimeType=" + this.b + ", description=" + this.c;
    }
}
