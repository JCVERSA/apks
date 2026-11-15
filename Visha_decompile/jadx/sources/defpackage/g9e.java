package defpackage;

import com.google.android.gms.internal.ads.zzaz;
import java.io.EOFException;

public abstract class g9e {
    public static int a(d9e d9eVar, byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            int iG = d9eVar.g(bArr, i + i3, i2 - i3);
            if (iG == -1) {
                break;
            }
            i3 += iG;
        }
        return i3;
    }

    public static void b(boolean z, String str) throws zzaz {
        if (!z) {
            throw zzaz.zza(str, null);
        }
    }

    public static boolean c(d9e d9eVar, byte[] bArr, int i, int i2, boolean z) throws EOFException {
        try {
            return d9eVar.e(bArr, 0, i2, z);
        } catch (EOFException e) {
            if (z) {
                return false;
            }
            throw e;
        }
    }

    public static boolean d(d9e d9eVar, byte[] bArr, int i, int i2) {
        try {
            d9eVar.h(bArr, i, i2);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean e(d9e d9eVar, int i) {
        try {
            d9eVar.f(i);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
