package com.google.firebase.sessions;

import kotlin.jvm.internal.Intrinsics;

public final class u {

    private final EventType f31908a;

    private final x f31909b;

    private final b f31910c;

    public u(EventType eventType, x sessionData, b applicationInfo) {
        Intrinsics.h(eventType, "eventType");
        Intrinsics.h(sessionData, "sessionData");
        Intrinsics.h(applicationInfo, "applicationInfo");
        this.f31908a = eventType;
        this.f31909b = sessionData;
        this.f31910c = applicationInfo;
    }

    public final b a() {
        return this.f31910c;
    }

    public final EventType b() {
        return this.f31908a;
    }

    public final x c() {
        return this.f31909b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return this.f31908a == uVar.f31908a && Intrinsics.c(this.f31909b, uVar.f31909b) && Intrinsics.c(this.f31910c, uVar.f31910c);
    }

    public int hashCode() {
        return (((this.f31908a.hashCode() * 31) + this.f31909b.hashCode()) * 31) + this.f31910c.hashCode();
    }

    public String toString() {
        return "SessionEvent(eventType=" + this.f31908a + ", sessionData=" + this.f31909b + ", applicationInfo=" + this.f31910c + ')';
    }
}
