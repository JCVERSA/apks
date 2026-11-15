package defpackage;

import org.apache.commons.text.StringSubstitutor;

public final class e30 extends he3 {
    public final long b;
    public final int c;
    public final int d;
    public final long e;
    public final int f;

    public static final class b extends he3.a {
        public Long a;
        public Integer b;
        public Integer c;
        public Long d;
        public Integer e;

        @Override
        public he3 a() {
            String str = "";
            if (this.a == null) {
                str = " maxStorageSizeInBytes";
            }
            if (this.b == null) {
                str = str + " loadBatchSize";
            }
            if (this.c == null) {
                str = str + " criticalSectionEnterTimeoutMs";
            }
            if (this.d == null) {
                str = str + " eventCleanUpAge";
            }
            if (this.e == null) {
                str = str + " maxBlobByteSizePerRow";
            }
            if (str.isEmpty()) {
                return new e30(this.a.longValue(), this.b.intValue(), this.c.intValue(), this.d.longValue(), this.e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public he3.a b(int i) {
            this.c = Integer.valueOf(i);
            return this;
        }

        @Override
        public he3.a c(long j) {
            this.d = Long.valueOf(j);
            return this;
        }

        @Override
        public he3.a d(int i) {
            this.b = Integer.valueOf(i);
            return this;
        }

        @Override
        public he3.a e(int i) {
            this.e = Integer.valueOf(i);
            return this;
        }

        @Override
        public he3.a f(long j) {
            this.a = Long.valueOf(j);
            return this;
        }
    }

    @Override
    public int b() {
        return this.d;
    }

    @Override
    public long c() {
        return this.e;
    }

    @Override
    public int d() {
        return this.c;
    }

    @Override
    public int e() {
        return this.f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof he3)) {
            return false;
        }
        he3 he3Var = (he3) obj;
        return this.b == he3Var.f() && this.c == he3Var.d() && this.d == he3Var.b() && this.e == he3Var.c() && this.f == he3Var.e();
    }

    @Override
    public long f() {
        return this.b;
    }

    public int hashCode() {
        long j = this.b;
        int i = (((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.c) * 1000003) ^ this.d) * 1000003;
        long j2 = this.e;
        return this.f ^ ((i ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.b + ", loadBatchSize=" + this.c + ", criticalSectionEnterTimeoutMs=" + this.d + ", eventCleanUpAge=" + this.e + ", maxBlobByteSizePerRow=" + this.f + StringSubstitutor.DEFAULT_VAR_END;
    }

    public e30(long j, int i, int i2, long j2, int i3) {
        this.b = j;
        this.c = i;
        this.d = i2;
        this.e = j2;
        this.f = i3;
    }
}
