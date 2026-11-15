package com.google.firebase.crashlytics.internal.model;

final class s extends CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b {

    private final long f30827a;

    private final String f30828b;

    private final String f30829c;

    private final long f30830d;

    private final int f30831e;

    static final class b extends CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b.AbstractC0408a {

        private long f30832a;

        private String f30833b;

        private String f30834c;

        private long f30835d;

        private int f30836e;

        private byte f30837f;

        b() {
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b a() {
            String str;
            if (this.f30837f == 7 && (str = this.f30833b) != null) {
                return new s(this.f30832a, str, this.f30834c, this.f30835d, this.f30836e);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f30837f & 1) == 0) {
                sb2.append(" pc");
            }
            if (this.f30833b == null) {
                sb2.append(" symbol");
            }
            if ((this.f30837f & 2) == 0) {
                sb2.append(" offset");
            }
            if ((this.f30837f & 4) == 0) {
                sb2.append(" importance");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b.AbstractC0408a b(String str) {
            this.f30834c = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b.AbstractC0408a c(int i10) {
            this.f30836e = i10;
            this.f30837f = (byte) (this.f30837f | 4);
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b.AbstractC0408a d(long j10) {
            this.f30835d = j10;
            this.f30837f = (byte) (this.f30837f | 2);
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b.AbstractC0408a e(long j10) {
            this.f30832a = j10;
            this.f30837f = (byte) (this.f30837f | 1);
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b.AbstractC0408a f(String str) {
            if (str == null) {
                throw new NullPointerException("Null symbol");
            }
            this.f30833b = str;
            return this;
        }
    }

    @Override
    public String b() {
        return this.f30829c;
    }

    @Override
    public int c() {
        return this.f30831e;
    }

    @Override
    public long d() {
        return this.f30830d;
    }

    @Override
    public long e() {
        return this.f30827a;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b)) {
            return false;
        }
        CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b abstractC0407b = (CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0407b) obj;
        return this.f30827a == abstractC0407b.e() && this.f30828b.equals(abstractC0407b.f()) && ((str = this.f30829c) != null ? str.equals(abstractC0407b.b()) : abstractC0407b.b() == null) && this.f30830d == abstractC0407b.d() && this.f30831e == abstractC0407b.c();
    }

    @Override
    public String f() {
        return this.f30828b;
    }

    public int hashCode() {
        long j10 = this.f30827a;
        int iHashCode = (((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f30828b.hashCode()) * 1000003;
        String str = this.f30829c;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j11 = this.f30830d;
        return ((iHashCode2 ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f30831e;
    }

    public String toString() {
        return "Frame{pc=" + this.f30827a + ", symbol=" + this.f30828b + ", file=" + this.f30829c + ", offset=" + this.f30830d + ", importance=" + this.f30831e + "}";
    }

    private s(long j10, String str, String str2, long j11, int i10) {
        this.f30827a = j10;
        this.f30828b = str;
        this.f30829c = str2;
        this.f30830d = j11;
        this.f30831e = i10;
    }
}
