package defpackage;

import androidx.media3.common.C;

public final class vua {
    public final boolean a;
    public final String b;
    public final fva.a c;
    public final int d;
    public final byte[] e;

    public vua(boolean z, String str, int i, byte[] bArr, int i2, int i3, byte[] bArr2) {
        zi.a((bArr2 == null) ^ (i == 0));
        this.a = z;
        this.b = str;
        this.d = i;
        this.e = bArr2;
        this.c = new fva.a(a(str), bArr, i2, i3);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static int a(String str) {
        if (str == null) {
            return 1;
        }
        byte b = -1;
        switch (str.hashCode()) {
            case 3046605:
                if (str.equals(C.CENC_TYPE_cbc1)) {
                    b = 0;
                }
                break;
            case 3046671:
                if (str.equals(C.CENC_TYPE_cbcs)) {
                    b = 1;
                }
                break;
            case 3049879:
                if (str.equals(C.CENC_TYPE_cenc)) {
                    b = 2;
                }
                break;
            case 3049895:
                if (str.equals(C.CENC_TYPE_cens)) {
                    b = 3;
                }
                break;
        }
        switch (b) {
            case 0:
            case 1:
                return 2;
            default:
                op5.i("TrackEncryptionBox", "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
            case 2:
            case 3:
                return 1;
        }
    }
}
