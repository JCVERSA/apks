package com.google.firebase.sessions;

import kotlin.jvm.internal.Intrinsics;

public final class t {

    private final String f31904a;

    private final String f31905b;

    private final int f31906c;

    private final long f31907d;

    public t(String sessionId, String firstSessionId, int i10, long j10) {
        Intrinsics.h(sessionId, "sessionId");
        Intrinsics.h(firstSessionId, "firstSessionId");
        this.f31904a = sessionId;
        this.f31905b = firstSessionId;
        this.f31906c = i10;
        this.f31907d = j10;
    }

    public final String a() {
        return this.f31905b;
    }

    public final String b() {
        return this.f31904a;
    }

    public final int c() {
        return this.f31906c;
    }

    public final long d() {
        return this.f31907d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return Intrinsics.c(this.f31904a, tVar.f31904a) && Intrinsics.c(this.f31905b, tVar.f31905b) && this.f31906c == tVar.f31906c && this.f31907d == tVar.f31907d;
    }

    public int hashCode() {
        return (((((this.f31904a.hashCode() * 31) + this.f31905b.hashCode()) * 31) + this.f31906c) * 31) + androidx.collection.s.a(this.f31907d);
    }

    public String toString() {
        return "SessionDetails(sessionId=" + this.f31904a + ", firstSessionId=" + this.f31905b + ", sessionIndex=" + this.f31906c + ", sessionStartTimestampUs=" + this.f31907d + ')';
    }
}
