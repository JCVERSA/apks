package androidx.compose.foundation.lazy.layout;

public abstract class c {
    public static final int b(androidx.compose.runtime.collection.b bVar, int i10) {
        int iN = bVar.n() - 1;
        int i11 = 0;
        while (i11 < iN) {
            int i12 = ((iN - i11) / 2) + i11;
            int iB = ((b.a) bVar.m()[i12]).b();
            if (iB == i10) {
                return i12;
            }
            if (iB < i10) {
                i11 = i12 + 1;
                if (i10 < ((b.a) bVar.m()[i11]).b()) {
                    return i12;
                }
            } else {
                iN = i12 - 1;
            }
        }
        return i11;
    }
}
