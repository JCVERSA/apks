package com.mbridge.msdk.mbsignalcommon.Report;

import android.content.Context;
import android.util.Base64;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.n;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a {

    private static final String f35588c = "a";

    int f35589a = 0;

    int f35590b = 1;

    private static final class C0488a {

        private static a f35591a = new a();
    }

    public static a a() {
        return C0488a.f35591a;
    }

    public void a(Object obj, String str, JSONArray jSONArray, int i10) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        JSONObject jSONObjectOptJSONObject3;
        JSONObject jSONObjectOptJSONObject4;
        JSONObject jSONObjectOptJSONObject5;
        JSONObject jSONObjectOptJSONObject6;
        JSONObject jSONObjectOptJSONObject7;
        JSONObject jSONObjectOptJSONObject8;
        JSONObject jSONObjectOptJSONObject9;
        JSONObject jSONObjectOptJSONObject10;
        JSONObject jSONObjectOptJSONObject11;
        int i11;
        try {
            if (jSONArray == null) {
                a(this.f35590b, "called reporter failed, params empty", obj);
                return;
            }
            int length = jSONArray.length();
            if (length == 0) {
                a(this.f35590b, "called reporter failed, params empty", obj);
                return;
            }
            int i12 = 0;
            if ("reportMessageR".equalsIgnoreCase(str)) {
                StringBuffer stringBuffer = new StringBuffer();
                while (true) {
                    i11 = length - 1;
                    if (i12 >= i11) {
                        break;
                    }
                    JSONObject jSONObjectOptJSONObject12 = jSONArray.optJSONObject(i12);
                    if (jSONObjectOptJSONObject12 != null) {
                        stringBuffer.append(jSONObjectOptJSONObject12.optString("key"));
                        stringBuffer.append(UrlUtils.EQUAL_MARK);
                        stringBuffer.append(jSONObjectOptJSONObject12.opt(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                        stringBuffer.append(UrlUtils.AND_MARK);
                    }
                    i12++;
                }
                JSONObject jSONObjectOptJSONObject13 = jSONArray.optJSONObject(i11);
                if (jSONObjectOptJSONObject13 != null) {
                    stringBuffer.append(jSONObjectOptJSONObject13.optString("key"));
                    stringBuffer.append(UrlUtils.EQUAL_MARK);
                    stringBuffer.append(jSONObjectOptJSONObject13.opt(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                }
                a(stringBuffer.toString());
            } else if ("reportMessageD".equalsIgnoreCase(str)) {
                String string = "";
                String string2 = (length <= 0 || (jSONObjectOptJSONObject11 = jSONArray.optJSONObject(0)) == null) ? "" : jSONObjectOptJSONObject11.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                int i13 = (length <= 1 || (jSONObjectOptJSONObject10 = jSONArray.optJSONObject(1)) == null) ? -1 : jSONObjectOptJSONObject10.getInt(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                int i14 = (length <= 2 || (jSONObjectOptJSONObject9 = jSONArray.optJSONObject(2)) == null) ? -1 : jSONObjectOptJSONObject9.getInt(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                int i15 = (length <= 3 || (jSONObjectOptJSONObject8 = jSONArray.optJSONObject(3)) == null) ? -1 : jSONObjectOptJSONObject8.getInt(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                int i16 = (length <= 4 || (jSONObjectOptJSONObject7 = jSONArray.optJSONObject(4)) == null) ? -1 : jSONObjectOptJSONObject7.getInt(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                String string3 = (length <= 5 || (jSONObjectOptJSONObject6 = jSONArray.optJSONObject(5)) == null) ? "" : jSONObjectOptJSONObject6.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                String string4 = (length <= 6 || (jSONObjectOptJSONObject5 = jSONArray.optJSONObject(6)) == null) ? "" : jSONObjectOptJSONObject5.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                int i17 = (length <= 7 || (jSONObjectOptJSONObject4 = jSONArray.optJSONObject(7)) == null) ? -1 : jSONObjectOptJSONObject4.getInt(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                String string5 = (length <= 8 || (jSONObjectOptJSONObject3 = jSONArray.optJSONObject(8)) == null) ? "" : jSONObjectOptJSONObject3.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                int i18 = (length <= 9 || (jSONObjectOptJSONObject2 = jSONArray.optJSONObject(9)) == null) ? -1 : jSONObjectOptJSONObject2.getInt(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                if (length > 10 && (jSONObjectOptJSONObject = jSONArray.optJSONObject(10)) != null) {
                    string = jSONObjectOptJSONObject.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                }
                a(string2, i13, i14, i15, i16, string3, string4, i17, string5, i18, string);
            }
            a(this.f35589a, "called reporter success", obj);
        } catch (Throwable th2) {
            o0.a(f35588c, th2.getMessage());
            a(this.f35590b, "exception: " + th2.getMessage(), obj);
        }
    }

    public void a(String str) {
        d.b().d(str);
    }

    public void a(String str, int i10, int i11, int i12, int i13, String str2, String str3, int i14, String str4, int i15, String str5) {
        try {
            Context contextD = c.m().d();
            if (contextD != null) {
                n.a(g.a(contextD)).a(new m(str, i10, i11, i12, i13, str2, str3, i14, str4, i15, str5));
            }
        } catch (Throwable th2) {
            o0.a(f35588c, th2.getMessage());
        }
    }

    public void a(int i10, String str, Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i10);
            jSONObject.put("message", str);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (JSONException e10) {
            o0.a(f35588c, e10.getMessage());
        } catch (Throwable th2) {
            o0.a(f35588c, th2.getMessage());
        }
    }
}
