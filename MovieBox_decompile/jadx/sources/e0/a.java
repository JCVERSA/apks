package e0;

import androidx.collection.s;

public final class a {

    private long f59224a;

    private float f59225b;

    public a(long j10, float f10) {
        this.f59224a = j10;
        this.f59225b = f10;
    }

    public final float a() {
        return this.f59225b;
    }

    public final long b() {
        return this.f59224a;
    }

    public final void c(float f10) {
        this.f59225b = f10;
    }

    public final void d(long j10) {
        this.f59224a = j10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f59224a == aVar.f59224a && Float.compare(this.f59225b, aVar.f59225b) == 0;
    }

    public int hashCode() {
        return (s.a(this.f59224a) * 31) + Float.floatToIntBits(this.f59225b);
    }

    public String toString() {
        return "DataPointAtTime(time=" + this.f59224a + ", dataPoint=" + this.f59225b + ')';
    }
}
