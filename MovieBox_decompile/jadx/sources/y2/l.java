package y2;

import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import java.util.Arrays;

public final class l extends i {

    public final int f76122b;

    public final int f76123c;

    public final int f76124d;

    public final int[] f76125e;

    public final int[] f76126f;

    public l(int i10, int i11, int i12, int[] iArr, int[] iArr2) {
        super(MlltFrame.ID);
        this.f76122b = i10;
        this.f76123c = i11;
        this.f76124d = i12;
        this.f76125e = iArr;
        this.f76126f = iArr2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return this.f76122b == lVar.f76122b && this.f76123c == lVar.f76123c && this.f76124d == lVar.f76124d && Arrays.equals(this.f76125e, lVar.f76125e) && Arrays.equals(this.f76126f, lVar.f76126f);
    }

    public int hashCode() {
        return ((((((((527 + this.f76122b) * 31) + this.f76123c) * 31) + this.f76124d) * 31) + Arrays.hashCode(this.f76125e)) * 31) + Arrays.hashCode(this.f76126f);
    }
}
