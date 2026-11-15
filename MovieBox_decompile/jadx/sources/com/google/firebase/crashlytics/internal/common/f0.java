package com.google.firebase.crashlytics.internal.common;

import kotlin.jvm.internal.Intrinsics;

public final class f0 {

    private final String f30350a;

    private final String f30351b;

    public f0(String str, String str2) {
        this.f30350a = str;
        this.f30351b = str2;
    }

    public final String a() {
        return this.f30351b;
    }

    public final String b() {
        return this.f30350a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f0)) {
            return false;
        }
        f0 f0Var = (f0) obj;
        return Intrinsics.c(this.f30350a, f0Var.f30350a) && Intrinsics.c(this.f30351b, f0Var.f30351b);
    }

    public int hashCode() {
        String str = this.f30350a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f30351b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "FirebaseInstallationId(fid=" + this.f30350a + ", authToken=" + this.f30351b + ')';
    }
}
