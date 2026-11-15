package com.google.android.gms.internal.ads;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;

public final class ba extends OutputStream {
    public static final byte[] g = new byte[0];
    public int d;
    public int f;
    public final int b = 128;
    public final ArrayList c = new ArrayList();
    public byte[] e = new byte[128];

    public ba(int i) {
    }

    public final synchronized int b() {
        return this.d + this.f;
    }

    public final synchronized zzgwn d() {
        try {
            int i = this.f;
            byte[] bArr = this.e;
            if (i >= bArr.length) {
                this.c.add(new zzgwk(this.e));
                this.e = g;
            } else if (i > 0) {
                this.c.add(new zzgwk(Arrays.copyOf(bArr, i)));
            }
            this.d += this.f;
            this.f = 0;
        } catch (Throwable th) {
            throw th;
        }
        return zzgwn.zzu(this.c);
    }

    public final void e(int i) {
        this.c.add(new zzgwk(this.e));
        int length = this.d + this.e.length;
        this.d = length;
        this.e = new byte[Math.max(this.b, Math.max(i, length >>> 1))];
        this.f = 0;
    }

    public final String toString() {
        return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(b()));
    }

    @Override
    public final synchronized void write(int i) {
        try {
            if (this.f == this.e.length) {
                e(1);
            }
            byte[] bArr = this.e;
            int i2 = this.f;
            this.f = i2 + 1;
            bArr[i2] = (byte) i;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final synchronized void write(byte[] bArr, int i, int i2) {
        byte[] bArr2 = this.e;
        int length = bArr2.length;
        int i3 = this.f;
        int i4 = length - i3;
        if (i2 <= i4) {
            System.arraycopy(bArr, i, bArr2, i3, i2);
            this.f += i2;
            return;
        }
        System.arraycopy(bArr, i, bArr2, i3, i4);
        int i5 = i2 - i4;
        e(i5);
        System.arraycopy(bArr, i + i4, this.e, 0, i5);
        this.f = i5;
    }
}
