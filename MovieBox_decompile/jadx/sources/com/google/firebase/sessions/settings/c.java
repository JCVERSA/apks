package com.google.firebase.sessions.settings;

import kotlin.jvm.internal.Intrinsics;

public final class c {

    private final Boolean f31899a;

    private final Double f31900b;

    private final Integer f31901c;

    private final Integer f31902d;

    private final Long f31903e;

    public c(Boolean bool, Double d10, Integer num, Integer num2, Long l10) {
        this.f31899a = bool;
        this.f31900b = d10;
        this.f31901c = num;
        this.f31902d = num2;
        this.f31903e = l10;
    }

    public final Integer a() {
        return this.f31902d;
    }

    public final Long b() {
        return this.f31903e;
    }

    public final Boolean c() {
        return this.f31899a;
    }

    public final Integer d() {
        return this.f31901c;
    }

    public final Double e() {
        return this.f31900b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.f31899a, cVar.f31899a) && Intrinsics.c(this.f31900b, cVar.f31900b) && Intrinsics.c(this.f31901c, cVar.f31901c) && Intrinsics.c(this.f31902d, cVar.f31902d) && Intrinsics.c(this.f31903e, cVar.f31903e);
    }

    public int hashCode() {
        Boolean bool = this.f31899a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Double d10 = this.f31900b;
        int iHashCode2 = (iHashCode + (d10 == null ? 0 : d10.hashCode())) * 31;
        Integer num = this.f31901c;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.f31902d;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Long l10 = this.f31903e;
        return iHashCode4 + (l10 != null ? l10.hashCode() : 0);
    }

    public String toString() {
        return "SessionConfigs(sessionEnabled=" + this.f31899a + ", sessionSamplingRate=" + this.f31900b + ", sessionRestartTimeout=" + this.f31901c + ", cacheDuration=" + this.f31902d + ", cacheUpdatedTime=" + this.f31903e + ')';
    }
}
