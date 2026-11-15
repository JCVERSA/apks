package defpackage;

import com.hunantv.media.drm.IDrmSession;

public class v40 implements cw0 {
    public static final v40 k = new v40("bike128", 12323, 142, 134, 256, 5, 3, 128);
    public static final v40 l = new v40("bike192", 24659, IDrmSession.ERROR_SESSION_SELECT_DRM_NOT_SUPPORT, 199, 256, 5, 3, 192);
    public static final v40 m = new v40("bike256", 40973, 274, 264, 256, 5, 3, 256);
    public String b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public final int i;
    public r40 j;

    public v40(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.b = str;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.g = i5;
        this.h = i6;
        this.i = i7;
        this.j = new r40(i, i2, i3, i4, i5, i6);
    }

    public String a() {
        return this.b;
    }

    public int b() {
        return (this.c + 7) / 8;
    }
}
