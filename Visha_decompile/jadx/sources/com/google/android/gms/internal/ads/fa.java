package com.google.android.gms.internal.ads;

import defpackage.cui;
import defpackage.rti;
import defpackage.vui;
import java.io.IOException;
import java.util.Locale;

public final class fa extends ha {
    public final byte[] d;
    public final int e;
    public int f;

    public fa(byte[] bArr, int i, int i2) {
        super(null);
        int length = bArr.length;
        if (((length - i2) | i2) < 0) {
            throw new IllegalArgumentException(String.format(Locale.US, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i2)));
        }
        this.d = bArr;
        this.f = 0;
        this.e = i2;
    }

    @Override
    public final void A(long j) throws zzgwx {
        int i;
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i2 = this.f;
        if (!ha.c || this.e - i2 < 10) {
            while ((j & (-128)) != 0) {
                try {
                    int i3 = i2 + 1;
                    try {
                        this.d[i2] = (byte) (((int) j) | 128);
                        j >>>= 7;
                        i2 = i3;
                    } catch (IndexOutOfBoundsException e) {
                        e = e;
                        i2 = i3;
                        indexOutOfBoundsException = e;
                        throw new zzgwx(i2, this.e, 1, indexOutOfBoundsException);
                    }
                } catch (IndexOutOfBoundsException e2) {
                    e = e2;
                }
            }
            i = i2 + 1;
            try {
                this.d[i2] = (byte) j;
            } catch (IndexOutOfBoundsException e3) {
                indexOutOfBoundsException = e3;
                i2 = i;
                throw new zzgwx(i2, this.e, 1, indexOutOfBoundsException);
            }
        } else {
            while ((j & (-128)) != 0) {
                vui.y(this.d, i2, (byte) (((int) j) | 128));
                j >>>= 7;
                i2++;
            }
            i = i2 + 1;
            vui.y(this.d, i2, (byte) j);
        }
        this.f = i;
    }

    public final void C(byte[] bArr, int i, int i2) throws zzgwx {
        try {
            System.arraycopy(bArr, i, this.d, this.f, i2);
            this.f += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new zzgwx(this.f, this.e, i2, e);
        }
    }

    public final void D(String str) throws zzgwx {
        int i = this.f;
        try {
            int iE = ha.e(str.length() * 3);
            int iE2 = ha.e(str.length());
            if (iE2 != iE) {
                y(ra.e(str));
                byte[] bArr = this.d;
                int i2 = this.f;
                this.f = ra.d(str, bArr, i2, this.e - i2);
                return;
            }
            int i3 = i + iE2;
            this.f = i3;
            int iD = ra.d(str, this.d, i3, this.e - i3);
            this.f = i;
            y((iD - i) - iE2);
            this.f = iD;
        } catch (zzhaw e) {
            this.f = i;
            h(str, e);
        } catch (IndexOutOfBoundsException e2) {
            throw new zzgwx(e2);
        }
    }

    @Override
    public final void a(byte[] bArr, int i, int i2) throws zzgwx {
        C(bArr, i, i2);
    }

    @Override
    public final void j() {
    }

    @Override
    public final void k(byte b) throws zzgwx {
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i = this.f;
        try {
            int i2 = i + 1;
            try {
                this.d[i] = b;
                this.f = i2;
            } catch (IndexOutOfBoundsException e) {
                indexOutOfBoundsException = e;
                i = i2;
                throw new zzgwx(i, this.e, 1, indexOutOfBoundsException);
            }
        } catch (IndexOutOfBoundsException e2) {
            indexOutOfBoundsException = e2;
        }
    }

    @Override
    public final void l(int i, boolean z) throws zzgwx {
        y(i << 3);
        k(z ? (byte) 1 : (byte) 0);
    }

    @Override
    public final void m(int i, zzgwn zzgwnVar) throws IOException {
        y((i << 3) | 2);
        y(zzgwnVar.zzd());
        zzgwnVar.zzo(this);
    }

    @Override
    public final int n() {
        return this.e - this.f;
    }

    @Override
    public final void o(int i, int i2) throws zzgwx {
        y((i << 3) | 5);
        p(i2);
    }

    @Override
    public final void p(int i) throws zzgwx {
        int i2 = this.f;
        try {
            byte[] bArr = this.d;
            bArr[i2] = (byte) i;
            bArr[i2 + 1] = (byte) (i >> 8);
            bArr[i2 + 2] = (byte) (i >> 16);
            bArr[i2 + 3] = (byte) (i >> 24);
            this.f = i2 + 4;
        } catch (IndexOutOfBoundsException e) {
            throw new zzgwx(i2, this.e, 4, e);
        }
    }

    @Override
    public final void q(int i, long j) throws zzgwx {
        y((i << 3) | 1);
        r(j);
    }

    @Override
    public final void r(long j) throws zzgwx {
        int i = this.f;
        try {
            byte[] bArr = this.d;
            bArr[i] = (byte) j;
            bArr[i + 1] = (byte) (j >> 8);
            bArr[i + 2] = (byte) (j >> 16);
            bArr[i + 3] = (byte) (j >> 24);
            bArr[i + 4] = (byte) (j >> 32);
            bArr[i + 5] = (byte) (j >> 40);
            bArr[i + 6] = (byte) (j >> 48);
            bArr[i + 7] = (byte) (j >> 56);
            this.f = i + 8;
        } catch (IndexOutOfBoundsException e) {
            throw new zzgwx(i, this.e, 8, e);
        }
    }

    @Override
    public final void s(int i, int i2) throws zzgwx {
        y(i << 3);
        t(i2);
    }

    @Override
    public final void t(int i) throws zzgwx {
        if (i >= 0) {
            y(i);
        } else {
            A(i);
        }
    }

    @Override
    public final void u(int i, rti rtiVar, cui cuiVar) throws zzgwx {
        y((i << 3) | 2);
        y(((aa) rtiVar).f(cuiVar));
        cuiVar.c(rtiVar, this.a);
    }

    @Override
    public final void v(int i, String str) throws zzgwx {
        y((i << 3) | 2);
        D(str);
    }

    @Override
    public final void w(int i, int i2) throws zzgwx {
        y((i << 3) | i2);
    }

    @Override
    public final void x(int i, int i2) throws zzgwx {
        y(i << 3);
        y(i2);
    }

    @Override
    public final void y(int i) throws zzgwx {
        int i2;
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i3 = this.f;
        while ((i & (-128)) != 0) {
            try {
                i2 = i3 + 1;
                try {
                    this.d[i3] = (byte) (i | 128);
                    i >>>= 7;
                    i3 = i2;
                } catch (IndexOutOfBoundsException e) {
                    indexOutOfBoundsException = e;
                    i3 = i2;
                    throw new zzgwx(i3, this.e, 1, indexOutOfBoundsException);
                }
            } catch (IndexOutOfBoundsException e2) {
                indexOutOfBoundsException = e2;
                throw new zzgwx(i3, this.e, 1, indexOutOfBoundsException);
            }
        }
        i2 = i3 + 1;
        this.d[i3] = (byte) i;
        this.f = i2;
    }

    @Override
    public final void z(int i, long j) throws zzgwx {
        y(i << 3);
        A(j);
    }
}
