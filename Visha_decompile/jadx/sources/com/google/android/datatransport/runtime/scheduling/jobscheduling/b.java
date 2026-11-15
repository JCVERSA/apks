package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import java.util.Set;
import org.apache.commons.text.StringSubstitutor;

public final class b extends SchedulerConfig.b {
    public final long a;
    public final long b;
    public final Set c;

    public static final class C0075b extends SchedulerConfig.b.a {
        public Long a;
        public Long b;
        public Set c;

        @Override
        public SchedulerConfig.b a() {
            String str = "";
            if (this.a == null) {
                str = " delta";
            }
            if (this.b == null) {
                str = str + " maxAllowedDelay";
            }
            if (this.c == null) {
                str = str + " flags";
            }
            if (str.isEmpty()) {
                return new b(this.a.longValue(), this.b.longValue(), this.c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public SchedulerConfig.b.a b(long j) {
            this.a = Long.valueOf(j);
            return this;
        }

        @Override
        public SchedulerConfig.b.a c(Set set) {
            if (set == null) {
                throw new NullPointerException("Null flags");
            }
            this.c = set;
            return this;
        }

        @Override
        public SchedulerConfig.b.a d(long j) {
            this.b = Long.valueOf(j);
            return this;
        }
    }

    @Override
    public long b() {
        return this.a;
    }

    @Override
    public Set c() {
        return this.c;
    }

    @Override
    public long d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SchedulerConfig.b)) {
            return false;
        }
        SchedulerConfig.b bVar = (SchedulerConfig.b) obj;
        return this.a == bVar.b() && this.b == bVar.d() && this.c.equals(bVar.c());
    }

    public int hashCode() {
        long j = this.a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        long j2 = this.b;
        return this.c.hashCode() ^ ((i ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        return "ConfigValue{delta=" + this.a + ", maxAllowedDelay=" + this.b + ", flags=" + this.c + StringSubstitutor.DEFAULT_VAR_END;
    }

    public b(long j, long j2, Set set) {
        this.a = j;
        this.b = j2;
        this.c = set;
    }
}
