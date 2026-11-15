package defpackage;

import com.google.android.exoplayer2.ParserException;
import java.io.EOFException;

public abstract class rk3 {
    public static void a(boolean z, String str) throws ParserException {
        if (!z) {
            throw ParserException.createForMalformedContainer(str, null);
        }
    }

    public static boolean b(pk3 pk3Var, byte[] bArr, int i, int i2, boolean z) throws EOFException {
        try {
            return pk3Var.peekFully(bArr, i, i2, z);
        } catch (EOFException e) {
            if (z) {
                return false;
            }
            throw e;
        }
    }

    public static int c(pk3 pk3Var, byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            int iPeek = pk3Var.peek(bArr, i + i3, i2 - i3);
            if (iPeek == -1) {
                break;
            }
            i3 += iPeek;
        }
        return i3;
    }

    public static boolean d(pk3 pk3Var, byte[] bArr, int i, int i2) {
        try {
            pk3Var.readFully(bArr, i, i2);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean e(pk3 pk3Var, int i) {
        try {
            pk3Var.skipFully(i);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
