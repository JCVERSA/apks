package com.yandex.mobile.ads.impl;

import com.transsion.push.PushConstants;
import defpackage.y45;

public final class zx {
    private final String a;
    private final ay b;

    public zx(String str, ay ayVar) {
        y45.j(str, PushConstants.PROVIDER_FIELD_SDK_VERSION);
        y45.j(ayVar, "sdkIntegrationStatusData");
        this.a = str;
        this.b = ayVar;
    }

    public final ay a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zx)) {
            return false;
        }
        zx zxVar = (zx) obj;
        return y45.e(this.a, zxVar.a) && y45.e(this.b, zxVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DebugPanelSdkIntegrationData(sdkVersion=" + this.a + ", sdkIntegrationStatusData=" + this.b + ")";
    }
}
