package y2;

import java.util.Arrays;

public final class b extends i {

    public final byte[] f76093b;

    public b(String str, byte[] bArr) {
        super(str);
        this.f76093b = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f76117a.equals(bVar.f76117a) && Arrays.equals(this.f76093b, bVar.f76093b);
    }

    public int hashCode() {
        return ((527 + this.f76117a.hashCode()) * 31) + Arrays.hashCode(this.f76093b);
    }
}
