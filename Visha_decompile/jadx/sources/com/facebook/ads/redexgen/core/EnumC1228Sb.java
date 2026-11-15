package com.facebook.ads.redexgen.core;

import com.transsion.socket.pkgdata.SocketData;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;

public enum EnumC1228Sb {
    A08(9000, A00(0, 30, 12)),
    A06(3001, A00(160, 29, 104)),
    A05(3002, A00(125, 35, 75)),
    A07(3003, A00(189, 33, 88)),
    A04(3004, A00(90, 35, 54));

    public static byte[] A02;
    public final int A00;
    public final String A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 15);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{92, -119, 59, -112, -119, -122, -119, SocketData.CLAZZ_TYPE_FILE_BLOCK, -110, -119, 59, SocketData.CLAZZ_TYPE_END_SOCKET, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_FILE_BLOCK, SocketData.CLAZZ_TYPE_ERROR_CODE, 59, SocketData.CLAZZ_TYPE_CONNECT_CHECK, 124, SocketData.CLAZZ_TYPE_FILE, 59, SocketData.CLAZZ_TYPE_FILE_BLOCK, 126, 126, -112, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_END_SOCKET, 127, 73, -66, -69, -50, -69, -68, -69, -51, -65, -39, -66, -65, -58, -65, -50, -65, -105, -108, -89, -108, -107, -108, -90, -104, -78, -100, -95, -90, -104, -91, -89, 126, 123, SocketData.CLAZZ_TYPE_FILE, 123, 124, 123, SocketData.CLAZZ_TYPE_ERROR_CODE, 127, -103, SocketData.CLAZZ_TYPE_ERROR_CODE, 127, -122, 127, 125, SocketData.CLAZZ_TYPE_FILE, 101, 98, 117, 98, 99, 98, 116, 102, SocketData.CLAZZ_TYPE_END_SOCKET, 118, 113, 101, 98, 117, 102, SocketData.CLAZZ_TYPE_STRING, -90, -82, -79, -86, -87, 101, -71, -76, 101, -87, -86, -79, -86, -71, -86, 101, -73, -76, -68, 101, -85, -73, -76, -78, 101, -87, -90, -71, -90, -89, -90, -72, -86, 115, -96, -69, -61, -58, -65, -66, 122, -50, -55, 122, -61, -56, -51, -65, -52, -50, 122, -52, -55, -47, 122, -61, -56, -50, -55, 122, -66, -69, -50, -69, -68, -69, -51, -65, -120, -67, -40, -32, -29, -36, -37, -105, -21, -26, -105, -23, -36, -40, -37, -105, -35, -23, -26, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -105, -37, -40, -21, -40, -39, -40, -22, -36, -91, -83, -56, -48, -45, -52, -53, -121, -37, -42, -121, -36, -41, -53, -56, -37, -52, -121, -39, -42, -34, -121, -48, -43, -121, -53, -56, -37, -56, -55, -56, -38, -52, -107, 107, 100, 97, 100, 101, 109, 100};
    }

    static {
        A01();
    }

    EnumC1228Sb(int i, String str) {
        this.A00 = i;
        this.A01 = str;
    }

    public final int A03() {
        return this.A00;
    }

    public final String A04() {
        return this.A01;
    }
}
