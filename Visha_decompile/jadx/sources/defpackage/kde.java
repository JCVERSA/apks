package defpackage;

import java.util.Locale;
import java.util.Objects;

public final class kde {
    public final long a;
    public final long b;
    public final int c;

    public kde(long j, long j2, int i) {
        n7g.d(j < j2);
        this.a = j;
        this.b = j2;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && kde.class == obj.getClass()) {
            kde kdeVar = (kde) obj;
            if (this.a == kdeVar.a && this.b == kdeVar.b && this.c == kdeVar.c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.a), Long.valueOf(this.b), Integer.valueOf(this.c));
    }

    public final String toString() {
        Object[] objArr = {Long.valueOf(this.a), Long.valueOf(this.b), Integer.valueOf(this.c)};
        int i = kfh.a;
        return String.format(Locale.US, "Segment: startTimeMs=%d, endTimeMs=%d, speedDivisor=%d", objArr);
    }
}
