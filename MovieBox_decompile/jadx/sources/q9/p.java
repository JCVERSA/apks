package q9;

import com.google.android.exoplayer2.util.s;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.e0;

public final class p {

    public final boolean f69546a;

    public final String f69547b;

    public final e0.a f69548c;

    public final int f69549d;

    public final byte[] f69550e;

    public p(boolean z10, String str, int i10, byte[] bArr, int i11, int i12, byte[] bArr2) {
        com.google.android.exoplayer2.util.a.a((bArr2 == null) ^ (i10 == 0));
        this.f69546a = z10;
        this.f69547b = str;
        this.f69549d = i10;
        this.f69550e = bArr2;
        this.f69548c = new e0.a(a(str), bArr, i11, i12);
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
                s.i("TrackEncryptionBox", "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
            case 2:
            case 3:
                return 1;
        }
    }
}
