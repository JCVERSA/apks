package defpackage;

public interface ja9 {

    public static final class a {
        public final la9 a;
        public final la9 b;

        public a(la9 la9Var) {
            this(la9Var, la9Var);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.a.equals(aVar.a) && this.b.equals(aVar.b);
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append(this.a);
            if (this.a.equals(this.b)) {
                str = "";
            } else {
                str = ", " + this.b;
            }
            sb.append(str);
            sb.append("]");
            return sb.toString();
        }

        public a(la9 la9Var, la9 la9Var2) {
            this.a = (la9) zi.e(la9Var);
            this.b = (la9) zi.e(la9Var2);
        }
    }

    public static class b implements ja9 {
        public final long a;
        public final a b;

        public b(long j) {
            this(j, 0L);
        }

        @Override
        public long getDurationUs() {
            return this.a;
        }

        @Override
        public a getSeekPoints(long j) {
            return this.b;
        }

        @Override
        public boolean isSeekable() {
            return false;
        }

        public b(long j, long j2) {
            this.a = j;
            this.b = new a(j2 == 0 ? la9.c : new la9(0L, j2));
        }
    }

    long getDurationUs();

    a getSeekPoints(long j);

    boolean isSeekable();
}
