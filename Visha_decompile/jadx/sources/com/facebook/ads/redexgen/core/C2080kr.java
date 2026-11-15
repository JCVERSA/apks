package com.facebook.ads.redexgen.core;

import com.transsion.socket.pkgdata.SocketData;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

public final class C2080kr implements I9 {
    public static byte[] A07;
    public static String[] A08 = {"eVwUBMvHO9uBMhknAGNfZP2yr814WJyE", "k5ILRUABeDXqCwWpN", "hJjZHs3Q8zIp76bYyURn3XwI", "BeESTKEHKjvJbhVudlSNXwxkHuAjvLDZ", "rbeMFWTNNauR3FTC2xnHN2ozIe2oUtV0", "bbPaxRhv7ZvGWrZH", "Yl9CHZRrzKaSrdtxcFsBA9EFbwcoGK5g", "dqSnihCeyqEvBM16"};
    public int A00;
    public int A01;
    public long A02;
    public I8 A03;
    public final byte[] A06 = new byte[8];
    public final ArrayDeque<I6> A05 = new ArrayDeque<>();
    public final IE A04 = new IE();

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 15);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A07 = new byte[]{98, -121, SocketData.CLAZZ_TYPE_URI, 122, -123, SocketData.CLAZZ_TYPE_SEND_PACKAGE, 125, 57, 126, -123, 126, -122, 126, -121, SocketData.CLAZZ_TYPE_ERROR_CODE, 57, SocketData.CLAZZ_TYPE_ERROR_CODE, -110, -119, 126, 57, 91, SocketData.CLAZZ_TYPE_END_SOCKET, -120, 115, 126, 123, 118, 50, 120, 126, SocketData.CLAZZ_TYPE_HEART_BEAT, 115, -122, 50, -123, 123, SocketData.CLAZZ_TYPE_CODE, 119, 76, 50, -78, -41, -33, -54, -43, -46, -51, -119, -46, -41, -35, -50, -48, -50, -37, -119, -36, -46, -29, -50, -93, -119, -61, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -30, -39, -34, -41, -112, -43, -36, -43, -35, -43, -34, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -112, -29, -39, -22, -43, -86, -112};
        if (A08[6].charAt(2) != '9') {
            throw new RuntimeException();
        }
        String[] strArr = A08;
        strArr[0] = "OJtOaz7eyeuGy8JHYC7MsYj9KI0teM8x";
        strArr[4] = "Pthq8qREsbuOKTWUYG3bxj4Nb5ptFAt8";
    }

    static {
        A05();
    }

    private double A00(InterfaceC2101lN interfaceC2101lN, int i) throws IOException {
        long jA02 = A02(interfaceC2101lN, i);
        if (i == 4) {
            return Float.intBitsToFloat((int) jA02);
        }
        return Double.longBitsToDouble(jA02);
    }

    @RequiresNonNull({"processor"})
    private long A01(InterfaceC2101lN interfaceC2101lN) throws IOException {
        interfaceC2101lN.AI1();
        while (true) {
            interfaceC2101lN.AG9(this.A06, 0, 4);
            int iA00 = IE.A00(this.A06[0]);
            if (iA00 != -1 && iA00 <= 4) {
                int iA01 = (int) IE.A01(this.A06, iA00, false);
                if (this.A03.AAN(iA01)) {
                    interfaceC2101lN.AJJ(iA00);
                    return iA01;
                }
            }
            interfaceC2101lN.AJJ(1);
        }
    }

    private long A02(InterfaceC2101lN interfaceC2101lN, int i) throws IOException {
        interfaceC2101lN.readFully(this.A06, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long value = this.A06[i2] & 255;
            j = (j << 8) | value;
        }
        return j;
    }

    public static String A04(InterfaceC2101lN interfaceC2101lN, int i) throws IOException {
        if (i == 0) {
            return A03(0, 0, 32);
        }
        byte[] bArr = new byte[i];
        interfaceC2101lN.readFully(bArr, 0, i);
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        return new String(bArr, 0, i);
    }

    @Override
    public final void AA5(I8 i8) {
        this.A03 = i8;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x011d, code lost:
    
        if (r0 <= 2147483647L) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x011f, code lost:
    
        r12.A03.AJZ(r12.A00, A04(r13, (int) r12.A02));
        r12.A01 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x012f, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0137, code lost:
    
        if (r0 <= 2147483647L) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x015b, code lost:
    
        throw com.facebook.ads.redexgen.core.C05802i.A01(A03(63, 21, 97) + r12.A02, null);
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean AGe(InterfaceC2101lN interfaceC2101lN) throws IOException {
        C3M.A02(this.A03);
        while (true) {
            I6 head = this.A05.peek();
            if (head != null && interfaceC2101lN.A8f() >= head.A01) {
                this.A03.A6F(this.A05.pop().A00);
                return true;
            }
            if (this.A01 == 0) {
                long jA05 = this.A04.A05(interfaceC2101lN, true, false, 4);
                if (jA05 == -2) {
                    jA05 = A01(interfaceC2101lN);
                }
                if (jA05 == -1) {
                    return false;
                }
                this.A00 = (int) jA05;
                this.A01 = 1;
            }
            if (this.A01 == 1) {
                this.A02 = this.A04.A05(interfaceC2101lN, false, true, 8);
                this.A01 = 2;
            }
            int iA7m = this.A03.A7m(this.A00);
            switch (iA7m) {
                case 0:
                    interfaceC2101lN.AJJ((int) this.A02);
                    this.A01 = 0;
                    break;
                case 1:
                    long jA8f = interfaceC2101lN.A8f();
                    this.A05.push(new I6(this.A00, jA8f + this.A02));
                    I8 i8 = this.A03;
                    int i = this.A00;
                    long elementContentPosition = this.A02;
                    i8.AJO(i, jA8f, elementContentPosition);
                    this.A01 = 0;
                    return true;
                case 2:
                    if (this.A02 <= 8) {
                        this.A03.AA9(this.A00, A02(interfaceC2101lN, (int) this.A02));
                        this.A01 = 0;
                        return true;
                    }
                    throw C05802i.A01(A03(41, 22, 90) + this.A02, null);
                case 3:
                    long j = this.A02;
                    if (A08[3].charAt(30) == 'v') {
                        A08[3] = "KnGHYIorNoG22Tvn2zIFMGSlF3FZ2Zej";
                    } else {
                        A08[2] = "fCyqjQ49ueazrn4tXgyzoG1n";
                    }
                    break;
                case 4:
                    this.A03.A4a(this.A00, (int) this.A02, interfaceC2101lN);
                    this.A01 = 0;
                    return true;
                case 5:
                    long j2 = this.A02;
                    if (A08[6].charAt(2) != '9') {
                        throw new RuntimeException();
                    }
                    A08[2] = "D1RmFcc9PuCELhM1k2KVAJs3";
                    if (j2 == 4 || this.A02 == 8) {
                        this.A03.A6S(this.A00, A00(interfaceC2101lN, (int) this.A02));
                        this.A01 = 0;
                        return true;
                    }
                    throw C05802i.A01(A03(21, 20, 3) + this.A02, null);
                default:
                    throw C05802i.A01(A03(0, 21, 10) + iA7m, null);
            }
        }
    }

    @Override
    public final void reset() {
        this.A01 = 0;
        this.A05.clear();
        this.A04.A06();
    }
}
