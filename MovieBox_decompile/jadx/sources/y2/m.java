package y2;

import java.util.Arrays;
import java.util.Objects;

public final class m extends i {

    public final String f76127b;

    public final byte[] f76128c;

    public m(String str, byte[] bArr) {
        super("PRIV");
        this.f76127b = str;
        this.f76128c = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m.class != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        return Objects.equals(this.f76127b, mVar.f76127b) && Arrays.equals(this.f76128c, mVar.f76128c);
    }

    public int hashCode() {
        String str = this.f76127b;
        return ((527 + (str != null ? str.hashCode() : 0)) * 31) + Arrays.hashCode(this.f76128c);
    }

    @Override
    public String toString() {
        return this.f76117a + ": owner=" + this.f76127b;
    }
}
