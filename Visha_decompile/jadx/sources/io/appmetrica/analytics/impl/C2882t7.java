package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.services.FrameworkDetector;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

public final class C2882t7 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;
    public final String m;
    public final String n;

    public C2882t7(C2687lb c2687lb) {
        this.a = c2687lb.b("dId");
        this.b = c2687lb.b("uId");
        this.c = c2687lb.b("analyticsSdkVersionName");
        this.d = c2687lb.b("kitBuildNumber");
        this.e = c2687lb.b("kitBuildType");
        this.f = c2687lb.b("appVer");
        this.g = c2687lb.optString("app_debuggable", "0");
        this.h = c2687lb.b("appBuild");
        this.i = c2687lb.b("osVer");
        this.k = c2687lb.b("lang");
        this.l = c2687lb.b("root");
        this.m = c2687lb.optString(CommonUrlParts.APP_FRAMEWORK, FrameworkDetector.framework());
        int iOptInt = c2687lb.optInt("osApiLev", -1);
        this.j = iOptInt == -1 ? null : String.valueOf(iOptInt);
        int iOptInt2 = c2687lb.optInt("attribution_id", 0);
        this.n = iOptInt2 > 0 ? String.valueOf(iOptInt2) : null;
    }

    public final String toString() {
        return "DbNetworkTaskConfig{deviceId='" + this.a + "', uuid='" + this.b + "', analyticsSdkVersionName='" + this.c + "', kitBuildNumber='" + this.d + "', kitBuildType='" + this.e + "', appVersion='" + this.f + "', appDebuggable='" + this.g + "', appBuildNumber='" + this.h + "', osVersion='" + this.i + "', osApiLevel='" + this.j + "', locale='" + this.k + "', deviceRootStatus='" + this.l + "', appFramework='" + this.m + "', attributionId='" + this.n + "'}";
    }

    public C2882t7() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
    }
}
