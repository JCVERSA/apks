package com.yandex.mobile.ads.impl;

import android.text.Html;
import com.transsion.livecaption.constant.ICode;
import defpackage.e74;
import defpackage.ky5;
import defpackage.u95;
import defpackage.va5;
import defpackage.y45;
import defpackage.z95;
import defpackage.zfb;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Result;
import kotlin.jvm.internal.Lambda;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class vq0 {
    public static final vq0 a = new vq0();
    private static final u95 b = va5.b(null, a.b, 1, null);

    public static final class a extends Lambda implements e74 {
        public static final a b = new a();

        public a() {
            super(1);
        }

        @Override
        public final Object invoke(Object obj) {
            z95 z95Var = (z95) obj;
            y45.j(z95Var, "$this$Json");
            z95Var.d(false);
            z95Var.e(true);
            return zfb.a;
        }
    }

    private vq0() {
    }

    public static String a(String str, JSONObject jSONObject) throws JSONException {
        y45.j(jSONObject, "jsonObject");
        y45.j(str, "key");
        String string = jSONObject.getString(str);
        if (string == null || string.length() == 0 || y45.e("null", string)) {
            throw new JSONException("Json value can not be null or empty");
        }
        return String.valueOf(Html.fromHtml(string));
    }

    public static final Integer b(String str, JSONObject jSONObject) {
        Object objM279constructorimpl;
        y45.j(jSONObject, "jsonObject");
        y45.j(str, "name");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(Integer.valueOf(jSONObject.getInt(str)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        return (Integer) objM279constructorimpl;
    }

    public static List c(String str, JSONObject jSONObject) {
        y45.j(jSONObject, "parent");
        y45.j(str, "name");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return null;
        }
        List listC = defpackage.x71.c();
        int length = jSONArrayOptJSONArray.length();
        for (int i = 0; i < length; i++) {
            String strOptString = jSONArrayOptJSONArray.optString(i);
            a.getClass();
            if (strOptString != null && strOptString.length() != 0 && !y45.e("null", strOptString)) {
                y45.g(strOptString);
                listC.add(strOptString);
            }
        }
        return defpackage.x71.a(listC);
    }

    public static Map a(JSONObject jSONObject) {
        y45.j(jSONObject, "parent");
        y45.j("bidding_info", "name");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("bidding_info");
        if (jSONObjectOptJSONObject == null) {
            return null;
        }
        Map mapE = ky5.e();
        Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
        y45.i(itKeys, "keys(...)");
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strOptString = jSONObjectOptJSONObject.optString(next);
            a.getClass();
            if (strOptString != null && strOptString.length() != 0 && !y45.e("null", strOptString)) {
                y45.g(next);
                y45.g(strOptString);
                mapE.put(next, strOptString);
            }
        }
        return ky5.d(mapE);
    }

    public static final JSONObject a(String str) {
        Object objM279constructorimpl;
        y45.j(str, ICode.CALL.CALL_KEY_CONTENT);
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(new JSONObject(str));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        return (JSONObject) objM279constructorimpl;
    }

    public static u95 a() {
        return b;
    }
}
