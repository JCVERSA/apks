package com.google.android.gms.internal.ads;

import defpackage.cui;
import defpackage.rti;
import defpackage.xri;
import java.io.IOException;
import java.io.OutputStream;

public final class ga extends xri {
    public final OutputStream h;

    public ga(OutputStream outputStream, int i) {
        super(i);
        if (outputStream == null) {
            throw new NullPointerException("out");
        }
        this.h = outputStream;
    }

    @Override
    public final void A(long j) throws IOException {
        I(10);
        G(j);
    }

    public final void H() throws IOException {
        this.h.write(this.d, 0, this.f);
        this.f = 0;
    }

    public final void I(int i) throws IOException {
        if (this.e - this.f < i) {
            H();
        }
    }

    public final void J(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.e;
        int i4 = this.f;
        int i5 = i3 - i4;
        if (i5 >= i2) {
            System.arraycopy(bArr, i, this.d, i4, i2);
            this.f += i2;
            this.g += i2;
            return;
        }
        byte[] bArr2 = this.d;
        System.arraycopy(bArr, i, bArr2, i4, i5);
        int i6 = i + i5;
        this.f = i3;
        this.g += i5;
        H();
        int i7 = i2 - i5;
        if (i7 <= i3) {
            System.arraycopy(bArr, i6, bArr2, 0, i7);
            this.f = i7;
        } else {
            this.h.write(bArr, i6, i7);
        }
        this.g += i7;
    }

    public final void K(String str) throws IOException {
        int iE;
        try {
            int length = str.length() * 3;
            int iE2 = ha.e(length);
            int i = iE2 + length;
            int i2 = this.e;
            if (i > i2) {
                byte[] bArr = new byte[length];
                int iD = ra.d(str, bArr, 0, length);
                y(iD);
                J(bArr, 0, iD);
                return;
            }
            if (i > i2 - this.f) {
                H();
            }
            int iE3 = ha.e(str.length());
            int i3 = this.f;
            try {
                if (iE3 == iE2) {
                    int i4 = i3 + iE3;
                    this.f = i4;
                    int iD2 = ra.d(str, this.d, i4, i2 - i4);
                    this.f = i3;
                    iE = (iD2 - i3) - iE3;
                    F(iE);
                    this.f = iD2;
                } else {
                    iE = ra.e(str);
                    F(iE);
                    this.f = ra.d(str, this.d, this.f, iE);
                }
                this.g += iE;
            } catch (zzhaw e) {
                this.g -= this.f - i3;
                this.f = i3;
                throw e;
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new zzgwx(e2);
            }
        } catch (zzhaw e3) {
            h(str, e3);
        }
    }

    @Override
    public final void a(byte[] bArr, int i, int i2) throws IOException {
        J(bArr, i, i2);
    }

    @Override
    public final void j() throws IOException {
        if (this.f > 0) {
            H();
        }
    }

    @Override
    public final void k(byte b) throws IOException {
        if (this.f == this.e) {
            H();
        }
        C(b);
    }

    @Override
    public final void l(int i, boolean z) throws IOException {
        I(11);
        F(i << 3);
        C(z ? (byte) 1 : (byte) 0);
    }

    @Override
    public final void m(int i, zzgwn zzgwnVar) throws IOException {
        y((i << 3) | 2);
        y(zzgwnVar.zzd());
        zzgwnVar.zzo(this);
    }

    @Override
    public final void o(int i, int i2) throws IOException {
        I(14);
        F((i << 3) | 5);
        D(i2);
    }

    @Override
    public final void p(int i) throws IOException {
        I(4);
        D(i);
    }

    @Override
    public final void q(int i, long j) throws IOException {
        I(18);
        F((i << 3) | 1);
        E(j);
    }

    @Override
    public final void r(long j) throws IOException {
        I(8);
        E(j);
    }

    @Override
    public final void s(int i, int i2) throws IOException {
        I(20);
        F(i << 3);
        if (i2 >= 0) {
            F(i2);
        } else {
            G(i2);
        }
    }

    @Override
    public final void t(int i) throws IOException {
        if (i >= 0) {
            y(i);
        } else {
            A(i);
        }
    }

    @Override
    public final void u(int i, rti rtiVar, cui cuiVar) throws IOException {
        y((i << 3) | 2);
        y(((aa) rtiVar).f(cuiVar));
        cuiVar.c(rtiVar, this.a);
    }

    @Override
    public final void v(int i, String str) throws IOException {
        y((i << 3) | 2);
        K(str);
    }

    @Override
    public final void w(int i, int i2) throws IOException {
        y((i << 3) | i2);
    }

    @Override
    public final void x(int i, int i2) throws IOException {
        I(20);
        F(i << 3);
        F(i2);
    }

    @Override
    public final void y(int i) throws IOException {
        I(5);
        F(i);
    }

    @Override
    public final void z(int i, long j) throws IOException {
        I(20);
        F(i << 3);
        G(j);
    }
}
