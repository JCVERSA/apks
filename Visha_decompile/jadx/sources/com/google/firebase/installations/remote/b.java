package com.google.firebase.installations.remote;

import org.apache.commons.text.StringSubstitutor;

public final class b extends TokenResult {
    public final String a;
    public final long b;
    public final TokenResult.ResponseCode c;

    public static final class C0115b extends TokenResult.a {
        public String a;
        public Long b;
        public TokenResult.ResponseCode c;

        @Override
        public TokenResult a() {
            String str = "";
            if (this.b == null) {
                str = " tokenExpirationTimestamp";
            }
            if (str.isEmpty()) {
                return new b(this.a, this.b.longValue(), this.c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public TokenResult.a b(TokenResult.ResponseCode responseCode) {
            this.c = responseCode;
            return this;
        }

        @Override
        public TokenResult.a c(String str) {
            this.a = str;
            return this;
        }

        @Override
        public TokenResult.a d(long j) {
            this.b = Long.valueOf(j);
            return this;
        }
    }

    @Override
    public TokenResult.ResponseCode b() {
        return this.c;
    }

    @Override
    public String c() {
        return this.a;
    }

    @Override
    public long d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TokenResult)) {
            return false;
        }
        TokenResult tokenResult = (TokenResult) obj;
        String str = this.a;
        if (str != null ? str.equals(tokenResult.c()) : tokenResult.c() == null) {
            if (this.b == tokenResult.d()) {
                TokenResult.ResponseCode responseCode = this.c;
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
        String str = this.a;
        int iHashCode = str == null ? 0 : str.hashCode();
        long j = this.b;
        int i = (((iHashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        TokenResult.ResponseCode responseCode = this.c;
        return i ^ (responseCode != null ? responseCode.hashCode() : 0);
    }

    public String toString() {
        return "TokenResult{token=" + this.a + ", tokenExpirationTimestamp=" + this.b + ", responseCode=" + this.c + StringSubstitutor.DEFAULT_VAR_END;
    }

    public b(String str, long j, TokenResult.ResponseCode responseCode) {
        this.a = str;
        this.b = j;
        this.c = responseCode;
    }
}
