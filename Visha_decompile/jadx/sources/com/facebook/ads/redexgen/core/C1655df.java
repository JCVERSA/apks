package com.facebook.ads.redexgen.core;

import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;

public final class C1655df extends InputStream {
    public int A00;
    public long A01;
    public InterfaceC2247nl A02;
    public final Uri A03;
    public final InterfaceC06464w A04;
    public final C1609cu A05;
    public final String A06;

    public C1655df(C1609cu c1609cu, Uri uri, InterfaceC06464w interfaceC06464w) throws IOException {
        this.A05 = c1609cu;
        this.A04 = interfaceC06464w;
        this.A03 = uri;
        this.A06 = C1694eJ.A09(this.A05, this.A03);
        A00(0);
    }

    private void A00(int i) throws IOException {
        if (this.A02 != null) {
            this.A02.close();
        }
        this.A02 = this.A04.A5A();
        this.A01 = (int) this.A02.AFy(new AnonymousClass56(this.A03, i, -1L, this.A06));
    }

    @Override
    public final int available() {
        return ((int) this.A01) - this.A00;
    }

    @Override
    public final void close() throws IOException {
        this.A02.close();
    }

    @Override
    public final int read() throws IOException {
        byte[] b = new byte[1];
        return read(b);
    }

    @Override
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.A02.read(bArr, i, i2);
        int read = this.A00;
        this.A00 = read + i3;
        return i3;
    }

    @Override
    public final long skip(long j) throws IOException {
        long j2 = this.A01 - ((long) this.A00);
        if (j2 <= 0) {
            return 0L;
        }
        if (j > j2) {
            j = j2;
        }
        this.A00 = (int) (((long) this.A00) + j);
        A00(this.A00);
        return j;
    }
}
