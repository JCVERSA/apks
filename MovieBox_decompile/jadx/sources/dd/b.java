package dd;

final class b extends d {

    private final String f59012b;

    private final String f59013c;

    private final String f59014d;

    private final String f59015e;

    private final long f59016f;

    static final class C0706b extends d.a {

        private String f59017a;

        private String f59018b;

        private String f59019c;

        private String f59020d;

        private long f59021e;

        private byte f59022f;

        C0706b() {
        }

        @Override
        public d a() {
            if (this.f59022f == 1 && this.f59017a != null && this.f59018b != null && this.f59019c != null && this.f59020d != null) {
                return new b(this.f59017a, this.f59018b, this.f59019c, this.f59020d, this.f59021e);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f59017a == null) {
                sb2.append(" rolloutId");
            }
            if (this.f59018b == null) {
                sb2.append(" variantId");
            }
            if (this.f59019c == null) {
                sb2.append(" parameterKey");
            }
            if (this.f59020d == null) {
                sb2.append(" parameterValue");
            }
            if ((1 & this.f59022f) == 0) {
                sb2.append(" templateVersion");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public d.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null parameterKey");
            }
            this.f59019c = str;
            return this;
        }

        @Override
        public d.a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null parameterValue");
            }
            this.f59020d = str;
            return this;
        }

        @Override
        public d.a d(String str) {
            if (str == null) {
                throw new NullPointerException("Null rolloutId");
            }
            this.f59017a = str;
            return this;
        }

        @Override
        public d.a e(long j10) {
            this.f59021e = j10;
            this.f59022f = (byte) (this.f59022f | 1);
            return this;
        }

        @Override
        public d.a f(String str) {
            if (str == null) {
                throw new NullPointerException("Null variantId");
            }
            this.f59018b = str;
            return this;
        }
    }

    @Override
    public String b() {
        return this.f59014d;
    }

    @Override
    public String c() {
        return this.f59015e;
    }

    @Override
    public String d() {
        return this.f59012b;
    }

    @Override
    public long e() {
        return this.f59016f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f59012b.equals(dVar.d()) && this.f59013c.equals(dVar.f()) && this.f59014d.equals(dVar.b()) && this.f59015e.equals(dVar.c()) && this.f59016f == dVar.e();
    }

    @Override
    public String f() {
        return this.f59013c;
    }

    public int hashCode() {
        int iHashCode = (((((((this.f59012b.hashCode() ^ 1000003) * 1000003) ^ this.f59013c.hashCode()) * 1000003) ^ this.f59014d.hashCode()) * 1000003) ^ this.f59015e.hashCode()) * 1000003;
        long j10 = this.f59016f;
        return iHashCode ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "RolloutAssignment{rolloutId=" + this.f59012b + ", variantId=" + this.f59013c + ", parameterKey=" + this.f59014d + ", parameterValue=" + this.f59015e + ", templateVersion=" + this.f59016f + "}";
    }

    private b(String str, String str2, String str3, String str4, long j10) {
        this.f59012b = str;
        this.f59013c = str2;
        this.f59014d = str3;
        this.f59015e = str4;
        this.f59016f = j10;
    }
}
