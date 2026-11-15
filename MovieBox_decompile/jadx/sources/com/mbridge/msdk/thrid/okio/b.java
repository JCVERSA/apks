package com.mbridge.msdk.thrid.okio;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import okio.Utf8;

final class b {

    private static final byte[] f37596a = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    private static final byte[] f37597b = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    public static String a(byte[] bArr) {
        return a(bArr, f37596a);
    }

    private static String a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11 += 3) {
            bArr3[i10] = bArr2[(bArr[i11] & 255) >> 2];
            int i12 = i11 + 1;
            bArr3[i10 + 1] = bArr2[((bArr[i11] & 3) << 4) | ((bArr[i12] & 255) >> 4)];
            int i13 = i10 + 3;
            int i14 = (bArr[i12] & 15) << 2;
            int i15 = i11 + 2;
            bArr3[i10 + 2] = bArr2[i14 | ((bArr[i15] & 255) >> 6)];
            i10 += 4;
            bArr3[i13] = bArr2[bArr[i15] & Utf8.REPLACEMENT_BYTE];
        }
        int length2 = bArr.length % 3;
        if (length2 == 1) {
            bArr3[i10] = bArr2[(bArr[length] & 255) >> 2];
            bArr3[i10 + 1] = bArr2[(bArr[length] & 3) << 4];
            bArr3[i10 + 2] = 61;
            bArr3[i10 + 3] = 61;
        } else if (length2 == 2) {
            bArr3[i10] = bArr2[(bArr[length] & 255) >> 2];
            int i16 = (bArr[length] & 3) << 4;
            int i17 = length + 1;
            bArr3[i10 + 1] = bArr2[((bArr[i17] & 255) >> 4) | i16];
            bArr3[i10 + 2] = bArr2[(bArr[i17] & 15) << 2];
            bArr3[i10 + 3] = 61;
        }
        try {
            return new String(bArr3, C.ASCII_NAME);
        } catch (UnsupportedEncodingException e10) {
            throw new AssertionError(e10);
        }
    }
}
