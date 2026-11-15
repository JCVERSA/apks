package defpackage;

public final class vwh extends swh {
    public String a;
    public boolean b;
    public boolean c;
    public long d;
    public long e;
    public byte f;

    @Override
    public final swh a(String str) {
        if (str == null) {
            throw new NullPointerException("Null clientVersion");
        }
        this.a = str;
        return this;
    }

    @Override
    public final swh b(boolean z) {
        this.f = (byte) (this.f | 16);
        return this;
    }

    @Override
    public final swh c(boolean z) {
        this.f = (byte) (this.f | 4);
        return this;
    }

    @Override
    public final swh d(boolean z) {
        this.c = true;
        this.f = (byte) (this.f | 2);
        return this;
    }

    @Override
    public final swh e(long j) {
        this.e = 300L;
        this.f = (byte) (this.f | 32);
        return this;
    }

    @Override
    public final swh f(long j) {
        this.d = 100L;
        this.f = (byte) (this.f | 8);
        return this;
    }

    @Override
    public final swh g(boolean z) {
        this.b = z;
        this.f = (byte) (this.f | 1);
        return this;
    }

    @Override
    public final twh h() {
        String str;
        if (this.f == 63 && (str = this.a) != null) {
            return new xwh(str, this.b, this.c, false, this.d, false, this.e, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            sb.append(" clientVersion");
        }
        if ((this.f & 1) == 0) {
            sb.append(" shouldGetAdvertisingId");
        }
        if ((this.f & 2) == 0) {
            sb.append(" isGooglePlayServicesAvailable");
        }
        if ((this.f & 4) == 0) {
            sb.append(" enableQuerySignalsTimeout");
        }
        if ((this.f & 8) == 0) {
            sb.append(" querySignalsTimeoutMs");
        }
        if ((this.f & 16) == 0) {
            sb.append(" enableQuerySignalsCache");
        }
        if ((this.f & 32) == 0) {
            sb.append(" querySignalsCacheTtlSeconds");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
