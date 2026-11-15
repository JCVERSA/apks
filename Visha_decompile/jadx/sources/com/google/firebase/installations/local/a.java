package com.google.firebase.installations.local;

import org.apache.commons.text.StringSubstitutor;

public final class a extends com.google.firebase.installations.local.b {
    public final String b;
    public final PersistedInstallation.RegistrationStatus c;
    public final String d;
    public final String e;
    public final long f;
    public final long g;
    public final String h;

    public static final class b extends com.google.firebase.installations.local.b.a {
        public String a;
        public PersistedInstallation.RegistrationStatus b;
        public String c;
        public String d;
        public Long e;
        public Long f;
        public String g;

        @Override
        public com.google.firebase.installations.local.b a() {
            String str = "";
            if (this.b == null) {
                str = " registrationStatus";
            }
            if (this.e == null) {
                str = str + " expiresInSecs";
            }
            if (this.f == null) {
                str = str + " tokenCreationEpochInSecs";
            }
            if (str.isEmpty()) {
                return new a(this.a, this.b, this.c, this.d, this.e.longValue(), this.f.longValue(), this.g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public com.google.firebase.installations.local.b.a b(String str) {
            this.c = str;
            return this;
        }

        @Override
        public com.google.firebase.installations.local.b.a c(long j) {
            this.e = Long.valueOf(j);
            return this;
        }

        @Override
        public com.google.firebase.installations.local.b.a d(String str) {
            this.a = str;
            return this;
        }

        @Override
        public com.google.firebase.installations.local.b.a e(String str) {
            this.g = str;
            return this;
        }

        @Override
        public com.google.firebase.installations.local.b.a f(String str) {
            this.d = str;
            return this;
        }

        @Override
        public com.google.firebase.installations.local.b.a g(PersistedInstallation.RegistrationStatus registrationStatus) {
            if (registrationStatus == null) {
                throw new NullPointerException("Null registrationStatus");
            }
            this.b = registrationStatus;
            return this;
        }

        @Override
        public com.google.firebase.installations.local.b.a h(long j) {
            this.f = Long.valueOf(j);
            return this;
        }

        public b() {
        }

        public b(com.google.firebase.installations.local.b bVar) {
            this.a = bVar.d();
            this.b = bVar.g();
            this.c = bVar.b();
            this.d = bVar.f();
            this.e = Long.valueOf(bVar.c());
            this.f = Long.valueOf(bVar.h());
            this.g = bVar.e();
        }
    }

    @Override
    public String b() {
        return this.d;
    }

    @Override
    public long c() {
        return this.f;
    }

    @Override
    public String d() {
        return this.b;
    }

    @Override
    public String e() {
        return this.h;
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
        String str3 = this.b;
        if (str3 != null ? str3.equals(bVar.d()) : bVar.d() == null) {
            if (this.c.equals(bVar.g()) && ((str = this.d) != null ? str.equals(bVar.b()) : bVar.b() == null) && ((str2 = this.e) != null ? str2.equals(bVar.f()) : bVar.f() == null) && this.f == bVar.c() && this.g == bVar.h()) {
                String str4 = this.h;
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
        return this.e;
    }

    @Override
    public PersistedInstallation.RegistrationStatus g() {
        return this.c;
    }

    @Override
    public long h() {
        return this.g;
    }

    public int hashCode() {
        String str = this.b;
        int iHashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.c.hashCode()) * 1000003;
        String str2 = this.d;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.e;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j = this.f;
        int i = (iHashCode3 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.g;
        int i2 = (i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        String str4 = this.h;
        return i2 ^ (str4 != null ? str4.hashCode() : 0);
    }

    @Override
    public com.google.firebase.installations.local.b.a n() {
        return new b(this);
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.b + ", registrationStatus=" + this.c + ", authToken=" + this.d + ", refreshToken=" + this.e + ", expiresInSecs=" + this.f + ", tokenCreationEpochInSecs=" + this.g + ", fisError=" + this.h + StringSubstitutor.DEFAULT_VAR_END;
    }

    public a(String str, PersistedInstallation.RegistrationStatus registrationStatus, String str2, String str3, long j, long j2, String str4) {
        this.b = str;
        this.c = registrationStatus;
        this.d = str2;
        this.e = str3;
        this.f = j;
        this.g = j2;
        this.h = str4;
    }
}
