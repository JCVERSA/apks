package com.mbridge.msdk.splash.signal;

import android.text.TextUtils;
import android.util.Base64;
import android.webkit.WebView;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.db.m;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.l;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class c {

    private static String f36786a = "SplashSignalUtils";

    private static int f36787b = 0;

    private static int f36788c = 1;

    class a implements Runnable {

        final CampaignEx f36789a;

        a(CampaignEx campaignEx) {
            this.f36789a = campaignEx;
        }

        @Override
        public void run() {
            try {
                j jVarA = j.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                if (jVarA != null) {
                    if (jVarA.a(this.f36789a.getId())) {
                        jVarA.b(this.f36789a.getId());
                    } else {
                        com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
                        gVar.a(this.f36789a.getId());
                        gVar.b(this.f36789a.getFca());
                        gVar.c(this.f36789a.getFcb());
                        gVar.a(0);
                        gVar.d(1);
                        gVar.a(System.currentTimeMillis());
                        jVarA.b(gVar);
                    }
                }
                c.b(this.f36789a.getCampaignUnitId(), this.f36789a);
            } catch (Throwable th2) {
                o0.b(c.f36786a, th2.getMessage(), th2);
            }
        }
    }

    public static void b(Object obj, JSONObject jSONObject) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                a(obj, "data is empty");
                return;
            }
            CampaignEx campaignWithBackData = CampaignEx.parseCampaignWithBackData(jSONObjectOptJSONObject);
            if (campaignWithBackData == null) {
                a(obj, "data camapign is empty");
            } else {
                a(campaignWithBackData);
                b(obj, "");
            }
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.Object, org.json.JSONArray] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r5v0, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Object, org.json.JSONObject] */
    public static void a(Object obj, JSONObject jSONObject) {
        ?? r10;
        String str;
        JSONArray jSONArray;
        int i10;
        boolean z10;
        String str2;
        String str3;
        String str4 = "";
        ?? jSONObject2 = new JSONObject();
        String str5 = "message";
        int i11 = 1;
        if (jSONObject == null) {
            try {
                jSONObject2.put("code", 1);
                jSONObject2.put("message", "params is null");
                f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                return;
            } catch (JSONException e10) {
                o0.a(f36786a, e10.getMessage());
                return;
            }
        }
        try {
            jSONObject2.put("code", 0);
            jSONObject2.put("message", "");
            JSONArray jSONArray2 = jSONObject.getJSONArray("resource");
            try {
                if (jSONArray2 != null) {
                    try {
                        if (jSONArray2.length() > 0) {
                            ?? jSONArray3 = new JSONArray();
                            int length = jSONArray2.length();
                            int i12 = 0;
                            while (i12 < length) {
                                JSONObject jSONObject3 = jSONArray2.getJSONObject(i12);
                                String strOptString = jSONObject3.optString("ref", str4);
                                int i13 = jSONObject3.getInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
                                ?? jSONObject4 = new JSONObject();
                                if (i13 == i11 && !TextUtils.isEmpty(strOptString)) {
                                    JSONObject jSONObject5 = new JSONObject();
                                    l lVarB = m.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d())).b(strOptString);
                                    if (lVarB != null) {
                                        jSONArray = jSONArray2;
                                        i10 = length;
                                        o0.a(f36786a, "VideoBean not null");
                                        jSONObject5.put(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
                                        jSONObject5.put("videoDataLength", lVarB.d());
                                        String strE = lVarB.e();
                                        str = str5;
                                        if (TextUtils.isEmpty(strE)) {
                                            o0.a(f36786a, "VideoPath null");
                                            jSONObject5.put("path", str4);
                                            jSONObject5.put("path4Web", str4);
                                        } else {
                                            o0.a(f36786a, "VideoPath not null");
                                            jSONObject5.put("path", strE);
                                            jSONObject5.put("path4Web", strE);
                                        }
                                        if (lVarB.b() == 5) {
                                            jSONObject5.put("downloaded", 1);
                                            z10 = false;
                                        } else {
                                            z10 = false;
                                            jSONObject5.put("downloaded", 0);
                                        }
                                        jSONObject4.put(strOptString, jSONObject5);
                                        jSONArray3.put(jSONObject4);
                                    } else {
                                        str4 = str4;
                                        str = str5;
                                        jSONArray = jSONArray2;
                                        i10 = length;
                                        z10 = false;
                                        o0.a(f36786a, "VideoBean null");
                                    }
                                } else {
                                    str4 = str4;
                                    str = str5;
                                    jSONArray = jSONArray2;
                                    i10 = length;
                                    z10 = false;
                                    if (i13 == 2 && !TextUtils.isEmpty(strOptString)) {
                                        JSONObject jSONObject6 = new JSONObject();
                                        jSONObject6.put(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
                                        jSONObject6.put("path", H5DownLoadManager.getInstance().getH5ResAddress(strOptString) == null ? str4 : H5DownLoadManager.getInstance().getH5ResAddress(strOptString));
                                        jSONObject4.put(strOptString, jSONObject6);
                                        jSONArray3.put(jSONObject4);
                                    } else if (i13 == 3 && !TextUtils.isEmpty(strOptString)) {
                                        try {
                                            File file = new File(strOptString);
                                            if (file.exists() && file.isFile() && file.canRead()) {
                                                o0.a(f36786a, "getFileInfo Mraid file " + strOptString);
                                                str2 = "file:////" + strOptString;
                                            } else {
                                                str2 = str4;
                                            }
                                        } catch (Throwable th2) {
                                            if (MBridgeConstans.DEBUG) {
                                                th2.printStackTrace();
                                            }
                                        }
                                        JSONObject jSONObject7 = new JSONObject();
                                        jSONObject7.put(NativeComponentConstants.KEY_COMPONENT_TYPE, 3);
                                        jSONObject7.put("path", str2);
                                        jSONObject4.put(strOptString, jSONObject7);
                                        jSONArray3.put(jSONObject4);
                                    } else if (i13 == 4 && !TextUtils.isEmpty(strOptString)) {
                                        JSONObject jSONObject8 = new JSONObject();
                                        jSONObject8.put(NativeComponentConstants.KEY_COMPONENT_TYPE, 4);
                                        jSONObject8.put("path", s0.a(strOptString) == null ? str4 : s0.a(strOptString));
                                        jSONObject4.put(strOptString, jSONObject8);
                                        jSONArray3.put(jSONObject4);
                                    }
                                }
                                i12++;
                                jSONArray2 = jSONArray;
                                length = i10;
                                str5 = str;
                                str4 = str4;
                                i11 = 1;
                            }
                            jSONObject2.put("resource", jSONArray3);
                            f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                            return;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        str = str5;
                        r10 = str;
                        try {
                            jSONObject2.put("code", 1);
                            jSONObject2.put(r10, th.getLocalizedMessage());
                            f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                        } catch (JSONException e11) {
                            o0.a(f36786a, e11.getMessage());
                            return;
                        }
                    }
                }
                r10 = 1;
                try {
                    try {
                        jSONObject2.put("code", 1);
                        str3 = "message";
                        try {
                            jSONObject2.put(str3, "resource is null");
                            f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                            r10 = str3;
                        } catch (JSONException e12) {
                            e = e12;
                            o0.a(f36786a, e.getMessage());
                            r10 = str3;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        jSONObject2.put("code", 1);
                        jSONObject2.put(r10, th.getLocalizedMessage());
                        f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                    }
                } catch (JSONException e13) {
                    e = e13;
                    str3 = "message";
                }
            } catch (Throwable th5) {
                th = th5;
                r10 = str;
                jSONObject2.put("code", 1);
                jSONObject2.put(r10, th.getLocalizedMessage());
                f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            }
        } catch (Throwable th6) {
            th = th6;
            r10 = "message";
        }
    }

    public static void b(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", f36787b);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", str);
            jSONObject.put("data", jSONObject2);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            a(obj, e10.getMessage());
            o0.a(f36786a, e10.getMessage());
        }
    }

    public static void b(String str, CampaignEx campaignEx) {
        if (com.mbridge.msdk.foundation.same.buffer.b.f34540m == null || TextUtils.isEmpty(campaignEx.getId())) {
            return;
        }
        com.mbridge.msdk.foundation.same.buffer.b.a(str, campaignEx, "splash");
    }

    public static String a(int i10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i10);
            String string = jSONObject.toString();
            if (!TextUtils.isEmpty(string)) {
                return Base64.encodeToString(string.getBytes(), 2);
            }
        } catch (Throwable unused) {
            o0.b(f36786a, "code to string is error");
        }
        return "";
    }

    public static void a(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", f36788c);
            jSONObject.put("message", str);
            jSONObject.put("data", new JSONObject());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            o0.a(f36786a, e10.getMessage());
        }
    }

    public static void a(CampaignEx campaignEx) {
        new Thread(new a(campaignEx)).start();
    }

    public static void a(WebView webView, String str, String str2) {
        f.a().a(webView, str, str2);
    }

    public static void a(WebView webView) {
        o0.b(f36786a, "fireOnSignalCommunication");
        f.a().a(webView);
    }
}
