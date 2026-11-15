package com.google.firebase.installations.remote;

import org.apache.commons.text.StringSubstitutor;

public final class a extends InstallationResponse {
    public final String a;
    public final String b;
    public final String c;
    public final TokenResult d;
    public final InstallationResponse.ResponseCode e;

    public static final class b extends InstallationResponse.a {
        public String a;
        public String b;
        public String c;
        public TokenResult d;
        public InstallationResponse.ResponseCode e;

        @Override
        public InstallationResponse a() {
            return new a(this.a, this.b, this.c, this.d, this.e);
        }

        @Override
        public InstallationResponse.a b(TokenResult tokenResult) {
            this.d = tokenResult;
            return this;
        }

        @Override
        public InstallationResponse.a c(String str) {
            this.b = str;
            return this;
        }

        @Override
        public InstallationResponse.a d(String str) {
            this.c = str;
            return this;
        }

        @Override
        public InstallationResponse.a e(InstallationResponse.ResponseCode responseCode) {
            this.e = responseCode;
            return this;
        }

        @Override
        public InstallationResponse.a f(String str) {
            this.a = str;
            return this;
        }
    }

    @Override
    public TokenResult b() {
        return this.d;
    }

    @Override
    public String c() {
        return this.b;
    }

    @Override
    public String d() {
        return this.c;
    }

    @Override
    public InstallationResponse.ResponseCode e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InstallationResponse)) {
            return false;
        }
        InstallationResponse installationResponse = (InstallationResponse) obj;
        String str = this.a;
        if (str != null ? str.equals(installationResponse.f()) : installationResponse.f() == null) {
            String str2 = this.b;
            if (str2 != null ? str2.equals(installationResponse.c()) : installationResponse.c() == null) {
                String str3 = this.c;
                if (str3 != null ? str3.equals(installationResponse.d()) : installationResponse.d() == null) {
                    TokenResult tokenResult = this.d;
                    if (tokenResult != null ? tokenResult.equals(installationResponse.b()) : installationResponse.b() == null) {
                        InstallationResponse.ResponseCode responseCode = this.e;
                        if (responseCode == null) {
                            if (installationResponse.e() == null) {
                                return true;
                            }
                        } else if (responseCode.equals(installationResponse.e())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override
    public String f() {
        return this.a;
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.b;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        TokenResult tokenResult = this.d;
        int iHashCode4 = (iHashCode3 ^ (tokenResult == null ? 0 : tokenResult.hashCode())) * 1000003;
        InstallationResponse.ResponseCode responseCode = this.e;
        return iHashCode4 ^ (responseCode != null ? responseCode.hashCode() : 0);
    }

    public String toString() {
        return "InstallationResponse{uri=" + this.a + ", fid=" + this.b + ", refreshToken=" + this.c + ", authToken=" + this.d + ", responseCode=" + this.e + StringSubstitutor.DEFAULT_VAR_END;
    }

    public a(String str, String str2, String str3, TokenResult tokenResult, InstallationResponse.ResponseCode responseCode) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = tokenResult;
        this.e = responseCode;
    }
}
