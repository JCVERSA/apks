package defpackage;

import java.util.Locale;

public final class vwe {
    public static final vwe d = new vwe(1.0f, 1.0f);
    public final float a;
    public final float b;
    public final int c;

    static {
        int i = kfh.a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public vwe(float f, float f2) {
        n7g.d(f > 0.0f);
        n7g.d(f2 > 0.0f);
        this.a = f;
        this.b = f2;
        this.c = Math.round(f * 1000.0f);
    }

    public final long a(long j) {
        return j * ((long) this.c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && vwe.class == obj.getClass()) {
            vwe vweVar = (vwe) obj;
            if (this.a == vweVar.a && this.b == vweVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.a) + 527) * 31) + Float.floatToRawIntBits(this.b);
    }

    public final String toString() {
        Object[] objArr = {Float.valueOf(this.a), Float.valueOf(this.b)};
        int i = kfh.a;
        return String.format(Locale.US, "PlaybackParameters(speed=%.2f, pitch=%.2f)", objArr);
    }
}
