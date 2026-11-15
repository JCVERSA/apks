package defpackage;

import com.google.android.exoplayer2.metadata.Metadata;
import java.io.EOFException;

public final class mx4 {
    public final qw7 a = new qw7(10);

    public Metadata a(pk3 pk3Var, lx4.a aVar) {
        Metadata metadataE = null;
        int i = 0;
        while (true) {
            try {
                pk3Var.peekFully(this.a.d(), 0, 10);
                this.a.O(0);
                if (this.a.F() != 4801587) {
                    break;
                }
                this.a.P(3);
                int iB = this.a.B();
                int i2 = iB + 10;
                if (metadataE == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.a.d(), 0, bArr, 0, 10);
                    pk3Var.peekFully(bArr, 10, iB);
                    metadataE = new lx4(aVar).e(bArr, i2);
                } else {
                    pk3Var.advancePeekPosition(iB);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
        pk3Var.resetPeekPosition();
        pk3Var.advancePeekPosition(i);
        return metadataE;
    }
}
