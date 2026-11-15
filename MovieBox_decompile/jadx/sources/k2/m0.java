package k2;

public interface m0 {

    public static final class a {

        public final n0 f63651a;

        public final n0 f63652b;

        public a(n0 n0Var) {
            this(n0Var, n0Var);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f63651a.equals(aVar.f63651a) && this.f63652b.equals(aVar.f63652b);
        }

        public int hashCode() {
            return (this.f63651a.hashCode() * 31) + this.f63652b.hashCode();
        }

        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("[");
            sb2.append(this.f63651a);
            if (this.f63651a.equals(this.f63652b)) {
                str = "";
            } else {
                str = ", " + this.f63652b;
            }
            sb2.append(str);
            sb2.append("]");
            return sb2.toString();
        }

        public a(n0 n0Var, n0 n0Var2) {
            this.f63651a = (n0) androidx.media3.common.util.a.e(n0Var);
            this.f63652b = (n0) androidx.media3.common.util.a.e(n0Var2);
        }
    }

    public static class b implements m0 {

        private final long f63653a;

        private final a f63654b;

        public b(long j10) {
            this(j10, 0L);
        }

        @Override
        public long getDurationUs() {
            return this.f63653a;
        }

        @Override
        public a getSeekPoints(long j10) {
            return this.f63654b;
        }

        @Override
        public boolean isSeekable() {
            return false;
        }

        public b(long j10, long j11) {
            this.f63653a = j10;
            this.f63654b = new a(j11 == 0 ? n0.f63656c : new n0(0L, j11));
        }
    }

    long getDurationUs();

    a getSeekPoints(long j10);

    boolean isSeekable();
}
