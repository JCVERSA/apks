package com.google.firebase.installations.local;

final class a extends com.google.firebase.installations.local.b {

    private final String f31085b;

    private final PersistedInstallation.RegistrationStatus f31086c;

    private final String f31087d;

    private final String f31088e;

    private final long f31089f;

    private final long f31090g;

    private final String f31091h;

    static final class b extends com.google.firebase.installations.local.b.a {

        private String f31092a;

        private PersistedInstallation.RegistrationStatus f31093b;

        private String f31094c;

        private String f31095d;

        private Long f31096e;

        private Long f31097f;

        private String f31098g;

        @Override
        public com.google.firebase.installations.local.b a() {
            String str = "";
            if (this.f31093b == null) {
                str = " registrationStatus";
            }
            if (this.f31096e == null) {
                str = str + " expiresInSecs";
            }
            if (this.f31097f == null) {
                str = str + " tokenCreationEpochInSecs";
            }
            if (str.isEmpty()) {
                return new a(this.f31092a, this.f31093b, this.f31094c, this.f31095d, this.f31096e.longValue(), this.f31097f.longValue(), this.f31098g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public com.google.firebase.installations.local.b.a b(String str) {
            this.f31094c = str;
            return this;
        }

        @Override
        public com.google.firebase.installations.local.b.a c(long j10) {
            this.f31096e = Long.valueOf(j10);
            return this;
        }

        @Override
        public com.google.firebase.installations.local.b.a d(String str) {
            this.f31092a = str;
            return this;
        }

        @Override
        public com.google.firebase.installations.local.b.a e(String str) {
            this.f31098g = str;
            return this;
        }

        @Override
        public com.google.firebase.installations.local.b.a f(String str) {
            this.f31095d = str;
            return this;
        }

        @Override
        public com.google.firebase.installations.local.b.a g(PersistedInstallation.RegistrationStatus registrationStatus) {
            if (registrationStatus == null) {
                throw new NullPointerException("Null registrationStatus");
            }
            this.f31093b = registrationStatus;
            return this;
        }

        @Override
        public com.google.firebase.installations.local.b.a h(long j10) {
            this.f31097f = Long.valueOf(j10);
            return this;
        }

        b() {
        }

        private b(com.google.firebase.installations.local.b bVar) {
            this.f31092a = bVar.d();
            this.f31093b = bVar.g();
            this.f31094c = bVar.b();
            this.f31095d = bVar.f();
            this.f31096e = Long.valueOf(bVar.c());
            this.f31097f = Long.valueOf(bVar.h());
            this.f31098g = bVar.e();
        }
    }

    @Override
    public String b() {
        return this.f31087d;
    }

    @Override
    public long c() {
        return this.f31089f;
    }

    @Override
    public String d() {
        return this.f31085b;
    }

    @Override
    public String e() {
        return this.f31091h;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof com.google.firebase.installations.local.b)) {
            return false;
        }
        com.google.firebase.installations.local.b bVar = (com.google.firebase.installations.local.b) obj;
        String str3 = this.f31085b;
        if (str3 != null ? str3.equals(bVar.d()) : bVar.d() == null) {
            if (this.f31086c.equals(bVar.g()) && ((str = this.f31087d) != null ? str.equals(bVar.b()) : bVar.b() == null) && ((str2 = this.f31088e) != null ? str2.equals(bVar.f()) : bVar.f() == null) && this.f31089f == bVar.c() && this.f31090g == bVar.h()) {
                String str4 = this.f31091h;
                if (str4 == null) {
                    if (bVar.e() == null) {
                        return true;
                    }
                } else if (str4.equals(bVar.e())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public String f() {
        return this.f31088e;
    }

    @Override
    public PersistedInstallation.RegistrationStatus g() {
        return this.f31086c;
    }

    @Override
    public long h() {
        return this.f31090g;
    }

    public int hashCode() {
        String str = this.f31085b;
        int iHashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.f31086c.hashCode()) * 1000003;
        String str2 = this.f31087d;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f31088e;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j10 = this.f31089f;
        int i10 = (iHashCode3 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f31090g;
        int i11 = (i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        String str4 = this.f31091h;
        return i11 ^ (str4 != null ? str4.hashCode() : 0);
    }

    @Override
    public com.google.firebase.installations.local.b.a n() {
        return new b(this);
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.f31085b + ", registrationStatus=" + this.f31086c + ", authToken=" + this.f31087d + ", refreshToken=" + this.f31088e + ", expiresInSecs=" + this.f31089f + ", tokenCreationEpochInSecs=" + this.f31090g + ", fisError=" + this.f31091h + "}";
    }

    private a(String str, PersistedInstallation.RegistrationStatus registrationStatus, String str2, String str3, long j10, long j11, String str4) {
        this.f31085b = str;
        this.f31086c = registrationStatus;
        this.f31087d = str2;
        this.f31088e = str3;
        this.f31089f = j10;
        this.f31090g = j11;
        this.f31091h = str4;
    }
}
