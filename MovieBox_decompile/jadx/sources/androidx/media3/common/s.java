package androidx.media3.common;

import androidx.media3.common.util.a1;
import java.util.Objects;

public class s {

    private static final String f9887c = a1.C0(0);

    private static final String f9888d = a1.C0(1);

    public final String f9889a;

    public final String f9890b;

    public s(String str, String str2) {
        this.f9889a = a1.U0(str);
        this.f9890b = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        s sVar = (s) obj;
        return Objects.equals(this.f9889a, sVar.f9889a) && Objects.equals(this.f9890b, sVar.f9890b);
    }

    public int hashCode() {
        int iHashCode = this.f9890b.hashCode() * 31;
        String str = this.f9889a;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }
}
