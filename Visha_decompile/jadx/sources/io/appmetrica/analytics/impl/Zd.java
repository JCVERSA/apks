package io.appmetrica.analytics.impl;

import defpackage.qv0;
import java.lang.reflect.Field;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class Zd {
    public static final H9 a(Zd zd, Q9 q9, Object obj) {
        int i;
        zd.getClass();
        H9 h9 = new H9();
        switch (q9) {
            case UNKNOWN:
                i = 0;
                break;
            case APPSFLYER:
                i = 1;
                break;
            case ADJUST:
                i = 2;
                break;
            case KOCHAVA:
                i = 3;
                break;
            case TENJIN:
                i = 4;
                break;
            case AIRBRIDGE:
                i = 5;
                break;
            case SINGULAR:
                i = 6;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        h9.a = i;
        C2416ae.b.getClass();
        JSONObject jSONObject = new JSONObject();
        for (Field field : obj.getClass().getFields()) {
            try {
                jSONObject.put(field.getName(), field.get(obj));
            } catch (Throwable unused) {
            }
        }
        h9.b = jSONObject.toString().getBytes(qv0.b);
        return h9;
    }
}
