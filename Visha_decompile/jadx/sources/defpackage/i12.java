package defpackage;

import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;

public final class i12 implements pk3 {
    public final ms1 b;
    public final long c;
    public long d;
    public int f;
    public int g;
    public byte[] e = new byte[65536];
    public final byte[] a = new byte[4096];

    static {
        pi3.a("goog.exo.extractor");
    }

    public i12(ms1 ms1Var, long j, long j2) {
        this.b = ms1Var;
        this.d = j;
        this.c = j2;
    }

    @Override
    public boolean advancePeekPosition(int i, boolean z) throws EOFException, InterruptedIOException {
        d(i);
        int iF = this.g - this.f;
        while (iF < i) {
            iF = f(this.e, this.f, i, iF, z);
            if (iF == -1) {
                return false;
            }
            this.g = this.f + iF;
        }
        this.f += i;
        return true;
    }

    public final void c(int i) {
        if (i != -1) {
            this.d += (long) i;
        }
    }

    public final void d(int i) {
        int i2 = this.f + i;
        byte[] bArr = this.e;
        if (i2 > bArr.length) {
            this.e = Arrays.copyOf(this.e, blb.p(bArr.length * 2, 65536 + i2, i2 + 524288));
        }
    }

    public final int e(byte[] bArr, int i, int i2) {
        int i3 = this.g;
        if (i3 == 0) {
            return 0;
        }
        int iMin = Math.min(i3, i2);
        System.arraycopy(this.e, 0, bArr, i, iMin);
        i(iMin);
        return iMin;
    }

    public final int f(byte[] bArr, int i, int i2, int i3, boolean z) throws EOFException, InterruptedIOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int i4 = this.b.read(bArr, i + i3, i2 - i3);
        if (i4 != -1) {
            return i3 + i4;
        }
        if (i3 == 0 && z) {
            return -1;
        }
        throw new EOFException();
    }

    public final int g(int i) {
        int iMin = Math.min(this.g, i);
        i(iMin);
        return iMin;
    }

    @Override
    public long getLength() {
        return this.c;
    }

    @Override
    public long getPeekPosition() {
        return this.d + ((long) this.f);
    }

    @Override
    public long getPosition() {
        return this.d;
    }

    public boolean h(int i, boolean z) throws EOFException, InterruptedIOException {
        int iG = g(i);
        while (iG < i && iG != -1) {
            iG = f(this.a, -iG, Math.min(i, this.a.length + iG), iG, z);
        }
        c(iG);
        return iG != -1;
    }

    public final void i(int i) {
        int i2 = this.g - i;
        this.g = i2;
        this.f = 0;
        byte[] bArr = this.e;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.e = bArr2;
    }

    @Override
    public int peek(byte[] bArr, int i, int i2) throws EOFException, InterruptedIOException {
        int iMin;
        d(i2);
        int i3 = this.g;
        int i4 = this.f;
        int i5 = i3 - i4;
        if (i5 == 0) {
            iMin = f(this.e, i4, i2, 0, true);
            if (iMin == -1) {
                return -1;
            }
            this.g += iMin;
        } else {
            iMin = Math.min(i2, i5);
        }
        System.arraycopy(this.e, this.f, bArr, i, iMin);
        this.f += iMin;
        return iMin;
    }

    @Override
    public boolean peekFully(byte[] bArr, int i, int i2, boolean z) {
        if (!advancePeekPosition(i2, z)) {
            return false;
        }
        System.arraycopy(this.e, this.f - i2, bArr, i, i2);
        return true;
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws EOFException, InterruptedIOException {
        int iE = e(bArr, i, i2);
        if (iE == 0) {
            iE = f(bArr, i, i2, 0, true);
        }
        c(iE);
        return iE;
    }

    @Override
    public boolean readFully(byte[] bArr, int i, int i2, boolean z) throws EOFException, InterruptedIOException {
        int iE = e(bArr, i, i2);
        while (iE < i2 && iE != -1) {
            iE = f(bArr, i, i2, iE, z);
        }
        c(iE);
        return iE != -1;
    }

    @Override
    public void resetPeekPosition() {
        this.f = 0;
    }

    @Override
    public int skip(int i) throws EOFException, InterruptedIOException {
        int iG = g(i);
        if (iG == 0) {
            byte[] bArr = this.a;
            iG = f(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        c(iG);
        return iG;
    }

    @Override
    public void skipFully(int i) throws EOFException, InterruptedIOException {
        h(i, false);
    }

    @Override
    public void peekFully(byte[] bArr, int i, int i2) {
        peekFully(bArr, i, i2, false);
    }

    @Override
    public void readFully(byte[] bArr, int i, int i2) throws EOFException, InterruptedIOException {
        readFully(bArr, i, i2, false);
    }

    @Override
    public void advancePeekPosition(int i) throws EOFException, InterruptedIOException {
        advancePeekPosition(i, false);
    }
}
