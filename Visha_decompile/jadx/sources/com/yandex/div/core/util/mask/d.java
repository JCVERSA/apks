package com.yandex.div.core.util.mask;

import defpackage.a18;
import defpackage.j1a;
import defpackage.x71;
import defpackage.y45;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class d {
    public static final List a;
    public static final BaseInputMask.b b;

    static {
        List listE = x71.e(new BaseInputMask.c('0', "\\d", '_'));
        a = listE;
        b = new BaseInputMask.b(c(""), listE, false);
    }

    public static final List a() {
        return a;
    }

    public static final BaseInputMask.b b() {
        return b;
    }

    public static final String c(String str) throws JSONException {
        y45.j(str, "<this>");
        if (j1a.o0(str)) {
            return "000000000000000";
        }
        JSONObject jSONObject = a18.b;
        int i = 0;
        while (!jSONObject.has(ES6Iterator.VALUE_PROPERTY)) {
            String str2 = "*";
            if (i >= str.length()) {
                Object obj = jSONObject.get("*");
                y45.h(obj, "null cannot be cast to non-null type org.json.JSONObject");
                jSONObject = (JSONObject) obj;
                break;
            }
            int i2 = i + 1;
            String strValueOf = String.valueOf(str.charAt(i));
            if (jSONObject.has(strValueOf)) {
                str2 = strValueOf;
            }
            Object obj2 = jSONObject.get(str2);
            y45.h(obj2, "null cannot be cast to non-null type org.json.JSONObject");
            jSONObject = (JSONObject) obj2;
            i = i2;
        }
        return jSONObject.getString(ES6Iterator.VALUE_PROPERTY) + "00";
    }
}
