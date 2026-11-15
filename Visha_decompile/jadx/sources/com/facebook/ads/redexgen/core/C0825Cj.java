package com.facebook.ads.redexgen.core;

import com.transsion.socket.pkgdata.SocketData;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

public final class C0825Cj {
    public static String[] A07 = {"1TUPUvqjuckMieKxy618dXqeho2I2nXO", "1tw", "Rv8BHxt03y9lIrpcW4kHhbfWsqmFKBVK", "r8Px", "D2vXeeTjlCXB4Odv", "hN", "uuD40", "TpLNmCJV5wG1YwTXf3toM93vl9iWeWk7"};
    public long A00;
    public C2154mG A01;
    public C2154mG A02;
    public C2154mG A03;
    public final int A04;
    public final C4J A05 = new C4J(32);
    public final EO A06;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C2154mG A04(C2154mG c2154mG, C2234nY c2234nY, C0827Cl c0827Cl, C4J c4j) {
        int iA0M;
        long j = c0827Cl.A01;
        c4j.A0d(1);
        C2154mG c2154mGA03 = A03(c2154mG, j, c4j.A0l(), 1);
        long j2 = j + 1;
        byte b = c4j.A0l()[0];
        boolean z = (b & SocketData.CLAZZ_TYPE_END_SOCKET) != 0;
        int i = b & 127;
        C5N c5n = c2234nY.A05;
        if (c5n.A04 == null) {
            c5n.A04 = new byte[16];
        } else {
            Arrays.fill(c5n.A04, (byte) 0);
        }
        C2154mG c2154mGA04 = A03(c2154mGA03, j2, c5n.A04, i);
        long j3 = j2 + ((long) i);
        if (z) {
            c4j.A0d(2);
            c2154mGA04 = A03(c2154mGA04, j3, c4j.A0l(), 2);
            j3 += 2;
            iA0M = c4j.A0M();
        } else {
            iA0M = 1;
            if (A07[7].charAt(5) == 'i') {
                throw new RuntimeException();
            }
            A07[7] = "Hpyz1f8ALnZx1iP9R6alck8MxH3P54oK";
        }
        int[] iArr = c5n.A06;
        if (iArr == null || iArr.length < iA0M) {
            iArr = new int[iA0M];
        }
        int[] iArr2 = c5n.A07;
        if (iArr2 == null || iArr2.length < iA0M) {
            iArr2 = new int[iA0M];
        }
        if (z) {
            int i2 = iA0M * 6;
            c4j.A0d(i2);
            c2154mGA04 = A03(c2154mGA04, j3, c4j.A0l(), i2);
            j3 += (long) i2;
            c4j.A0f(0);
            for (int i3 = 0; i3 < iA0M; i3++) {
                iArr[i3] = c4j.A0M();
                iArr2[i3] = c4j.A0L();
            }
        } else {
            iArr[0] = 0;
            iArr2[0] = c0827Cl.A00 - ((int) (j3 - c0827Cl.A01));
        }
        C0945Gz c0945Gz = (C0945Gz) AbstractC06244a.A0f(c0827Cl.A02);
        c5n.A02(iA0M, iArr, iArr2, c0945Gz.A03, c5n.A04, c0945Gz.A01, c0945Gz.A02, c0945Gz.A00);
        int i4 = (int) (j3 - c0827Cl.A01);
        c0827Cl.A01 += (long) i4;
        if (A07[0].charAt(1) == 'T') {
            A07[0] = "nTpP9ibfF3cbwjVbkTA4UIhNPpZui5fl";
            c0827Cl.A00 -= i4;
            return c2154mGA04;
        }
        String[] strArr = A07;
        strArr[3] = "b8i1";
        strArr[6] = "bRWrT";
        c0827Cl.A00 -= i4;
        return c2154mGA04;
    }

    public C0825Cj(EO eo) {
        this.A06 = eo;
        this.A04 = eo.A8A();
        this.A01 = new C2154mG(0L, this.A04);
        this.A02 = this.A01;
        this.A03 = this.A01;
    }

    private int A00(int i) {
        if (this.A03.A03 == null) {
            this.A03.A03(this.A06.A41(), new C2154mG(this.A03.A00, this.A04));
        }
        return Math.min(i, (int) (this.A03.A00 - this.A00));
    }

    public static C2154mG A01(C2154mG c2154mG, long j) {
        while (j >= c2154mG.A00) {
            c2154mG = c2154mG.A02;
        }
        return c2154mG;
    }

