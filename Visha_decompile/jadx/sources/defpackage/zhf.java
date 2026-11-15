package defpackage;

import com.hunantv.media.drm.IDrmSession;

public final class zhf {
    public static final zhf d = new zhf(0, 0, 1.0f);
    public final int a;
    public final int b;
    public final float c;

    static {
        int i = kfh.a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(3, 36);
    }

    public zhf(int i, int i2, float f) {
        this.a = i;
        this.b = i2;
        this.c = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zhf) {
            zhf zhfVar = (zhf) obj;
            if (this.a == zhfVar.a && this.b == zhfVar.b && this.c == zhfVar.c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.a + IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY) * 31) + this.b) * 31) + Float.floatToRawIntBits(this.c);
    }
}
