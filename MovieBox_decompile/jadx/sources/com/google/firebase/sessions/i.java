package com.google.firebase.sessions;

import kotlin.jvm.internal.Intrinsics;

public final class i {

    private final String f31861a;

    public i(String str) {
        this.f31861a = str;
    }

    public final String a() {
        return this.f31861a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof i) && Intrinsics.c(this.f31861a, ((i) obj).f31861a);
    }

    public int hashCode() {
        String str = this.f31861a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public String toString() {
        return "FirebaseSessionsData(sessionId=" + this.f31861a + ')';
    }
}
