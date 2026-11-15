package z1;

import android.net.Uri;
import androidx.media3.common.util.r0;

public final class i {

    public final long f76551a;

    public final long f76552b;

    private final String f76553c;

    private int f76554d;

    public i(String str, long j10, long j11) {
        this.f76553c = str == null ? "" : str;
        this.f76551a = j10;
        this.f76552b = j11;
    }

    public i a(i iVar, String str) {
        String strC = c(str);
        if (iVar != null && strC.equals(iVar.c(str))) {
            long j10 = this.f76552b;
            if (j10 != -1) {
                long j11 = this.f76551a;
                if (j11 + j10 == iVar.f76551a) {
                    long j12 = iVar.f76552b;
                    return new i(strC, j11, j12 != -1 ? j10 + j12 : -1L);
                }
            }
            long j13 = iVar.f76552b;
            if (j13 != -1) {
                long j14 = iVar.f76551a;
                if (j14 + j13 == this.f76551a) {
                    return new i(strC, j14, j10 != -1 ? j13 + j10 : -1L);
                }
            }
        }
        return null;
    }

    public Uri b(String str) {
        return r0.f(str, this.f76553c);
    }

    public String c(String str) {
        return r0.e(str, this.f76553c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f76551a == iVar.f76551a && this.f76552b == iVar.f76552b && this.f76553c.equals(iVar.f76553c);
    }

    public int hashCode() {
        if (this.f76554d == 0) {
            this.f76554d = ((((527 + ((int) this.f76551a)) * 31) + ((int) this.f76552b)) * 31) + this.f76553c.hashCode();
        }
        return this.f76554d;
    }

    public String toString() {
        return "RangedUri(referenceUri=" + this.f76553c + ", start=" + this.f76551a + ", length=" + this.f76552b + ")";
    }
}
