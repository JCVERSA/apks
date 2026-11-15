package com.facebook.ads.redexgen.core;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public final class C1549bw extends InputStream {
    public static byte[] A04;
    public MessageDigest A00;
    public final C1609cu A01;
    public final InterfaceC1548bv A02;
    public final FileInputStream A03;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 43);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{-52, -61, -76, -23, -8, -15};
    }

    public C1549bw(C1609cu c1609cu, FileInputStream fileInputStream, InterfaceC1548bv interfaceC1548bv) {
        this.A03 = fileInputStream;
        this.A02 = interfaceC1548bv;
        this.A01 = c1609cu;
        try {
            this.A00 = MessageDigest.getInstance(A00(0, 3, 84));
        } catch (NoSuchAlgorithmException unused) {
            this.A00 = null;
        }
    }

    @Override
    public final int available() throws IOException {
        return this.A03.available();
    }

    @Override
    public final int read() throws IOException {
        byte[] b = new byte[1];
        return read(b);
    }

    @Override
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.A03.read(bArr, i, i2);
        if (this.A00 != null) {
            try {
                if (i3 > 0) {
                    this.A00.update(bArr, i, i3);
                } else if (i3 == -1) {
                    this.A02.A9k(C1341Wo.A05(this.A00.digest()));
                    this.A00 = null;
                }
            } catch (Exception e) {
                this.A00 = null;
                this.A01.A08().ABR(A00(3, 3, 90), AbstractC1248Sv.A13, new C1249Sw(e));
            }
        }
        return i3;
    }

    @Override
    public final long skip(long j) throws IOException {
        int actuallyRead = (int) j;
        byte[] bArr = new byte[1024];
        long j2 = 0;
        while (actuallyRead > 0) {
            int bytesToRead = read(bArr, 0, Math.min(actuallyRead, 1024));
            if (bytesToRead <= 0) {
                break;
            }
            actuallyRead -= bytesToRead;
            j2 += (long) bytesToRead;
        }
        return j2;
    }
}
