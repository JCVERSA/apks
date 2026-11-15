package k2;

import androidx.media3.common.util.a1;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;

public final class j implements s {

    private final androidx.media3.common.j f63621b;

    private final long f63622c;

    private long f63623d;

    private int f63625f;

    private int f63626g;

    private byte[] f63624e = new byte[65536];

    private final byte[] f63620a = new byte[4096];

    static {
        androidx.media3.common.u.a("media3.extractor");
    }

    public j(androidx.media3.common.j jVar, long j10, long j11) {
        this.f63621b = jVar;
        this.f63623d = j10;
        this.f63622c = j11;
    }

    private void d(int i10) {
        if (i10 != -1) {
            this.f63623d += (long) i10;
        }
    }

    private void e(int i10) {
        int i11 = this.f63625f + i10;
        byte[] bArr = this.f63624e;
        if (i11 > bArr.length) {
            this.f63624e = Arrays.copyOf(this.f63624e, a1.p(bArr.length * 2, 65536 + i11, i11 + 524288));
        }
    }

    private int f(byte[] bArr, int i10, int i11) {
        int i12 = this.f63626g;
        if (i12 == 0) {
            return 0;
        }
        int iMin = Math.min(i12, i11);
        System.arraycopy(this.f63624e, 0, bArr, i10, iMin);
        j(iMin);
        return iMin;
    }

    private int g(byte[] bArr, int i10, int i11, int i12, boolean z10) throws EOFException, InterruptedIOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int i13 = this.f63621b.read(bArr, i10 + i12, i11 - i12);
        if (i13 != -1) {
            return i12 + i13;
        }
        if (i12 == 0 && z10) {
            return -1;
        }
        throw new EOFException();
    }

    private int h(int i10) {
        int iMin = Math.min(this.f63626g, i10);
        j(iMin);
        return iMin;
    }

    private void j(int i10) {
        int i11 = this.f63626g - i10;
        this.f63626g = i11;
        this.f63625f = 0;
        byte[] bArr = this.f63624e;
        byte[] bArr2 = i11 < bArr.length - 524288 ? new byte[65536 + i11] : bArr;
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        this.f63624e = bArr2;
    }

    @Override
    public boolean advancePeekPosition(int i10, boolean z10) throws EOFException, InterruptedIOException {
        e(i10);
        int iG = this.f63626g - this.f63625f;
        while (iG < i10) {
            iG = g(this.f63624e, this.f63625f, i10, iG, z10);
            if (iG == -1) {
                return false;
            }
            this.f63626g = this.f63625f + iG;
        }
        this.f63625f += i10;
        return true;
    }

    @Override
    public int b(byte[] bArr, int i10, int i11) throws EOFException, InterruptedIOException {
        int iMin;
        e(i11);
        int i12 = this.f63626g;
        int i13 = this.f63625f;
        int i14 = i12 - i13;
        if (i14 == 0) {
            iMin = g(this.f63624e, i13, i11, 0, true);
            if (iMin == -1) {
                return -1;
            }
            this.f63626g += iMin;
        } else {
            iMin = Math.min(i11, i14);
        }
        System.arraycopy(this.f63624e, this.f63625f, bArr, i10, iMin);
        this.f63625f += iMin;
        return iMin;
    }

    @Override
    public long getLength() {
        return this.f63622c;
    }

    @Override
    public long getPeekPosition() {
        return this.f63623d + ((long) this.f63625f);
    }

    @Override
    public long getPosition() {
        return this.f63623d;
    }

    public boolean i(int i10, boolean z10) throws EOFException, InterruptedIOException {
        int iH = h(i10);
        while (iH < i10 && iH != -1) {
            iH = g(this.f63620a, -iH, Math.min(i10, this.f63620a.length + iH), iH, z10);
        }
        d(iH);
        return iH != -1;
    }

    @Override
    public boolean peekFully(byte[] bArr, int i10, int i11, boolean z10) {
        if (!advancePeekPosition(i11, z10)) {
            return false;
        }
        System.arraycopy(this.f63624e, this.f63625f - i11, bArr, i10, i11);
        return true;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws EOFException, InterruptedIOException {
        int iF = f(bArr, i10, i11);
        if (iF == 0) {
            iF = g(bArr, i10, i11, 0, true);
        }
        d(iF);
        return iF;
    }

    @Override
    public boolean readFully(byte[] bArr, int i10, int i11, boolean z10) throws EOFException, InterruptedIOException {
        int iF = f(bArr, i10, i11);
        while (iF < i11 && iF != -1) {
            iF = g(bArr, i10, i11, iF, z10);
        }
        d(iF);
        return iF != -1;
    }

    @Override
    public void resetPeekPosition() {
        this.f63625f = 0;
    }

    @Override
    public int skip(int i10) throws EOFException, InterruptedIOException {
        int iH = h(i10);
        if (iH == 0) {
            byte[] bArr = this.f63620a;
            iH = g(bArr, 0, Math.min(i10, bArr.length), 0, true);
        }
        d(iH);
        return iH;
    }

    @Override
    public void skipFully(int i10) throws EOFException, InterruptedIOException {
        i(i10, false);
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
