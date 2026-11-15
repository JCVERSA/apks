package sd;

import com.google.zxing.ReaderException;

final class v {

    private static final int[] f72034c = {1, 1, 2};

    private final t f72035a = new t();

    private final u f72036b = new u();

    v() {
    }

    com.google.zxing.j a(int i10, kd.a aVar, int i11) {
        int[] iArrN = w.n(aVar, i11, false, f72034c);
        try {
            return this.f72036b.b(i10, aVar, iArrN);
        } catch (ReaderException unused) {
            return this.f72035a.b(i10, aVar, iArrN);
        }
    }
}
