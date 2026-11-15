package y2;

import java.util.Arrays;
import java.util.Objects;

public final class c extends i {

    public final String f76094b;

    public final int f76095c;

    public final int f76096d;

    public final long f76097e;

    public final long f76098f;

    private final i[] f76099g;

    public c(String str, int i10, int i11, long j10, long j11, i[] iVarArr) {
        super("CHAP");
        this.f76094b = str;
        this.f76095c = i10;
        this.f76096d = i11;
        this.f76097e = j10;
        this.f76098f = j11;
        this.f76099g = iVarArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f76095c == cVar.f76095c && this.f76096d == cVar.f76096d && this.f76097e == cVar.f76097e && this.f76098f == cVar.f76098f && Objects.equals(this.f76094b, cVar.f76094b) && Arrays.equals(this.f76099g, cVar.f76099g);
    }

    public int hashCode() {
        int i10 = (((((((527 + this.f76095c) * 31) + this.f76096d) * 31) + ((int) this.f76097e)) * 31) + ((int) this.f76098f)) * 31;
        String str = this.f76094b;
        return i10 + (str != null ? str.hashCode() : 0);
    }
}
