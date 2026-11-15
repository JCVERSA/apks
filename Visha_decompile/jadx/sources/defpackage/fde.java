package defpackage;

import java.util.Arrays;

public final class fde extends cde {
    public final int b;
    public final int c;
    public final int d;
    public final int[] e;
    public final int[] f;

    public fde(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = iArr;
        this.f = iArr2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && fde.class == obj.getClass()) {
            fde fdeVar = (fde) obj;
            if (this.b == fdeVar.b && this.c == fdeVar.c && this.d == fdeVar.d && Arrays.equals(this.e, fdeVar.e) && Arrays.equals(this.f, fdeVar.f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((this.b + 527) * 31) + this.c) * 31) + this.d) * 31) + Arrays.hashCode(this.e)) * 31) + Arrays.hashCode(this.f);
    }
}
