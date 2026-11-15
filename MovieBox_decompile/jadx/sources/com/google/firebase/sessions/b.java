package com.google.firebase.sessions;

import kotlin.jvm.internal.Intrinsics;

public final class b {

    private final String f31812a;

    private final String f31813b;

    private final String f31814c;

    private final String f31815d;

    private final LogEnvironment f31816e;

    private final a f31817f;

    public b(String appId, String deviceModel, String sessionSdkVersion, String osVersion, LogEnvironment logEnvironment, a androidAppInfo) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(deviceModel, "deviceModel");
        Intrinsics.h(sessionSdkVersion, "sessionSdkVersion");
        Intrinsics.h(osVersion, "osVersion");
        Intrinsics.h(logEnvironment, "logEnvironment");
        Intrinsics.h(androidAppInfo, "androidAppInfo");
        this.f31812a = appId;
        this.f31813b = deviceModel;
        this.f31814c = sessionSdkVersion;
        this.f31815d = osVersion;
        this.f31816e = logEnvironment;
        this.f31817f = androidAppInfo;
    }

    public final a a() {
        return this.f31817f;
    }

    public final String b() {
        return this.f31812a;
    }

    public final String c() {
        return this.f31813b;
    }

    public final LogEnvironment d() {
        return this.f31816e;
    }

    public final String e() {
        return this.f31815d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f31812a, bVar.f31812a) && Intrinsics.c(this.f31813b, bVar.f31813b) && Intrinsics.c(this.f31814c, bVar.f31814c) && Intrinsics.c(this.f31815d, bVar.f31815d) && this.f31816e == bVar.f31816e && Intrinsics.c(this.f31817f, bVar.f31817f);
    }

    public final String f() {
        return this.f31814c;
    }

    public int hashCode() {
        return (((((((((this.f31812a.hashCode() * 31) + this.f31813b.hashCode()) * 31) + this.f31814c.hashCode()) * 31) + this.f31815d.hashCode()) * 31) + this.f31816e.hashCode()) * 31) + this.f31817f.hashCode();
    }

    public String toString() {
        return "ApplicationInfo(appId=" + this.f31812a + ", deviceModel=" + this.f31813b + ", sessionSdkVersion=" + this.f31814c + ", osVersion=" + this.f31815d + ", logEnvironment=" + this.f31816e + ", androidAppInfo=" + this.f31817f + ')';
    }
}
