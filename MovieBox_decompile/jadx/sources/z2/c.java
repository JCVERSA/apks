package z2;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import com.google.common.collect.h2;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;

public final class c implements x.a {

    public final List f76602a;

    public static final class a {

        public static final Comparator f76603d = new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return c.a.b((c.a) obj, (c.a) obj2);
            }
        };

        public final long f76604a;

        public final long f76605b;

        public final int f76606c;

        public a(long j10, long j11, int i10) {
            androidx.media3.common.util.a.a(j10 < j11);
            this.f76604a = j10;
            this.f76605b = j11;
            this.f76606c = i10;
        }

        public static int b(a aVar, a aVar2) {
            return h2.k().e(aVar.f76604a, aVar2.f76604a).e(aVar.f76605b, aVar2.f76605b).d(aVar.f76606c, aVar2.f76606c).j();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f76604a == aVar.f76604a && this.f76605b == aVar.f76605b && this.f76606c == aVar.f76606c;
        }

        public int hashCode() {
            return Objects.hash(Long.valueOf(this.f76604a), Long.valueOf(this.f76605b), Integer.valueOf(this.f76606c));
        }

        public String toString() {
            return a1.G("Segment: startTimeMs=%d, endTimeMs=%d, speedDivisor=%d", Long.valueOf(this.f76604a), Long.valueOf(this.f76605b), Integer.valueOf(this.f76606c));
        }
    }

    public c(List list) {
        this.f76602a = list;
        androidx.media3.common.util.a.a(!b(list));
    }

    private static boolean b(List list) {
        if (list.isEmpty()) {
            return false;
        }
        long j10 = ((a) list.get(0)).f76605b;
        for (int i10 = 1; i10 < list.size(); i10++) {
            if (((a) list.get(i10)).f76604a < j10) {
                return true;
            }
            j10 = ((a) list.get(i10)).f76605b;
        }
        return false;
    }

    @Override
    public void a(v.b bVar) {
        w.c(this, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return this.f76602a.equals(((c) obj).f76602a);
    }

    @Override
    public byte[] getWrappedMetadataBytes() {
        return w.a(this);
    }

    @Override
    public r getWrappedMetadataFormat() {
        return w.b(this);
    }

    public int hashCode() {
        return this.f76602a.hashCode();
    }

    public String toString() {
        return "SlowMotion: segments=" + this.f76602a;
    }
}
