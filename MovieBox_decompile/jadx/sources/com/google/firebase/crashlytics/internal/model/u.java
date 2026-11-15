package com.google.firebase.crashlytics.internal.model;

final class u extends CrashlyticsReport.e.d.c {

    private final Double f30847a;

    private final int f30848b;

    private final boolean f30849c;

    private final int f30850d;

    private final long f30851e;

    private final long f30852f;

    static final class b extends CrashlyticsReport.e.d.c.a {

        private Double f30853a;

        private int f30854b;

        private boolean f30855c;

        private int f30856d;

        private long f30857e;

        private long f30858f;

        private byte f30859g;

        b() {
        }

        @Override
        public CrashlyticsReport.e.d.c a() {
            if (this.f30859g == 31) {
                return new u(this.f30853a, this.f30854b, this.f30855c, this.f30856d, this.f30857e, this.f30858f);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f30859g & 1) == 0) {
                sb2.append(" batteryVelocity");
            }
            if ((this.f30859g & 2) == 0) {
                sb2.append(" proximityOn");
            }
            if ((this.f30859g & 4) == 0) {
                sb2.append(" orientation");
            }
            if ((this.f30859g & 8) == 0) {
                sb2.append(" ramUsed");
            }
            if ((this.f30859g & 16) == 0) {
                sb2.append(" diskUsed");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.e.d.c.a b(Double d10) {
            this.f30853a = d10;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.c.a c(int i10) {
            this.f30854b = i10;
            this.f30859g = (byte) (this.f30859g | 1);
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.c.a d(long j10) {
            this.f30858f = j10;
            this.f30859g = (byte) (this.f30859g | 16);
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.c.a e(int i10) {
            this.f30856d = i10;
            this.f30859g = (byte) (this.f30859g | 4);
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.c.a f(boolean z10) {
            this.f30855c = z10;
            this.f30859g = (byte) (this.f30859g | 2);
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.c.a g(long j10) {
            this.f30857e = j10;
            this.f30859g = (byte) (this.f30859g | 8);
            return this;
        }
    }

    @Override
    public Double b() {
        return this.f30847a;
    }

    @Override
    public int c() {
        return this.f30848b;
    }

    @Override
    public long d() {
        return this.f30852f;
    }

    @Override
    public int e() {
        return this.f30850d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.c)) {
            return false;
        }
        CrashlyticsReport.e.d.c cVar = (CrashlyticsReport.e.d.c) obj;
        Double d10 = this.f30847a;
        if (d10 != null ? d10.equals(cVar.b()) : cVar.b() == null) {
            if (this.f30848b == cVar.c() && this.f30849c == cVar.g() && this.f30850d == cVar.e() && this.f30851e == cVar.f() && this.f30852f == cVar.d()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public long f() {
        return this.f30851e;
    }

    @Override
    public boolean g() {
        return this.f30849c;
    }

    public int hashCode() {
        Double d10 = this.f30847a;
        int iHashCode = ((((((((d10 == null ? 0 : d10.hashCode()) ^ 1000003) * 1000003) ^ this.f30848b) * 1000003) ^ (this.f30849c ? 1231 : 1237)) * 1000003) ^ this.f30850d) * 1000003;
        long j10 = this.f30851e;
        long j11 = this.f30852f;
        return ((iHashCode ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "Device{batteryLevel=" + this.f30847a + ", batteryVelocity=" + this.f30848b + ", proximityOn=" + this.f30849c + ", orientation=" + this.f30850d + ", ramUsed=" + this.f30851e + ", diskUsed=" + this.f30852f + "}";
    }

    private u(Double d10, int i10, boolean z10, int i11, long j10, long j11) {
        this.f30847a = d10;
        this.f30848b = i10;
        this.f30849c = z10;
        this.f30850d = i11;
        this.f30851e = j10;
        this.f30852f = j11;
    }
}
