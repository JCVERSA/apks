package defpackage;

import androidx.media3.exoplayer.RendererCapabilities;
import com.hunantv.media.drm.IDrmSession;
import org.mozilla.classfile.ByteCode;

public class kl4 implements cw0 {
    public static final kl4 p = new kl4("hqc-128", 17669, 46, RendererCapabilities.DECODER_SUPPORT_MASK, 16, 31, 15, 66, 75, 75, 16767881, 4, new int[]{89, 69, 153, 116, 176, 117, 111, 75, 73, 233, 242, 233, 65, 210, 21, 139, 103, ByteCode.LRETURN, 67, 118, 105, 210, ByteCode.FRETURN, 110, 74, 69, 228, 82, 255, 181, 1});
    public static final kl4 q = new kl4("hqc-192", 35851, 56, 640, 24, 33, 16, 100, 114, 114, 16742417, 5, new int[]{45, IDrmSession.ERROR_SESSION_PROVISION_ERROR_KEYID_INVALID, 239, 24, 253, 104, 27, 40, 107, 50, 163, 210, 227, 134, 224, 158, 119, 13, 158, 1, 238, 164, 82, 43, 15, 232, 246, 142, 50, 189, 29, 232, 1});
    public static final kl4 r = new kl4("hqc-256", 57637, 90, 640, 32, 59, 29, 131, 149, 149, 16772367, 5, new int[]{49, 167, 49, 39, 200, 121, 124, 91, 240, 63, 148, 71, 150, 123, 87, 101, 32, IDrmSession.ERROR_SESSION_PROVISION_ERROR_WASABI_ERROR, 159, 71, 201, 115, 97, 210, ByteCode.INVOKEDYNAMIC, 183, 141, IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY, 123, 12, 31, 243, 180, 219, 152, 239, 99, 141, 4, 246, ByteCode.ATHROW, 144, 8, 232, 47, 27, 141, 178, 130, 64, 124, 47, 39, 188, IDrmSession.ERROR_SESSION_PROVISION_ERROR_KEYID_INVALID, 48, 199, 187, 1});
    public final String b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int[] n;
    public gl4 o;

    public kl4(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int[] iArr) {
        this.b = str;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.h = i6;
        this.i = i7;
        this.j = i8;
        this.k = i9;
        this.n = iArr;
        this.g = i5;
        this.l = i10;
        this.m = i11;
        this.o = new gl4(i, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, iArr);
    }

    public String a() {
        return this.b;
    }
}
