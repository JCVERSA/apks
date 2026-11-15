package com.google.firebase.crashlytics.internal.common;

final class c extends h0.a {

    private final String f30328a;

    private final String f30329b;

    private final String f30330c;

    c(String str, String str2, String str3) {
        if (str == null) {
            throw new NullPointerException("Null crashlyticsInstallId");
        }
        this.f30328a = str;
        this.f30329b = str2;
        this.f30330c = str3;
    }

    @Override
    public String c() {
        return this.f30328a;
    }

    @Override
    public String d() {
        return this.f30330c;
    }

    @Override
    public String e() {
        return this.f30329b;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h0.a)) {
            return false;
        }
        h0.a aVar = (h0.a) obj;
        if (this.f30328a.equals(aVar.c()) && ((str = this.f30329b) != null ? str.equals(aVar.e()) : aVar.e() == null)) {
            String str2 = this.f30330c;
            if (str2 == null) {
                if (aVar.d() == null) {
                    return true;
                }
            } else if (str2.equals(aVar.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (this.f30328a.hashCode() ^ 1000003) * 1000003;
        String str = this.f30329b;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f30330c;
        return iHashCode2 ^ (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "InstallIds{crashlyticsInstallId=" + this.f30328a + ", firebaseInstallationId=" + this.f30329b + ", firebaseAuthenticationToken=" + this.f30330c + "}";
    }
}
