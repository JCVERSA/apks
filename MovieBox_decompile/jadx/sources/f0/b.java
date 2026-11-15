package f0;

import androidx.collection.s;

public final class b {

    private final float f59877a;

    private final float f59878b;

    private final long f59879c;

    private final int f59880d;

    public b(float f10, float f11, long j10, int i10) {
        this.f59877a = f10;
        this.f59878b = f11;
        this.f59879c = j10;
        this.f59880d = i10;
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (bVar.f59877a == this.f59877a && bVar.f59878b == this.f59878b && bVar.f59879c == this.f59879c && bVar.f59880d == this.f59880d) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((((Float.floatToIntBits(this.f59877a) * 31) + Float.floatToIntBits(this.f59878b)) * 31) + s.a(this.f59879c)) * 31) + this.f59880d;
    }

    public String toString() {
        return "RotaryScrollEvent(verticalScrollPixels=" + this.f59877a + ",horizontalScrollPixels=" + this.f59878b + ",uptimeMillis=" + this.f59879c + ",deviceId=" + this.f59880d + ')';
    }
}
