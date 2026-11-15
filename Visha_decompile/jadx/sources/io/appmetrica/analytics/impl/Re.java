package io.appmetrica.analytics.impl;

import org.json.JSONObject;

public final class Re {
    public final String a;
    public final JSONObject b;
    public final X7 c;

    public Re(String str, JSONObject jSONObject, X7 x7) {
        this.a = str;
        this.b = jSONObject;
        this.c = x7;
    }

    public final String toString() {
        return "Candidate{trackingId='" + this.a + "', additionalParams=" + this.b + ", source=" + this.c + '}';
    }
}
