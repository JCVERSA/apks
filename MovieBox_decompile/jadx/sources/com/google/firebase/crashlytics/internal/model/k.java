package com.google.firebase.crashlytics.internal.model;

final class k extends CrashlyticsReport.e.c {

    private final int f30736a;

    private final String f30737b;

    private final int f30738c;

    private final long f30739d;

    private final long f30740e;

    private final boolean f30741f;

    private final int f30742g;

    private final String f30743h;

    private final String f30744i;

    static final class b extends CrashlyticsReport.e.c.a {

        private int f30745a;

        private String f30746b;

        private int f30747c;

        private long f30748d;

        private long f30749e;

        private boolean f30750f;

        private int f30751g;

        private String f30752h;

        private String f30753i;

        private byte f30754j;

        b() {
        }

        @Override
        public CrashlyticsReport.e.c a() {
            String str;
            String str2;
            String str3;
            if (this.f30754j == 63 && (str = this.f30746b) != null && (str2 = this.f30752h) != null && (str3 = this.f30753i) != null) {
                return new k(this.f30745a, str, this.f30747c, this.f30748d, this.f30749e, this.f30750f, this.f30751g, str2, str3);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f30754j & 1) == 0) {
                sb2.append(" arch");
            }
            if (this.f30746b == null) {
                sb2.append(" model");
            }
            if ((this.f30754j & 2) == 0) {
                sb2.append(" cores");
            }
            if ((this.f30754j & 4) == 0) {
                sb2.append(" ram");
            }
            if ((this.f30754j & 8) == 0) {
                sb2.append(" diskSpace");
            }
            if ((this.f30754j & 16) == 0) {
                sb2.append(" simulator");
            }
            if ((this.f30754j & 32) == 0) {
                sb2.append(" state");
            }
            if (this.f30752h == null) {
                sb2.append(" manufacturer");
            }
            if (this.f30753i == null) {
                sb2.append(" modelClass");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.e.c.a b(int i10) {
            this.f30745a = i10;
            this.f30754j = (byte) (this.f30754j | 1);
            return this;
        }

        @Override
        public CrashlyticsReport.e.c.a c(int i10) {
            this.f30747c = i10;
            this.f30754j = (byte) (this.f30754j | 2);
            return this;
        }

        @Override
        public CrashlyticsReport.e.c.a d(long j10) {
            this.f30749e = j10;
            this.f30754j = (byte) (this.f30754j | 8);
            return this;
        }

        @Override
        public CrashlyticsReport.e.c.a e(String str) {
            if (str == null) {
                throw new NullPointerException("Null manufacturer");
            }
            this.f30752h = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.c.a f(String str) {
            if (str == null) {
                throw new NullPointerException("Null model");
            }
            this.f30746b = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.c.a g(String str) {
            if (str == null) {
                throw new NullPointerException("Null modelClass");
            }
            this.f30753i = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.c.a h(long j10) {
            this.f30748d = j10;
            this.f30754j = (byte) (this.f30754j | 4);
            return this;
        }

        @Override
        public CrashlyticsReport.e.c.a i(boolean z10) {
            this.f30750f = z10;
            this.f30754j = (byte) (this.f30754j | 16);
            return this;
        }

        @Override
        public CrashlyticsReport.e.c.a j(int i10) {
            this.f30751g = i10;
            this.f30754j = (byte) (this.f30754j | 32);
            return this;
        }
    }

    @Override
    public int b() {
        return this.f30736a;
    }

    @Override
    public int c() {
        return this.f30738c;
    }

    @Override
    public long d() {
        return this.f30740e;
    }

    @Override
    public String e() {
        return this.f30743h;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.c)) {
            return false;
        }
        CrashlyticsReport.e.c cVar = (CrashlyticsReport.e.c) obj;
        return this.f30736a == cVar.b() && this.f30737b.equals(cVar.f()) && this.f30738c == cVar.c() && this.f30739d == cVar.h() && this.f30740e == cVar.d() && this.f30741f == cVar.j() && this.f30742g == cVar.i() && this.f30743h.equals(cVar.e()) && this.f30744i.equals(cVar.g());
    }

    @Override
    public String f() {
        return this.f30737b;
    }

    @Override
    public String g() {
        return this.f30744i;
    }

    @Override
    public long h() {
        return this.f30739d;
    }

    public int hashCode() {
        int iHashCode = (((((this.f30736a ^ 1000003) * 1000003) ^ this.f30737b.hashCode()) * 1000003) ^ this.f30738c) * 1000003;
        long j10 = this.f30739d;
        int i10 = (iHashCode ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f30740e;
        return ((((((((i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ (this.f30741f ? 1231 : 1237)) * 1000003) ^ this.f30742g) * 1000003) ^ this.f30743h.hashCode()) * 1000003) ^ this.f30744i.hashCode();
    }

    @Override
    public int i() {
        return this.f30742g;
    }

    @Override
    public boolean j() {
        return this.f30741f;
    }

    public String toString() {
        return "Device{arch=" + this.f30736a + ", model=" + this.f30737b + ", cores=" + this.f30738c + ", ram=" + this.f30739d + ", diskSpace=" + this.f30740e + ", simulator=" + this.f30741f + ", state=" + this.f30742g + ", manufacturer=" + this.f30743h + ", modelClass=" + this.f30744i + "}";
    }

    private k(int i10, String str, int i11, long j10, long j11, boolean z10, int i12, String str2, String str3) {
        this.f30736a = i10;
        this.f30737b = str;
        this.f30738c = i11;
        this.f30739d = j10;
        this.f30740e = j11;
        this.f30741f = z10;
        this.f30742g = i12;
        this.f30743h = str2;
        this.f30744i = str3;
    }
}
