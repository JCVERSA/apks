package app.fast.ssh.util;

import app.fast.ssh.ProtectedFastSSH;
import com.google.common.base.Ascii;
import kotlin.io.encoding.Base64;

public class B64 {
    private static final byte[] b64 = ProtectedFastSSH.s("ㆍ").getBytes();

    public static byte[] fromBase64(byte[] bArr) throws Exception {
        return fromBase64(bArr, 0, bArr.length);
    }

    public static byte[] fromBase64(byte[] bArr, int i, int i2) throws Exception {
        try {
            byte[] bArr2 = new byte[i2];
            int i3 = 0;
            for (int i4 = i; i4 < i + i2; i4 += 4) {
                int i5 = i4 + 1;
                bArr2[i3] = (byte) ((val(bArr[i4]) << 2) | ((val(bArr[i5]) & 48) >>> 4));
                int i6 = i4 + 2;
                if (bArr[i6] == 61) {
                    i3++;
                    break;
                }
                bArr2[i3 + 1] = (byte) (((val(bArr[i5]) & Ascii.SI) << 4) | ((val(bArr[i6]) & 60) >>> 2));
                int i7 = i4 + 3;
                if (bArr[i7] == 61) {
                    i3 += 2;
                    break;
                }
                bArr2[i3 + 2] = (byte) (((val(bArr[i6]) & 3) << 6) | (val(bArr[i7]) & 63));
                i3 += 3;
            }
            byte[] bArr3 = new byte[i3];
            System.arraycopy(bArr2, 0, bArr3, 0, i3);
            return bArr3;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new Exception(ProtectedFastSSH.s("ㆎ"), e);
        }
    }

    public static byte[] toBase64(byte[] bArr) {
        return toBase64(bArr, 0, bArr.length);
    }

    public static byte[] toBase64(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2 * 2];
        int i3 = ((i2 / 3) * 3) + i;
        int i4 = i;
        int i5 = 0;
        while (i4 < i3) {
            int i6 = (bArr[i4] >>> 2) & 63;
            byte[] bArr3 = b64;
            bArr2[i5] = bArr3[i6];
            int i7 = i4 + 1;
            bArr2[i5 + 1] = bArr3[((bArr[i4] & 3) << 4) | ((bArr[i7] >>> 4) & 15)];
            int i8 = i4 + 2;
            int i9 = i5 + 3;
            bArr2[i5 + 2] = bArr3[((bArr[i7] & Ascii.SI) << 2) | ((bArr[i8] >>> 6) & 3)];
            i5 += 4;
            bArr2[i9] = bArr3[bArr[i8] & 63];
            i4 += 3;
        }
        int i10 = (i + i2) - i3;
        if (i10 == 1) {
            int i11 = (bArr[i4] >>> 2) & 63;
            byte[] bArr4 = b64;
            bArr2[i5] = bArr4[i11];
            bArr2[i5 + 1] = bArr4[((bArr[i4] & 3) << 4) & 63];
            int i12 = i5 + 3;
            bArr2[i5 + 2] = Base64.padSymbol;
            i5 += 4;
            bArr2[i12] = Base64.padSymbol;
        } else if (i10 == 2) {
            int i13 = (bArr[i4] >>> 2) & 63;
            byte[] bArr5 = b64;
            bArr2[i5] = bArr5[i13];
            int i14 = (bArr[i4] & 3) << 4;
            int i15 = i4 + 1;
            bArr2[i5 + 1] = bArr5[i14 | ((bArr[i15] >>> 4) & 15)];
            int i16 = i5 + 3;
            bArr2[i5 + 2] = bArr5[((bArr[i15] & Ascii.SI) << 2) & 63];
            i5 += 4;
            bArr2[i16] = Base64.padSymbol;
        }
        byte[] bArr6 = new byte[i5];
        System.arraycopy(bArr2, 0, bArr6, 0, i5);
        return bArr6;
    }

    private static byte val(byte b) {
        if (b == 61) {
            return (byte) 0;
        }
        int i = 0;
        while (true) {
            byte[] bArr = b64;
            if (i >= bArr.length) {
                return (byte) 0;
            }
            if (b == bArr[i]) {
                return (byte) i;
            }
            i++;
        }
    }
}
