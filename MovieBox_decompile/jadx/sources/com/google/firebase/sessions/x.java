package com.google.firebase.sessions;

import kotlin.jvm.internal.Intrinsics;

public final class x {

    private final String f31915a;

    private final String f31916b;

    private final int f31917c;

    private final long f31918d;

    private final d f31919e;

    private final String f31920f;

    private final String f31921g;

    public x(String sessionId, String firstSessionId, int i10, long j10, d dataCollectionStatus, String firebaseInstallationId, String firebaseAuthenticationToken) {
        Intrinsics.h(sessionId, "sessionId");
        Intrinsics.h(firstSessionId, "firstSessionId");
        Intrinsics.h(dataCollectionStatus, "dataCollectionStatus");
        Intrinsics.h(firebaseInstallationId, "firebaseInstallationId");
        Intrinsics.h(firebaseAuthenticationToken, "firebaseAuthenticationToken");
        this.f31915a = sessionId;
        this.f31916b = firstSessionId;
        this.f31917c = i10;
        this.f31918d = j10;
        this.f31919e = dataCollectionStatus;
        this.f31920f = firebaseInstallationId;
        this.f31921g = firebaseAuthenticationToken;
    }

    public final d a() {
        return this.f31919e;
    }

    public final long b() {
        return this.f31918d;
    }

    public final String c() {
        return this.f31921g;
    }

    public final String d() {
        return this.f31920f;
    }

    public final String e() {
        return this.f31916b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return Intrinsics.c(this.f31915a, xVar.f31915a) && Intrinsics.c(this.f31916b, xVar.f31916b) && this.f31917c == xVar.f31917c && this.f31918d == xVar.f31918d && Intrinsics.c(this.f31919e, xVar.f31919e) && Intrinsics.c(this.f31920f, xVar.f31920f) && Intrinsics.c(this.f31921g, xVar.f31921g);
    }

    public final String f() {
        return this.f31915a;
    }

    public final int g() {
        return this.f31917c;
    }

    public int hashCode() {
        return (((((((((((this.f31915a.hashCode() * 31) + this.f31916b.hashCode()) * 31) + this.f31917c) * 31) + androidx.collection.s.a(this.f31918d)) * 31) + this.f31919e.hashCode()) * 31) + this.f31920f.hashCode()) * 31) + this.f31921g.hashCode();
    }

    public String toString() {
        return "SessionInfo(sessionId=" + this.f31915a + ", firstSessionId=" + this.f31916b + ", sessionIndex=" + this.f31917c + ", eventTimestampUs=" + this.f31918d + ", dataCollectionStatus=" + this.f31919e + ", firebaseInstallationId=" + this.f31920f + ", firebaseAuthenticationToken=" + this.f31921g + ')';
    }
}
