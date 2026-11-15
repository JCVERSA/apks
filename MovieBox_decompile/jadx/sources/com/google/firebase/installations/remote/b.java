package com.google.firebase.installations.remote;

final class b extends TokenResult {

    private final String f31110a;

    private final long f31111b;

    private final TokenResult.ResponseCode f31112c;

    static final class C0419b extends TokenResult.a {

        private String f31113a;

        private Long f31114b;

        private TokenResult.ResponseCode f31115c;

        C0419b() {
        }

        @Override
        public TokenResult a() {
            String str = "";
            if (this.f31114b == null) {
                str = " tokenExpirationTimestamp";
            }
            if (str.isEmpty()) {
                return new b(this.f31113a, this.f31114b.longValue(), this.f31115c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public TokenResult.a b(TokenResult.ResponseCode responseCode) {
            this.f31115c = responseCode;
            return this;
        }

        @Override
        public TokenResult.a c(String str) {
            this.f31113a = str;
            return this;
        }

        @Override
        public TokenResult.a d(long j10) {
            this.f31114b = Long.valueOf(j10);
            return this;
        }
    }

    @Override
    public TokenResult.ResponseCode b() {
        return this.f31112c;
    }

    @Override
    public String c() {
        return this.f31110a;
    }

    @Override
    public long d() {
        return this.f31111b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TokenResult)) {
            return false;
        }
        TokenResult tokenResult = (TokenResult) obj;
        String str = this.f31110a;
        if (str != null ? str.equals(tokenResult.c()) : tokenResult.c() == null) {
            if (this.f31111b == tokenResult.d()) {
                TokenResult.ResponseCode responseCode = this.f31112c;
                if (responseCode == null) {
                    if (tokenResult.b() == null) {
                        return true;
                    }
                } else if (responseCode.equals(tokenResult.b())) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f31110a;
        int iHashCode = str == null ? 0 : str.hashCode();
        long j10 = this.f31111b;
        int i10 = (((iHashCode ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        TokenResult.ResponseCode responseCode = this.f31112c;
        return i10 ^ (responseCode != null ? responseCode.hashCode() : 0);
    }

    public String toString() {
        return "TokenResult{token=" + this.f31110a + ", tokenExpirationTimestamp=" + this.f31111b + ", responseCode=" + this.f31112c + "}";
    }

    private b(String str, long j10, TokenResult.ResponseCode responseCode) {
        this.f31110a = str;
        this.f31111b = j10;
        this.f31112c = responseCode;
    }
}
