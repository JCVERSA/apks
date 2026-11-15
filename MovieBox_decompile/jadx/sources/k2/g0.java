package k2;

import java.io.EOFException;

public final class g0 {

    private final androidx.media3.common.util.j0 f63589a = new androidx.media3.common.util.j0(10);

    public androidx.media3.common.x a(s sVar, y2.h.a aVar) {
        androidx.media3.common.x xVarE = null;
        int i10 = 0;
        while (true) {
            try {
                sVar.peekFully(this.f63589a.e(), 0, 10);
                this.f63589a.W(0);
                if (this.f63589a.K() != 4801587) {
                    break;
                }
                this.f63589a.X(3);
                int iG = this.f63589a.G();
                int i11 = iG + 10;
                if (xVarE == null) {
                    byte[] bArr = new byte[i11];
                    System.arraycopy(this.f63589a.e(), 0, bArr, 0, 10);
                    sVar.peekFully(bArr, 10, iG);
                    xVarE = new y2.h(aVar).e(bArr, i11);
                } else {
                    sVar.advancePeekPosition(iG);
                }
                i10 += i11;
            } catch (EOFException unused) {
            }
        }
        sVar.resetPeekPosition();
        sVar.advancePeekPosition(i10);
        return xVarE;
    }
}
