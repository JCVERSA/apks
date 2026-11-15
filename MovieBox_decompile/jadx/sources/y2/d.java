package y2;

import java.util.Arrays;
import java.util.Objects;

public final class d extends i {

    public final String f76100b;

    public final boolean f76101c;

    public final boolean f76102d;

    public final String[] f76103e;

    private final i[] f76104f;

    public d(String str, boolean z10, boolean z11, String[] strArr, i[] iVarArr) {
        super("CTOC");
        this.f76100b = str;
        this.f76101c = z10;
        this.f76102d = z11;
        this.f76103e = strArr;
        this.f76104f = iVarArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f76101c == dVar.f76101c && this.f76102d == dVar.f76102d && Objects.equals(this.f76100b, dVar.f76100b) && Arrays.equals(this.f76103e, dVar.f76103e) && Arrays.equals(this.f76104f, dVar.f76104f);
    }

    public int hashCode() {
        int i10 = (((527 + (this.f76101c ? 1 : 0)) * 31) + (this.f76102d ? 1 : 0)) * 31;
        String str = this.f76100b;
        return i10 + (str != null ? str.hashCode() : 0);
    }
}
