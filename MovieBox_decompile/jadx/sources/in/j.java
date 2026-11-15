package in;

import androidx.collection.s;

public final class j {

    private final long f62273a;

    public j(long j10) {
        this.f62273a = j10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof j) && this.f62273a == ((j) obj).f62273a;
    }

    public int hashCode() {
        return s.a(this.f62273a);
    }

    public String toString() {
        return "VideoConfig(cacheByte=" + this.f62273a + ")";
    }
}
