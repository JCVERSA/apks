package defpackage;

import java.util.Objects;

public final class sce implements iqe {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final boolean e;
    public final int f;

    public sce(int i, String str, String str2, String str3, boolean z, int i2) {
        boolean z2 = true;
        if (i2 != -1 && i2 <= 0) {
            z2 = false;
        }
        n7g.d(z2);
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = z;
        this.f = i2;
    }

    @Override
    public final void a(une uneVar) {
        String str = this.c;
        if (str != null) {
            uneVar.N(str);
        }
        String str2 = this.b;
        if (str2 != null) {
            uneVar.G(str2);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && sce.class == obj.getClass()) {
            sce sceVar = (sce) obj;
            if (this.a == sceVar.a && Objects.equals(this.b, sceVar.b) && Objects.equals(this.c, sceVar.c) && Objects.equals(this.d, sceVar.d) && this.e == sceVar.e && this.f == sceVar.f) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.b;
        int iHashCode = str != null ? str.hashCode() : 0;
        int i = this.a;
        String str2 = this.c;
        int iHashCode2 = str2 != null ? str2.hashCode() : 0;
        int i2 = ((i + 527) * 31) + iHashCode;
        String str3 = this.d;
        return (((((((i2 * 31) + iHashCode2) * 31) + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.e ? 1 : 0)) * 31) + this.f;
    }

    public final String toString() {
        return "IcyHeaders: name=\"" + this.c + "\", genre=\"" + this.b + "\", bitrate=" + this.a + ", metadataInterval=" + this.f;
    }
}
