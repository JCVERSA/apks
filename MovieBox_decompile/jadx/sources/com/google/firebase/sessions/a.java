package com.google.firebase.sessions;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final String f31798a;

    private final String f31799b;

    private final String f31800c;

    private final String f31801d;

    private final p f31802e;

    private final List f31803f;

    public a(String packageName, String versionName, String appBuildVersion, String deviceManufacturer, p currentProcessDetails, List appProcessDetails) {
        Intrinsics.h(packageName, "packageName");
        Intrinsics.h(versionName, "versionName");
        Intrinsics.h(appBuildVersion, "appBuildVersion");
        Intrinsics.h(deviceManufacturer, "deviceManufacturer");
        Intrinsics.h(currentProcessDetails, "currentProcessDetails");
        Intrinsics.h(appProcessDetails, "appProcessDetails");
        this.f31798a = packageName;
        this.f31799b = versionName;
        this.f31800c = appBuildVersion;
        this.f31801d = deviceManufacturer;
        this.f31802e = currentProcessDetails;
        this.f31803f = appProcessDetails;
    }

    public final String a() {
        return this.f31800c;
    }

    public final List b() {
        return this.f31803f;
    }

    public final p c() {
        return this.f31802e;
    }

    public final String d() {
        return this.f31801d;
    }

    public final String e() {
        return this.f31798a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f31798a, aVar.f31798a) && Intrinsics.c(this.f31799b, aVar.f31799b) && Intrinsics.c(this.f31800c, aVar.f31800c) && Intrinsics.c(this.f31801d, aVar.f31801d) && Intrinsics.c(this.f31802e, aVar.f31802e) && Intrinsics.c(this.f31803f, aVar.f31803f);
    }

    public final String f() {
        return this.f31799b;
    }

    public int hashCode() {
        return (((((((((this.f31798a.hashCode() * 31) + this.f31799b.hashCode()) * 31) + this.f31800c.hashCode()) * 31) + this.f31801d.hashCode()) * 31) + this.f31802e.hashCode()) * 31) + this.f31803f.hashCode();
    }

    public String toString() {
        return "AndroidApplicationInfo(packageName=" + this.f31798a + ", versionName=" + this.f31799b + ", appBuildVersion=" + this.f31800c + ", deviceManufacturer=" + this.f31801d + ", currentProcessDetails=" + this.f31802e + ", appProcessDetails=" + this.f31803f + ')';
    }
}
