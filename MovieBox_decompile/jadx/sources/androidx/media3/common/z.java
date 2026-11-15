package androidx.media3.common;

import androidx.media3.common.util.a1;

public final class z {

    public static final z f10251d = new z(1.0f);

    private static final String f10252e = a1.C0(0);

    private static final String f10253f = a1.C0(1);

    public final float f10254a;

    public final float f10255b;

    private final int f10256c;

    public z(float f10) {
        this(f10, 1.0f);
    }

    public long a(long j10) {
        return j10 * ((long) this.f10256c);
    }

    public z b(float f10) {
        return new z(f10, this.f10255b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || z.class != obj.getClass()) {
            return false;
        }
        z zVar = (z) obj;
        return this.f10254a == zVar.f10254a && this.f10255b == zVar.f10255b;
    }

    public int hashCode() {
        return ((527 + Float.floatToRawIntBits(this.f10254a)) * 31) + Float.floatToRawIntBits(this.f10255b);
    }

    public String toString() {
        return a1.G("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f10254a), Float.valueOf(this.f10255b));
    }

    public z(float f10, float f11) {
        androidx.media3.common.util.a.a(f10 > 0.0f);
        androidx.media3.common.util.a.a(f11 > 0.0f);
        this.f10254a = f10;
        this.f10255b = f11;
        this.f10256c = Math.round(f10 * 1000.0f);
    }
}
