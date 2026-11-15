package defpackage;

import java.util.Arrays;
import java.util.Objects;

public final class gde extends cde {
    public final String b;
    public final byte[] c;

    public gde(String str, byte[] bArr) {
        super("PRIV");
        this.b = str;
        this.c = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && gde.class == obj.getClass()) {
            gde gdeVar = (gde) obj;
            if (Objects.equals(this.b, gdeVar.b) && Arrays.equals(this.c, gdeVar.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.b.hashCode() + 527) * 31) + Arrays.hashCode(this.c);
    }

    @Override
    public final String toString() {
        return this.a + ": owner=" + this.b;
    }
}
