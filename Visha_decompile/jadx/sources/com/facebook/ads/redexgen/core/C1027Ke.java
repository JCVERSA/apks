package com.facebook.ads.redexgen.core;

import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;
import okio.Utf8;

public final class C1027Ke {
    public static byte[] A05;
    public int A00;
    public String A01;
    public final int A02;
    public final int A03;
    public final String A04;

    static {
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 16);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A05 = new byte[]{-81, 126, 124, -123, 124, -119, 120, SocketData.CLAZZ_TYPE_STRING, 124, 101, 124, SocketData.CLAZZ_TYPE_FILE, 96, 123, Utf8.REPLACEMENT_BYTE, 64, 55, -124, SocketData.CLAZZ_TYPE_CODE, SocketData.CLAZZ_TYPE_FILE_BLOCK, SocketData.CLAZZ_TYPE_STRING, 55, 121, 124, 55, 122, 120, SocketData.CLAZZ_TYPE_CONNECT_CHECK, SocketData.CLAZZ_TYPE_CONNECT_CHECK, 124, 123, 55, 121, 124, 125, -122, -119, 124, 55, -119, 124, SocketData.CLAZZ_TYPE_STRING, -119, SocketData.CLAZZ_TYPE_END_SOCKET, 124, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_END_SOCKET, -123, 126, 55, SocketData.CLAZZ_TYPE_END_SOCKET, 123, SocketData.CLAZZ_TYPE_FILE_BLOCK, 69};
    }

    public C1027Ke(int i, int i2) {
        this(Integer.MIN_VALUE, i, i2);
    }

    public C1027Ke(int i, int i2, int i3) {
        String strA00 = A00(0, 0, 0);
        this.A04 = i != Integer.MIN_VALUE ? i + A00(0, 1, 112) : strA00;
        this.A02 = i2;
        this.A03 = i3;
        this.A00 = Integer.MIN_VALUE;
        this.A01 = strA00;
    }

    private void A01() {
        if (this.A00 != Integer.MIN_VALUE) {
        } else {
            throw new IllegalStateException(A00(1, 53, 7));
        }
    }

    public final int A03() {
        A01();
        return this.A00;
    }

    public final String A04() {
        A01();
        return this.A01;
    }

    public final void A05() {
        this.A00 = this.A00 == Integer.MIN_VALUE ? this.A02 : this.A00 + this.A03;
        this.A01 = this.A04 + this.A00;
    }
}
