package i9;

import com.google.android.exoplayer2.metadata.Metadata;
import java.io.EOFException;

public final class y {

    private final com.google.android.exoplayer2.util.d0 f61992a = new com.google.android.exoplayer2.util.d0(10);

    public Metadata a(m mVar, com.google.android.exoplayer2.metadata.id3.b.a aVar) {
        Metadata metadataE = null;
        int i10 = 0;
        while (true) {
            try {
                mVar.peekFully(this.f61992a.d(), 0, 10);
                this.f61992a.P(0);
                if (this.f61992a.G() != 4801587) {
                    break;
                }
                this.f61992a.Q(3);
                int iC = this.f61992a.C();
                int i11 = iC + 10;
                if (metadataE == null) {
                    byte[] bArr = new byte[i11];
                    System.arraycopy(this.f61992a.d(), 0, bArr, 0, 10);
                    mVar.peekFully(bArr, 10, iC);
                    metadataE = new com.google.android.exoplayer2.metadata.id3.b(aVar).e(bArr, i11);
                } else {
                    mVar.advancePeekPosition(iC);
                }
                i10 += i11;
            } catch (EOFException unused) {
            }
        }
        mVar.resetPeekPosition();
        mVar.advancePeekPosition(i10);
        return metadataE;
    }
}
