package i9;

import com.google.android.exoplayer2.n1;
import com.google.android.exoplayer2.util.p0;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;

public final class f implements m {

    private final com.google.android.exoplayer2.upstream.g f61910b;

    private final long f61911c;

    private long f61912d;

    private int f61914f;

    private int f61915g;

    private byte[] f61913e = new byte[65536];

    private final byte[] f61909a = new byte[4096];

    static {
        n1.a("goog.exo.extractor");
    }

    public f(com.google.android.exoplayer2.upstream.g gVar, long j10, long j11) {
        this.f61910b = gVar;
        this.f61912d = j10;
        this.f61911c = j11;
    }

    private void f(int i10) {
        if (i10 != -1) {
            this.f61912d += (long) i10;
        }
    }

    private void h(int i10) {
        int i11 = this.f61914f + i10;
        byte[] bArr = this.f61913e;
        if (i11 > bArr.length) {
            this.f61913e = Arrays.copyOf(this.f61913e, p0.q(bArr.length * 2, 65536 + i11, i11 + 524288));
        }
    }

    private int i(byte[] bArr, int i10, int i11) {
        int i12 = this.f61915g;
        if (i12 == 0) {
            return 0;
        }
        int iMin = Math.min(i12, i11);
        System.arraycopy(this.f61913e, 0, bArr, i10, iMin);
        m(iMin);
        return iMin;
    }

    private int j(byte[] bArr, int i10, int i11, int i12, boolean z10) throws EOFException, InterruptedIOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int i13 = this.f61910b.read(bArr, i10 + i12, i11 - i12);
        if (i13 != -1) {
            return i12 + i13;
        }
        if (i12 == 0 && z10) {
            return -1;
        }
        throw new EOFException();
    }

    private int k(int i10) {
        int iMin = Math.min(this.f61915g, i10);
        m(iMin);
        return iMin;
    }

    private void m(int i10) {
        int i11 = this.f61915g - i10;
        this.f61915g = i11;
        this.f61914f = 0;
        byte[] bArr = this.f61913e;
        byte[] bArr2 = i11 < bArr.length - 524288 ? new byte[65536 + i11] : bArr;
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        this.f61913e = bArr2;
    }

    @Override
    public boolean advancePeekPosition(int i10, boolean z10) throws EOFException, InterruptedIOException {
        h(i10);
        int iJ = this.f61915g - this.f61914f;
        while (iJ < i10) {
            iJ = j(this.f61913e, this.f61914f, i10, iJ, z10);
            if (iJ == -1) {
                return false;
            }
            this.f61915g = this.f61914f + iJ;
        }
        this.f61914f += i10;
        return true;
    }

    @Override
    public int b(byte[] bArr, int i10, int i11) throws EOFException, InterruptedIOException {
        int iMin;
        h(i11);
        int i12 = this.f61915g;
        int i13 = this.f61914f;
        int i14 = i12 - i13;
        if (i14 == 0) {
            iMin = j(this.f61913e, i13, i11, 0, true);
            if (iMin == -1) {
                return -1;
            }
            this.f61915g += iMin;
        } else {
            iMin = Math.min(i11, i14);
        }
        System.arraycopy(this.f61913e, this.f61914f, bArr, i10, iMin);
        this.f61914f += iMin;
        return iMin;
    }

    @Override
    public long getLength() {
        return this.f61911c;
    }

    @Override
    public long getPeekPosition() {
        return this.f61912d + ((long) this.f61914f);
    }

    @Override
    public long getPosition() {
        return this.f61912d;
    }

    public boolean l(int i10, boolean z10) throws EOFException, InterruptedIOException {
        int iK = k(i10);
        while (iK < i10 && iK != -1) {
            iK = j(this.f61909a, -iK, Math.min(i10, this.f61909a.length + iK), iK, z10);
        }
        f(iK);
        return iK != -1;
    }

    @Override
    public boolean peekFully(byte[] bArr, int i10, int i11, boolean z10) {
        if (!advancePeekPosition(i11, z10)) {
            return false;
        }
        System.arraycopy(this.f61913e, this.f61914f - i11, bArr, i10, i11);
        return true;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws EOFException, InterruptedIOException {
        int i12 = i(bArr, i10, i11);
        if (i12 == 0) {
            i12 = j(bArr, i10, i11, 0, true);
        }
        f(i12);
        return i12;
    }

    @Override
    public boolean readFully(byte[] bArr, int i10, int i11, boolean z10) throws EOFException, InterruptedIOException {
        int i12 = i(bArr, i10, i11);
        while (i12 < i11 && i12 != -1) {
            i12 = j(bArr, i10, i11, i12, z10);
        }
        f(i12);
        return i12 != -1;
    }

    @Override
    public void resetPeekPosition() {
        this.f61914f = 0;
    }

    @Override
    public int skip(int i10) throws EOFException, InterruptedIOException {
        int iK = k(i10);
        if (iK == 0) {
            byte[] bArr = this.f61909a;
            iK = j(bArr, 0, Math.min(i10, bArr.length), 0, true);
        }
        f(iK);
        return iK;
    }

    @Override
    public void skipFully(int i10) throws EOFException, InterruptedIOException {
        l(i10, false);
    }

    @Override
    public void peekFully(byte[] bArr, int i10, int i11) {
        peekFully(bArr, i10, i11, false);
    }

    @Override
    public void readFully(byte[] bArr, int i10, int i11) throws EOFException, InterruptedIOException {
        readFully(bArr, i10, i11, false);
    }

    @Override
    public void advancePeekPosition(int i10) throws EOFException, InterruptedIOException {
        advancePeekPosition(i10, false);
    }
}
