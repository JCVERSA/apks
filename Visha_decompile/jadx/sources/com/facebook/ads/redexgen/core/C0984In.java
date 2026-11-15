package com.facebook.ads.redexgen.core;

import androidx.media3.exoplayer.upstream.CmcdData;
import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public final class C0984In {
    public static byte[] A05;
    public static String[] A06 = {"8Hrr", CmcdData.STREAMING_FORMAT_HLS, "0Fdee0wg4hsenc5DHvlvwY", "0vqFlF7HyuYg3TUYlVTMC9xVo", "FyWFMrZuY5MlICM", "PN9pA9f0QUy", "hrYl81FOJTp7gpX67gLzFhurxBV", "ujvsBGrB8Jik"};
    public final int A00;
    public final C0945Gz A01;
    public final String A02;
    public final boolean A03;
    public final byte[] A04;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 64);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A05 = new byte[]{40, 33, 47, 78, 124, 124, 122, 98, 102, 97, 104, 47, 78, 74, 92, 34, 76, 91, 93, 47, 108, 125, 118, 127, 123, 96, 47, 98, 96, 107, 106, 33, 38, 0, 19, 17, 25, 55, 28, 17, 0, ByteCode.T_LONG, 2, 6, 27, 29, 28, 48, 29, 10, 95, 100, 121, 127, 122, 122, 101, 120, 126, 111, 110, 42, 122, 120, 101, 126, 111, 105, 126, 99, 101, 100, 42, 121, 105, 98, 111, 103, 111, 42, 126, 115, 122, 111, 42, 45, 115, 114, 115, 33, 41, 40, 41, 57, 60, 58, 49, 60, 120, 126, 117, 104};
    }

    static {
        A02();
    }

    public C0984In(boolean z, String str, int i, byte[] bArr, int i2, int i3, byte[] bArr2) {
        C3M.A07((bArr2 == null) ^ (i == 0));
        this.A03 = z;
        this.A02 = str;
        this.A00 = i;
        this.A04 = bArr2;
        this.A01 = new C0945Gz(A00(str), bArr, i2, i3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:25:0x00a5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:26:0x00a6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x000c  */
    /* JADX WARN: Code duplicated, block: B:9:0x0010  */
    public static int A00(String str) {
        byte b;
        if (str == null) {
            return 1;
        }
        switch (str.hashCode()) {
            case 3046605:
                if (str.equals(A01(86, 4, 80))) {
                    b = 2;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                        return 1;
                    case 2:
                    case 3:
                        return 2;
                    default:
                        AnonymousClass44.A07(A01(32, 18, 50), A01(50, 36, 74) + str + A01(0, 32, 79));
                        return 1;
                }
            case 3046671:
                if (str.equals(A01(90, 4, 10))) {
                    b = 3;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                        return 1;
                    case 2:
                    case 3:
                        return 2;
                    default:
                        AnonymousClass44.A07(A01(32, 18, 50), A01(50, 36, 74) + str + A01(0, 32, 79));
                        return 1;
                }
            case 3049879:
                if (str.equals(A01(94, 4, 31))) {
                    b = 0;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                        return 1;
                    case 2:
                    case 3:
                        return 2;
                    default:
                        AnonymousClass44.A07(A01(32, 18, 50), A01(50, 36, 74) + str + A01(0, 32, 79));
                        return 1;
                }
            case 3049895:
                String[] strArr = A06;
                if (strArr[6].length() != strArr[1].length()) {
                    A06[5] = "5D1VNf4Gt9Q";
                    if (str.equals(A01(98, 4, 91))) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                    switch (b) {
                        case 0:
                        case 1:
                            return 1;
                        case 2:
                        case 3:
                            return 2;
                        default:
                            AnonymousClass44.A07(A01(32, 18, 50), A01(50, 36, 74) + str + A01(0, 32, 79));
                            return 1;
                    }
                }
                throw new RuntimeException();
            default:
                b = -1;
                switch (b) {
                    case 0:
                    case 1:
                        return 1;
                    case 2:
                    case 3:
                        return 2;
                    default:
                        AnonymousClass44.A07(A01(32, 18, 50), A01(50, 36, 74) + str + A01(0, 32, 79));
                        return 1;
                }
        }
    }
}
