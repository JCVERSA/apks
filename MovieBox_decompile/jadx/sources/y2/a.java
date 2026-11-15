package y2;

import androidx.media3.common.v;
import java.util.Arrays;
import java.util.Objects;

public final class a extends i {

    public final String f76089b;

    public final String f76090c;

    public final int f76091d;

    public final byte[] f76092e;

    public a(String str, String str2, int i10, byte[] bArr) {
        super("APIC");
        this.f76089b = str;
        this.f76090c = str2;
        this.f76091d = i10;
        this.f76092e = bArr;
    }

    @Override
    public void a(v.b bVar) {
        bVar.K(this.f76092e, this.f76091d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f76091d == aVar.f76091d && Objects.equals(this.f76089b, aVar.f76089b) && Objects.equals(this.f76090c, aVar.f76090c) && Arrays.equals(this.f76092e, aVar.f76092e);
    }

    public int hashCode() {
        int i10 = (527 + this.f76091d) * 31;
        String str = this.f76089b;
        int iHashCode = (i10 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f76090c;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.f76092e);
    }

    @Override
    public String toString() {
        return this.f76117a + ": mimeType=" + this.f76089b + ", description=" + this.f76090c;
    }
}
