package defpackage;

import java.util.Arrays;
import java.util.Objects;

public final class yce extends cde {
    public final String b;
    public final String c;
    public final String d;
    public final byte[] e;

    public yce(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && yce.class == obj.getClass()) {
            yce yceVar = (yce) obj;
            if (Objects.equals(this.b, yceVar.b) && Objects.equals(this.c, yceVar.c) && Objects.equals(this.d, yceVar.d) && Arrays.equals(this.e, yceVar.e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.b;
        return (((((((str != null ? str.hashCode() : 0) + 527) * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31) + Arrays.hashCode(this.e);
    }

    @Override
    public final String toString() {
        return this.a + ": mimeType=" + this.b + ", filename=" + this.c + ", description=" + this.d;
    }
}
