package e3;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import k2.s0;

public final class u {

    public final boolean f59414a;

    public final String f59415b;

    public final s0.a f59416c;

    public final int f59417d;

    public final byte[] f59418e;

    public u(boolean z10, String str, int i10, byte[] bArr, int i11, int i12, byte[] bArr2) {
        androidx.media3.common.util.a.a((bArr2 == null) ^ (i10 == 0));
        this.f59414a = z10;
        this.f59415b = str;
        this.f59417d = i10;
        this.f59418e = bArr2;
        this.f59416c = new s0.a(a(str), bArr, i11, i12);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static int a(String str) {
        if (str == null) {
            return 1;
        }
        byte b10 = -1;
        switch (str.hashCode()) {
            case 3046605:
                if (str.equals(C.CENC_TYPE_cbc1)) {
                    b10 = 0;
                }
                break;
            case 3046671:
                if (str.equals(C.CENC_TYPE_cbcs)) {
                    b10 = 1;
                }
                break;
            case 3049879:
                if (str.equals(C.CENC_TYPE_cenc)) {
                    b10 = 2;
                }
                break;
            case 3049895:
                if (str.equals(C.CENC_TYPE_cens)) {
                    b10 = 3;
                }
                break;
        }
        switch (b10) {
            case 0:
            case 1:
                return 2;
            default:
                androidx.media3.common.util.u.h("TrackEncryptionBox", "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
            case 2:
            case 3:
                return 1;
        }
    }
}
