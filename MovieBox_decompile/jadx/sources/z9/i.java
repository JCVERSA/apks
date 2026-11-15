package z9;

import android.net.Uri;
import com.google.android.exoplayer2.util.n0;

public final class i {

    public final long f76684a;

    public final long f76685b;

    private final String f76686c;

    private int f76687d;

    public i(String str, long j10, long j11) {
        this.f76686c = str == null ? "" : str;
        this.f76684a = j10;
        this.f76685b = j11;
    }

    public i a(i iVar, String str) {
        String strC = c(str);
        if (iVar != null && strC.equals(iVar.c(str))) {
            long j10 = this.f76685b;
            if (j10 != -1) {
                long j11 = this.f76684a;
                if (j11 + j10 == iVar.f76684a) {
                    long j12 = iVar.f76685b;
                    return new i(strC, j11, j12 != -1 ? j10 + j12 : -1L);
                }
            }
            long j13 = iVar.f76685b;
            if (j13 != -1) {
                long j14 = iVar.f76684a;
                if (j14 + j13 == this.f76684a) {
                    return new i(strC, j14, j10 != -1 ? j13 + j10 : -1L);
                }
            }
        }
        return null;
    }

    public Uri b(String str) {
        return n0.e(str, this.f76686c);
    }

    public String c(String str) {
        return n0.d(str, this.f76686c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f76684a == iVar.f76684a && this.f76685b == iVar.f76685b && this.f76686c.equals(iVar.f76686c);
    }

    public int hashCode() {
        if (this.f76687d == 0) {
            this.f76687d = ((((527 + ((int) this.f76684a)) * 31) + ((int) this.f76685b)) * 31) + this.f76686c.hashCode();
        }
        return this.f76687d;
    }

    public String toString() {
        return "RangedUri(referenceUri=" + this.f76686c + ", start=" + this.f76684a + ", length=" + this.f76685b + ")";
    }
}
