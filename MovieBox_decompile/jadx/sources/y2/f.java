package y2;

import java.util.Arrays;
import java.util.Objects;

public final class f extends i {

    public final String f76108b;

    public final String f76109c;

    public final String f76110d;

    public final byte[] f76111e;

    public f(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f76108b = str;
        this.f76109c = str2;
        this.f76110d = str3;
        this.f76111e = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        return Objects.equals(this.f76108b, fVar.f76108b) && Objects.equals(this.f76109c, fVar.f76109c) && Objects.equals(this.f76110d, fVar.f76110d) && Arrays.equals(this.f76111e, fVar.f76111e);
    }

    public int hashCode() {
        String str = this.f76108b;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f76109c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f76110d;
        return ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + Arrays.hashCode(this.f76111e);
    }

    @Override
    public String toString() {
        return this.f76117a + ": mimeType=" + this.f76108b + ", filename=" + this.f76109c + ", description=" + this.f76110d;
    }
}
