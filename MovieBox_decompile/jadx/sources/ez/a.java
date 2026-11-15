package ez;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.UnsupportedEncodingException;

public abstract class a {
    public static boolean a(byte[] bArr, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (bArr[i11] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean b(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13, boolean z10) {
        int i14 = i11 < i13 ? i11 : i13;
        for (int i15 = 0; i15 < i14; i15++) {
            if (bArr[i10 + i15] != bArr2[i12 + i15]) {
                return false;
            }
        }
        if (i11 == i13) {
            return true;
        }
        if (!z10) {
            return false;
        }
        if (i11 > i13) {
            while (i13 < i11) {
                if (bArr[i10 + i13] != 0) {
                    return false;
                }
                i13++;
            }
        } else {
            while (i11 < i13) {
                if (bArr2[i12 + i11] != 0) {
                    return false;
                }
                i11++;
            }
        }
        return true;
    }

    public static boolean c(String str, byte[] bArr, int i10, int i11) {
        try {
            byte[] bytes = str.getBytes(C.ASCII_NAME);
            return b(bytes, 0, bytes.length, bArr, i10, i11, false);
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        }
    }
}
