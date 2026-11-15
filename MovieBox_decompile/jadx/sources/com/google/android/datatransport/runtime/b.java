package com.google.android.datatransport.runtime;

import java.util.Arrays;
import java.util.Map;

final class b extends i {

    private final String f23686a;

    private final Integer f23687b;

    private final h f23688c;

    private final long f23689d;

    private final long f23690e;

    private final Map f23691f;

    private final Integer f23692g;

    private final String f23693h;

    private final byte[] f23694i;

    private final byte[] f23695j;

    static final class C0338b extends i.a {

        private String f23696a;

        private Integer f23697b;

        private h f23698c;

        private Long f23699d;

        private Long f23700e;

        private Map f23701f;

        private Integer f23702g;

        private String f23703h;

        private byte[] f23704i;

        private byte[] f23705j;

        C0338b() {
        }

        @Override
        public i d() {
            String str = "";
            if (this.f23696a == null) {
                str = " transportName";
            }
            if (this.f23698c == null) {
                str = str + " encodedPayload";
            }
            if (this.f23699d == null) {
                str = str + " eventMillis";
            }
            if (this.f23700e == null) {
                str = str + " uptimeMillis";
            }
            if (this.f23701f == null) {
                str = str + " autoMetadata";
            }
            if (str.isEmpty()) {
                return new b(this.f23696a, this.f23697b, this.f23698c, this.f23699d.longValue(), this.f23700e.longValue(), this.f23701f, this.f23702g, this.f23703h, this.f23704i, this.f23705j);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        protected Map e() {
            Map map = this.f23701f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        @Override
        protected i.a f(Map map) {
            if (map == null) {
                throw new NullPointerException("Null autoMetadata");
            }
            this.f23701f = map;
            return this;
        }

        @Override
        public i.a g(Integer num) {
            this.f23697b = num;
            return this;
        }

        @Override
        public i.a h(h hVar) {
            if (hVar == null) {
                throw new NullPointerException("Null encodedPayload");
            }
            this.f23698c = hVar;
            return this;
        }

        @Override
        public i.a i(long j10) {
            this.f23699d = Long.valueOf(j10);
            return this;
        }

        @Override
        public i.a j(byte[] bArr) {
            this.f23704i = bArr;
            return this;
        }

        @Override
        public i.a k(byte[] bArr) {
            this.f23705j = bArr;
            return this;
        }

        @Override
        public i.a l(Integer num) {
            this.f23702g = num;
            return this;
        }

        @Override
        public i.a m(String str) {
            this.f23703h = str;
            return this;
        }

        @Override
        public i.a n(String str) {
            if (str == null) {
                throw new NullPointerException("Null transportName");
            }
            this.f23696a = str;
            return this;
        }

        @Override
        public i.a o(long j10) {
            this.f23700e = Long.valueOf(j10);
            return this;
        }
    }

    @Override
    protected Map c() {
        return this.f23691f;
    }

    @Override
    public Integer d() {
        return this.f23687b;
    }

    @Override
    public h e() {
        return this.f23688c;
    }

    public boolean equals(Object obj) {
        Integer num;
        Integer num2;
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f23686a.equals(iVar.n()) && ((num = this.f23687b) != null ? num.equals(iVar.d()) : iVar.d() == null) && this.f23688c.equals(iVar.e()) && this.f23689d == iVar.f() && this.f23690e == iVar.o() && this.f23691f.equals(iVar.c()) && ((num2 = this.f23692g) != null ? num2.equals(iVar.l()) : iVar.l() == null) && ((str = this.f23693h) != null ? str.equals(iVar.m()) : iVar.m() == null)) {
            boolean z10 = iVar instanceof b;
            if (Arrays.equals(this.f23694i, z10 ? ((b) iVar).f23694i : iVar.g())) {
                if (Arrays.equals(this.f23695j, z10 ? ((b) iVar).f23695j : iVar.h())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public long f() {
        return this.f23689d;
    }

    @Override
    public byte[] g() {
        return this.f23694i;
    }

    @Override
    public byte[] h() {
        return this.f23695j;
    }

    public int hashCode() {
        int iHashCode = (this.f23686a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f23687b;
        int iHashCode2 = (((iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.f23688c.hashCode()) * 1000003;
        long j10 = this.f23689d;
        int i10 = (iHashCode2 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f23690e;
        int iHashCode3 = (((i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ this.f23691f.hashCode()) * 1000003;
        Integer num2 = this.f23692g;
        int iHashCode4 = (iHashCode3 ^ (num2 == null ? 0 : num2.hashCode())) * 1000003;
        String str = this.f23693h;
        return ((((iHashCode4 ^ (str != null ? str.hashCode() : 0)) * 1000003) ^ Arrays.hashCode(this.f23694i)) * 1000003) ^ Arrays.hashCode(this.f23695j);
    }

    @Override
    public Integer l() {
        return this.f23692g;
    }

    @Override
    public String m() {
        return this.f23693h;
    }

    @Override
    public String n() {
        return this.f23686a;
    }

    @Override
    public long o() {
        return this.f23690e;
    }

    public String toString() {
        return "EventInternal{transportName=" + this.f23686a + ", code=" + this.f23687b + ", encodedPayload=" + this.f23688c + ", eventMillis=" + this.f23689d + ", uptimeMillis=" + this.f23690e + ", autoMetadata=" + this.f23691f + ", productId=" + this.f23692g + ", pseudonymousId=" + this.f23693h + ", experimentIdsClear=" + Arrays.toString(this.f23694i) + ", experimentIdsEncrypted=" + Arrays.toString(this.f23695j) + "}";
    }

    private b(String str, Integer num, h hVar, long j10, long j11, Map map, Integer num2, String str2, byte[] bArr, byte[] bArr2) {
        this.f23686a = str;
        this.f23687b = num;
        this.f23688c = hVar;
        this.f23689d = j10;
        this.f23690e = j11;
        this.f23691f = map;
        this.f23692g = num2;
        this.f23693h = str2;
        this.f23694i = bArr;
        this.f23695j = bArr2;
    }
}
