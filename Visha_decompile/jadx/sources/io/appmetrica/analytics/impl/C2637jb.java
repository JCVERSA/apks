package io.appmetrica.analytics.impl;

import defpackage.qv0;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONObject;

public final class C2637jb {
    public static final H9 a(C2637jb c2637jb, Q9 q9, JSONObject jSONObject) {
        int i;
        c2637jb.getClass();
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
        h9.b = jSONObject.toString().getBytes(qv0.b);
        return h9;
    }
}
