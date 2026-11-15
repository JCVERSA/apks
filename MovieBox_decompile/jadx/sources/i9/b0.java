package i9;

public interface b0 {

    public static final class a {

        public final c0 f61885a;

        public final c0 f61886b;

        public a(c0 c0Var) {
            this(c0Var, c0Var);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f61885a.equals(aVar.f61885a) && this.f61886b.equals(aVar.f61886b);
        }

        public int hashCode() {
            return (this.f61885a.hashCode() * 31) + this.f61886b.hashCode();
        }

        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("[");
            sb2.append(this.f61885a);
            if (this.f61885a.equals(this.f61886b)) {
                str = "";
            } else {
                str = ", " + this.f61886b;
            }
            sb2.append(str);
            sb2.append("]");
            return sb2.toString();
        }

        public a(c0 c0Var, c0 c0Var2) {
            this.f61885a = (c0) com.google.android.exoplayer2.util.a.e(c0Var);
            this.f61886b = (c0) com.google.android.exoplayer2.util.a.e(c0Var2);
        }
    }

    public static class b implements b0 {

        private final long f61887a;

        private final a f61888b;

        public b(long j10) {
            this(j10, 0L);
        }

        @Override
        public long getDurationUs() {
            return this.f61887a;
        }

        @Override
        public a getSeekPoints(long j10) {
            return this.f61888b;
        }

        @Override
        public boolean isSeekable() {
            return false;
        }

        public b(long j10, long j11) {
            this.f61887a = j10;
            this.f61888b = new a(j11 == 0 ? c0.f61889c : new c0(0L, j11));
        }
    }

    long getDurationUs();

    a getSeekPoints(long j10);

    boolean isSeekable();
}
