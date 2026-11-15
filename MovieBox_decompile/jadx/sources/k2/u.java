package k2;

import androidx.media3.common.ParserException;
import java.io.EOFException;

public abstract class u {
    public static void a(boolean z10, String str) throws ParserException {
        if (!z10) {
            throw ParserException.createForMalformedContainer(str, null);
        }
    }

    public static boolean b(s sVar, byte[] bArr, int i10, int i11, boolean z10) throws EOFException {
        try {
            return sVar.peekFully(bArr, i10, i11, z10);
        } catch (EOFException e10) {
            if (z10) {
                return false;
            }
            throw e10;
        }
    }

    public static int c(s sVar, byte[] bArr, int i10, int i11) {
        int i12 = 0;
        while (i12 < i11) {
            int iB = sVar.b(bArr, i10 + i12, i11 - i12);
            if (iB == -1) {
                break;
            }
            i12 += iB;
        }
        return i12;
    }

    public static boolean d(s sVar, byte[] bArr, int i10, int i11) {
        try {
            sVar.readFully(bArr, i10, i11);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean e(s sVar, int i10) {
        try {
            sVar.skipFully(i10);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
