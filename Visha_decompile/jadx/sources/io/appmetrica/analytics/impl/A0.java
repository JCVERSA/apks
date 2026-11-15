package io.appmetrica.analytics.impl;

import android.util.Base64;
import defpackage.qv0;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import org.json.JSONObject;

public final class A0 {
    public static String a(C3025z0 c3025z0) {
        try {
            return Base64.encodeToString(new JSONObject().put("apiKey", c3025z0.a).put("packageName", c3025z0.b).put("reporterType", c3025z0.c.getStringValue()).put("processID", c3025z0.d).put("processSessionID", c3025z0.e).put("errorEnvironment", c3025z0.f).toString().getBytes(qv0.b), 0);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static C3025z0 a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(new String(Base64.decode(str, 0), qv0.b));
            return new C3025z0(jSONObject.getString("apiKey"), jSONObject.getString("packageName"), CounterConfigurationReporterType.INSTANCE.fromStringValue(jSONObject.getString("reporterType")), jSONObject.getInt("processID"), jSONObject.getString("processSessionID"), JsonUtils.optStringOrNull(jSONObject, "errorEnvironment"));
        } catch (Throwable unused) {
            return null;
        }
    }
}
