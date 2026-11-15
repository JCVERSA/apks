package defpackage;

import androidx.media3.common.C;

public final class tfe {
    public final boolean a;
    public final String b;
    public final qae c;
    public final int d;
    public final byte[] e;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:27:0x0051  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public tfe(boolean z, String str, int i, byte[] bArr, int i2, int i3, byte[] bArr2) {
        byte b = 0;
        int i4 = 1;
        n7g.d((i == 0) ^ (bArr2 == null));
        this.a = z;
        this.b = str;
        this.d = i;
        this.e = bArr2;
        if (str != null) {
            switch (str.hashCode()) {
                case 3046605:
                    if (!str.equals(C.CENC_TYPE_cbc1)) {
                        b = -1;
                    } else {
                        b = 2;
                    }
                    break;
                case 3046671:
                    if (!str.equals(C.CENC_TYPE_cbcs)) {
                        b = -1;
                    } else {
                        b = 3;
                    }
                    break;
                case 3049879:
                    if (!str.equals(C.CENC_TYPE_cenc)) {
                        b = -1;
                    }
                    break;
                case 3049895:
                    if (!str.equals(C.CENC_TYPE_cens)) {
                        b = -1;
                    } else {
                        b = 1;
                    }
                    break;
                default:
                    b = -1;
                    break;
            }
            if (b != 0 && b != 1) {
                if (b == 2 || b == 3) {
                    i4 = 2;
                } else {
                    zrg.f("TrackEncryptionBox", "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
                }
            }
        }
        this.c = new qae(i4, bArr, i2, i3);
    }
}
