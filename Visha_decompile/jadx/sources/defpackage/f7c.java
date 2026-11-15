package defpackage;

import android.os.Bundle;
import com.google.android.exoplayer2.e;
import com.hunantv.media.drm.IDrmSession;

public final class f7c implements e {
    public static final f7c f = new f7c(0, 0);
    public static final e.a g = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return f7c.c(bundle);
        }
    };
    public final int b;
    public final int c;
    public final int d;
    public final float e;

    public f7c(int i, int i2) {
        this(i, i2, 0, 1.0f);
    }

    private static String b(int i) {
        return Integer.toString(i, 36);
    }

    public static f7c c(Bundle bundle) {
        return new f7c(bundle.getInt(b(0), 0), bundle.getInt(b(1), 0), bundle.getInt(b(2), 0), bundle.getFloat(b(3), 1.0f));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f7c)) {
            return false;
        }
        f7c f7cVar = (f7c) obj;
        return this.b == f7cVar.b && this.c == f7cVar.c && this.d == f7cVar.d && this.e == f7cVar.e;
    }

    public int hashCode() {
        return ((((((IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY + this.b) * 31) + this.c) * 31) + this.d) * 31) + Float.floatToRawIntBits(this.e);
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), this.b);
        bundle.putInt(b(1), this.c);
        bundle.putInt(b(2), this.d);
        bundle.putFloat(b(3), this.e);
        return bundle;
    }

    public f7c(int i, int i2, int i3, float f2) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = f2;
    }
}
