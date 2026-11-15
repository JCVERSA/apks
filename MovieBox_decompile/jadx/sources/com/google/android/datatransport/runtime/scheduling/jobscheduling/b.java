package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import java.util.Set;

final class b extends SchedulerConfig.b {

    private final long f23760a;

    private final long f23761b;

    private final Set f23762c;

    static final class C0339b extends SchedulerConfig.b.a {

        private Long f23763a;

        private Long f23764b;

        private Set f23765c;

        C0339b() {
        }

        @Override
        public SchedulerConfig.b a() {
            String str = "";
            if (this.f23763a == null) {
                str = " delta";
            }
            if (this.f23764b == null) {
                str = str + " maxAllowedDelay";
            }
            if (this.f23765c == null) {
                str = str + " flags";
            }
            if (str.isEmpty()) {
                return new b(this.f23763a.longValue(), this.f23764b.longValue(), this.f23765c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public SchedulerConfig.b.a b(long j10) {
            this.f23763a = Long.valueOf(j10);
            return this;
        }

        @Override
        public SchedulerConfig.b.a c(Set set) {
            if (set == null) {
                throw new NullPointerException("Null flags");
            }
            this.f23765c = set;
            return this;
        }

        @Override
        public SchedulerConfig.b.a d(long j10) {
            this.f23764b = Long.valueOf(j10);
            return this;
        }
    }

    @Override
    long b() {
        return this.f23760a;
    }

    @Override
    Set c() {
        return this.f23762c;
    }

    @Override
    long d() {
        return this.f23761b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SchedulerConfig.b)) {
            return false;
        }
        SchedulerConfig.b bVar = (SchedulerConfig.b) obj;
        return this.f23760a == bVar.b() && this.f23761b == bVar.d() && this.f23762c.equals(bVar.c());
    }

    public int hashCode() {
        long j10 = this.f23760a;
        int i10 = (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
        long j11 = this.f23761b;
        return ((i10 ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f23762c.hashCode();
    }

    public String toString() {
        return "ConfigValue{delta=" + this.f23760a + ", maxAllowedDelay=" + this.f23761b + ", flags=" + this.f23762c + "}";
    }

    private b(long j10, long j11, Set set) {
        this.f23760a = j10;
        this.f23761b = j11;
        this.f23762c = set;
    }
}
