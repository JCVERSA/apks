package defpackage;

import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;

public final class m8e implements d9e {
    public final k8j b;
    public final long c;
    public long d;
    public int f;
    public int g;
    public byte[] e = new byte[65536];
    public final byte[] a = new byte[4096];

    static {
        sme.b("media3.extractor");
    }

    public m8e(k8j k8jVar, long j, long j2) {
        this.b = k8jVar;
        this.d = j;
        this.c = j2;
    }

    @Override
    public final int a(int i) throws EOFException, InterruptedIOException {
        int iO = o(1);
        if (iO == 0) {
            iO = n(this.a, 0, Math.min(1, 4096), 0, true);
        }
        p(iO);
        return iO;
    }

    @Override
    public final int b(byte[] bArr, int i, int i2) throws EOFException, InterruptedIOException {
        int iM = m(bArr, i, i2);
        if (iM == 0) {
            iM = n(bArr, i, i2, 0, true);
        }
        p(iM);
        return iM;
    }

    @Override
    public final boolean d(byte[] bArr, int i, int i2, boolean z) throws EOFException, InterruptedIOException {
        int iM = m(bArr, i, i2);
        while (iM < i2 && iM != -1) {
            iM = n(bArr, i, i2, iM, z);
        }
        p(iM);
        return iM != -1;
    }

    @Override
    public final boolean e(byte[] bArr, int i, int i2, boolean z) {
        if (!k(i2, z)) {
            return false;
        }
        System.arraycopy(this.e, this.f - i2, bArr, i, i2);
        return true;
    }

    @Override
    public final void f(int i) throws EOFException, InterruptedIOException {
        l(i, false);
    }

    @Override
    public final int g(byte[] bArr, int i, int i2) throws EOFException, InterruptedIOException {
        int iMin;
        q(i2);
        int i3 = this.g;
        int i4 = this.f;
        int i5 = i3 - i4;
        if (i5 == 0) {
            iMin = n(this.e, i4, i2, 0, true);
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
    public final void h(byte[] bArr, int i, int i2) throws EOFException, InterruptedIOException {
        d(bArr, i, i2, false);
    }

    @Override
    public final void i(byte[] bArr, int i, int i2) {
        e(bArr, i, i2, false);
    }

    public final boolean k(int i, boolean z) throws EOFException, InterruptedIOException {
        q(i);
        int iN = this.g - this.f;
        while (iN < i) {
            iN = n(this.e, this.f, i, iN, z);
            if (iN == -1) {
                return false;
            }
            this.g = this.f + iN;
        }
        this.f += i;
        return true;
    }

    public final boolean l(int i, boolean z) throws EOFException, InterruptedIOException {
        int iO = o(i);
        while (iO < i && iO != -1) {
            iO = n(this.a, -iO, Math.min(i, iO + 4096), iO, false);
        }
        p(iO);
        return iO != -1;
    }

    public final int m(byte[] bArr, int i, int i2) {
        int i3 = this.g;
        if (i3 == 0) {
            return 0;
        }
        int iMin = Math.min(i3, i2);
        System.arraycopy(this.e, 0, bArr, i, iMin);
        r(iMin);
        return iMin;
    }

    public final int n(byte[] bArr, int i, int i2, int i3, boolean z) throws EOFException, InterruptedIOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException();
        }
        int iB = this.b.b(bArr, i + i3, i2 - i3);
        if (iB != -1) {
            return i3 + iB;
        }
        if (i3 == 0 && z) {
            return -1;
        }
        throw new EOFException();
    }

    public final int o(int i) {
        int iMin = Math.min(this.g, i);
        r(iMin);
        return iMin;
    }

    public final void p(int i) {
        if (i != -1) {
            this.d += (long) i;
        }
    }

    public final void q(int i) {
        int i2 = this.f + i;
        int length = this.e.length;
        if (i2 > length) {
            int i3 = kfh.a;
            this.e = Arrays.copyOf(this.e, Math.max(65536 + i2, Math.min(length + length, i2 + 524288)));
        }
    }

    public final void r(int i) {
        int i2 = this.g - i;
        this.g = i2;
        this.f = 0;
        byte[] bArr = this.e;
        byte[] bArr2 = i2 < bArr.length + (-524288) ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.e = bArr2;
    }

    @Override
    public final long zzd() {
        return this.c;
    }

    @Override
    public final long zze() {
        return this.d + ((long) this.f);
    }

    @Override
    public final long zzf() {
        return this.d;
    }

    @Override
    public final void zzg(int i) throws EOFException, InterruptedIOException {
        k(i, false);
    }

    @Override
    public final void zzj() {
        this.f = 0;
    }
}
