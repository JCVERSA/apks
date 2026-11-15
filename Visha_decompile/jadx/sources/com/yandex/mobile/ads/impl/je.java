package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.json.JSONObject;

public final class je {
    private final String a;
    private final String b;

    public je(ke keVar, JSONObject jSONObject) {
        y45.j(keVar, "appAdAnalyticsReportType");
        y45.j(jSONObject, "payloadJson");
        this.a = keVar.a();
        String string = jSONObject.toString();
        y45.i(string, "toString(...)");
        this.b = string;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof je)) {
            return false;
        }
        je jeVar = (je) obj;
        return y45.e(jeVar.a, this.a) && y45.e(jeVar.b, this.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }
}
