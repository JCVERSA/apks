package defpackage;

import java.util.Arrays;

public final class qae {
    public final int a;
    public final byte[] b;
    public final int c;
    public final int d;

    public qae(int i, byte[] bArr, int i2, int i3) {
        this.a = i;
        this.b = bArr;
        this.c = i2;
        this.d = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && qae.class == obj.getClass()) {
            qae qaeVar = (qae) obj;
            if (this.a == qaeVar.a && this.c == qaeVar.c && this.d == qaeVar.d && Arrays.equals(this.b, qaeVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.a * 31) + Arrays.hashCode(this.b)) * 31) + this.c) * 31) + this.d;
    }
}
