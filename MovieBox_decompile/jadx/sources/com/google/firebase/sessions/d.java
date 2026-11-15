package com.google.firebase.sessions;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    private final DataCollectionState f31855a;

    private final DataCollectionState f31856b;

    private final double f31857c;

    public d() {
        this(null, null, 0.0d, 7, null);
    }

    public final DataCollectionState a() {
        return this.f31856b;
    }

    public final DataCollectionState b() {
        return this.f31855a;
    }

    public final double c() {
        return this.f31857c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f31855a == dVar.f31855a && this.f31856b == dVar.f31856b && Double.compare(this.f31857c, dVar.f31857c) == 0;
    }

    public int hashCode() {
        return (((this.f31855a.hashCode() * 31) + this.f31856b.hashCode()) * 31) + androidx.compose.animation.core.r.a(this.f31857c);
    }

    public String toString() {
        return "DataCollectionStatus(performance=" + this.f31855a + ", crashlytics=" + this.f31856b + ", sessionSamplingRate=" + this.f31857c + ')';
    }

    public d(DataCollectionState performance, DataCollectionState crashlytics, double d10) {
        Intrinsics.h(performance, "performance");
        Intrinsics.h(crashlytics, "crashlytics");
        this.f31855a = performance;
        this.f31856b = crashlytics;
        this.f31857c = d10;
    }

    public d(DataCollectionState dataCollectionState, DataCollectionState dataCollectionState2, double d10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? DataCollectionState.COLLECTION_SDK_NOT_INSTALLED : dataCollectionState, (i10 & 2) != 0 ? DataCollectionState.COLLECTION_SDK_NOT_INSTALLED : dataCollectionState2, (i10 & 4) != 0 ? 1.0d : d10);
    }
}
