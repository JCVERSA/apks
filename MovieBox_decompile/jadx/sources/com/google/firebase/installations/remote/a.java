package com.google.firebase.installations.remote;

final class a extends InstallationResponse {

    private final String f31100a;

    private final String f31101b;

    private final String f31102c;

    private final TokenResult f31103d;

    private final InstallationResponse.ResponseCode f31104e;

    static final class b extends InstallationResponse.a {

        private String f31105a;

        private String f31106b;

        private String f31107c;

        private TokenResult f31108d;

        private InstallationResponse.ResponseCode f31109e;

        b() {
        }

        @Override
        public InstallationResponse a() {
            return new a(this.f31105a, this.f31106b, this.f31107c, this.f31108d, this.f31109e);
        }

        @Override
        public InstallationResponse.a b(TokenResult tokenResult) {
            this.f31108d = tokenResult;
            return this;
        }

        @Override
        public InstallationResponse.a c(String str) {
            this.f31106b = str;
            return this;
        }

        @Override
        public InstallationResponse.a d(String str) {
            this.f31107c = str;
            return this;
        }

        @Override
        public InstallationResponse.a e(InstallationResponse.ResponseCode responseCode) {
            this.f31109e = responseCode;
            return this;
        }

        @Override
        public InstallationResponse.a f(String str) {
            this.f31105a = str;
            return this;
        }
    }

    @Override
    public TokenResult b() {
        return this.f31103d;
    }

    @Override
    public String c() {
        return this.f31101b;
    }

    @Override
    public String d() {
        return this.f31102c;
    }

    @Override
    public InstallationResponse.ResponseCode e() {
        return this.f31104e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InstallationResponse)) {
            return false;
        }
        InstallationResponse installationResponse = (InstallationResponse) obj;
        String str = this.f31100a;
        if (str != null ? str.equals(installationResponse.f()) : installationResponse.f() == null) {
            String str2 = this.f31101b;
            if (str2 != null ? str2.equals(installationResponse.c()) : installationResponse.c() == null) {
                String str3 = this.f31102c;
                if (str3 != null ? str3.equals(installationResponse.d()) : installationResponse.d() == null) {
                    TokenResult tokenResult = this.f31103d;
                    if (tokenResult != null ? tokenResult.equals(installationResponse.b()) : installationResponse.b() == null) {
                        InstallationResponse.ResponseCode responseCode = this.f31104e;
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
        return this.f31100a;
    }

    public int hashCode() {
        String str = this.f31100a;
        int iHashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f31101b;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f31102c;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        TokenResult tokenResult = this.f31103d;
        int iHashCode4 = (iHashCode3 ^ (tokenResult == null ? 0 : tokenResult.hashCode())) * 1000003;
        InstallationResponse.ResponseCode responseCode = this.f31104e;
        return iHashCode4 ^ (responseCode != null ? responseCode.hashCode() : 0);
    }

    public String toString() {
        return "InstallationResponse{uri=" + this.f31100a + ", fid=" + this.f31101b + ", refreshToken=" + this.f31102c + ", authToken=" + this.f31103d + ", responseCode=" + this.f31104e + "}";
    }

    private a(String str, String str2, String str3, TokenResult tokenResult, InstallationResponse.ResponseCode responseCode) {
        this.f31100a = str;
        this.f31101b = str2;
        this.f31102c = str3;
        this.f31103d = tokenResult;
        this.f31104e = responseCode;
    }
}
