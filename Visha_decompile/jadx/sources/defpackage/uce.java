package defpackage;

import java.util.Arrays;

public final class uce extends cde {
    public final byte[] b;

    public uce(String str, byte[] bArr) {
        super(str);
        this.b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && uce.class == obj.getClass()) {
            uce uceVar = (uce) obj;
            if (this.a.equals(uceVar.a) && Arrays.equals(this.b, uceVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.a.hashCode() + 527) * 31) + Arrays.hashCode(this.b);
    }
}