    public static C2154mG A02(C2154mG c2154mG, long j, ByteBuffer byteBuffer, int i) {
        C2154mG c2154mGA01 = A01(c2154mG, j);
        while (i > 0) {
            int remaining = (int) (c2154mGA01.A00 - j);
            int iMin = Math.min(i, remaining);
            byte[] bArr = c2154mGA01.A03.A01;
            int remaining2 = c2154mGA01.A00(j);
            byteBuffer.put(bArr, remaining2, iMin);
            i -= iMin;
            j += (long) iMin;
            if (j == c2154mGA01.A00) {
                c2154mGA01 = c2154mGA01.A02;
            }
        }
        return c2154mGA01;
    }

    public static C2154mG A03(C2154mG c2154mG, long j, byte[] bArr, int i) {
        C2154mG c2154mGA01 = A01(c2154mG, j);
        int i2 = i;
        while (i2 > 0) {
            int iMin = Math.min(i2, (int) (c2154mGA01.A00 - j));
            byte[] bArr2 = c2154mGA01.A03.A01;
            int toCopy = c2154mGA01.A00(j);
            int remaining = i - i2;
            System.arraycopy(bArr2, toCopy, bArr, remaining, iMin);
            i2 -= iMin;
            j += (long) iMin;
            if (j == c2154mGA01.A00) {
                c2154mGA01 = c2154mGA01.A02;
            }
        }
        return c2154mGA01;
    }

    public static C2154mG A05(C2154mG c2154mG, C2234nY c2234nY, C0827Cl c0827Cl, C4J c4j) {
        if (c2234nY.A0E()) {
            c2154mG = A04(c2154mG, c2234nY, c0827Cl, c4j);
        }
        if (c2234nY.A03()) {
            c4j.A0d(4);
            C2154mG c2154mGA03 = A03(c2154mG, c0827Cl.A01, c4j.A0l(), 4);
            int iA0L = c4j.A0L();
            c0827Cl.A01 += 4;
            c0827Cl.A00 -= 4;
            c2234nY.A0C(iA0L);
            C2154mG c2154mGA02 = A02(c2154mGA03, c0827Cl.A01, c2234nY.A02, iA0L);
            c0827Cl.A01 += (long) iA0L;
            c0827Cl.A00 -= iA0L;
            c2234nY.A0D(c0827Cl.A00);
            return A02(c2154mGA02, c0827Cl.A01, c2234nY.A03, c0827Cl.A00);
        }
        c2234nY.A0C(c0827Cl.A00);
        return A02(c2154mG, c0827Cl.A01, c2234nY.A02, c0827Cl.A00);
    }

    private void A06(int i) {
        this.A00 += (long) i;
        if (this.A00 == this.A03.A00) {
            this.A03 = this.A03.A02;
        }
    }

    private void A07(C2154mG c2154mG) {
        if (c2154mG.A03 == null) {
            return;
        }
        this.A06.AGu(c2154mG);
        c2154mG.A01();
    }

    public final int A08(AnonymousClass20 anonymousClass20, int i, boolean z) throws IOException {
        int i2 = anonymousClass20.read(this.A03.A03.A01, this.A03.A00(this.A00), A00(i));
        if (i2 == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        A06(i2);
        return i2;
    }

    public final long A09() {
        return this.A00;
    }

    public final void A0A() {
        A07(this.A01);
        this.A01.A02(0L, this.A04);
        this.A02 = this.A01;
        this.A03 = this.A01;
        this.A00 = 0L;
        this.A06.AJi();
    }

    public final void A0B() {
        this.A02 = this.A01;
    }

    public final void A0C(long j) {
        if (j == -1) {
            return;
        }
        while (j >= this.A01.A00) {
            this.A06.AGt(this.A01.A03);
            this.A01 = this.A01.A01();
        }
        long j2 = this.A02.A01;
        long j3 = this.A01.A01;
        String[] strArr = A07;
        if (strArr[3].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A07;
        strArr2[3] = "kTcq";
        strArr2[6] = "Dj6YZ";
        if (j2 < j3) {
            this.A02 = this.A01;
        }
    }

    public final void A0D(C4J c4j, int i) {
        while (i > 0) {
            int iA00 = A00(i);
            byte[] bArr = this.A03.A03.A01;
            int bytesAppended = this.A03.A00(this.A00);
            c4j.A0k(bArr, bytesAppended, iA00);
            i -= iA00;
            A06(iA00);
        }
    }

    public final void A0E(C2234nY c2234nY, C0827Cl c0827Cl) {
        A05(this.A02, c2234nY, c0827Cl, this.A05);
    }

    public final void A0F(C2234nY c2234nY, C0827Cl c0827Cl) {
        this.A02 = A05(this.A02, c2234nY, c0827Cl, this.A05);
    }
}
