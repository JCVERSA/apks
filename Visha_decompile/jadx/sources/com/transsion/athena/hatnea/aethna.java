package com.transsion.athena.hatnea;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.athena.config.data.model.anehat;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.taaneh.athena;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.gslb.GslbSdk;
import com.transsion.push.PushConstants;
import defpackage.c4d;
import defpackage.e4d;
import defpackage.o3d;
import defpackage.ohd;
import defpackage.rbd;
import defpackage.sbd;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.Locale;
import org.apache.commons.lang3.BooleanUtils;
import org.json.JSONArray;
import org.json.JSONObject;

public class aethna extends anateh {
    private final String c;

    public aethna(Handler handler, String str) {
        super(handler);
        this.c = str;
    }

    @Override
    public void a() throws Throwable {
        byte[] bytes;
        Context contextI = AthenaAnalytics.I();
        boolean zK = com.transsion.athena.taaneh.a.k(contextI);
        String strA = anehat.a(this.c.getBytes(StandardCharsets.UTF_8));
        JSONArray jSONArray = new JSONArray();
        try {
            JSONObject jSONObjectPut = new JSONObject().put("appid", 9999).put("hostid", 9999).put(PushConstants.PROVIDER_FIELD_PKG, "").put("vn", "").put("vc", "").put("ins", "").put("sdkv", "3.1.1.2").put("isfl", zK).put("cnt", 1).put("events", new JSONArray().put(new JSONObject(this.c)));
            try {
                PackageManager packageManager = contextI.getPackageManager();
                String packageName = contextI.getPackageName();
                JSONObject jSONObjectPut2 = jSONObjectPut.put(PushConstants.PROVIDER_FIELD_PKG, packageName == null ? "" : packageName);
                String installerPackageName = packageManager.getInstallerPackageName(packageName);
                if (installerPackageName == null) {
                    installerPackageName = "";
                }
                jSONObjectPut2.put("ins", installerPackageName);
                PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
                if (packageInfo != null) {
                    String str = packageInfo.versionName;
                    if (str == null) {
                        str = "";
                    }
                    JSONObject jSONObjectPut3 = jSONObjectPut.put("vn", str);
                    String strValueOf = String.valueOf(packageInfo.versionCode);
                    if (strValueOf == null) {
                        strValueOf = "";
                    }
                    jSONObjectPut3.put("vc", strValueOf);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            jSONArray.put(jSONObjectPut);
        } catch (Exception e2) {
            c4d.d(Log.getStackTraceString(e2));
        }
        String strC = athena.c(contextI, 0);
        try {
            JSONObject jSONObject = new JSONObject();
            String strG = ehanat.g();
            if (strG == null) {
                strG = "";
            }
            JSONObject jSONObjectPut4 = jSONObject.put("channel", strG);
            String strG2 = com.transsion.athena.taaneh.a.g(contextI, "opid");
            if (strG2 == null) {
                strG2 = "";
            }
            JSONObject jSONObjectPut5 = jSONObjectPut4.put("opid", strG2);
            String strG3 = com.transsion.athena.taaneh.a.g(contextI, "oneid");
            if (strG3 == null) {
                strG3 = "";
            }
            JSONObject jSONObjectPut6 = jSONObjectPut5.put("tsid", strG3);
            String strA2 = sbd.a();
            if (strA2 == null) {
                strA2 = "";
            }
            JSONObject jSONObjectPut7 = jSONObjectPut6.put(PushConstants.PROVIDER_VAID, strA2);
            JSONObject jSONObject2 = new JSONObject();
            String strK = athena.k();
            if (strK == null) {
                strK = "";
            }
            JSONObject jSONObjectPut8 = jSONObject2.put("tz", strK);
            String strB = com.transsion.athena.taaneh.a.b();
            if (strB == null) {
                strB = "";
            }
            JSONObject jSONObjectPut9 = jSONObjectPut8.put("gaid", strB);
            String strB2 = ehanat.b();
            if (strB2 == null) {
                strB2 = "";
            }
            JSONObject jSONObjectPut10 = jSONObjectPut9.put("tuid", strB2).put("actype", (int) ehanat.c());
            String strA3 = ohd.a();
            if (strA3 == null) {
                strA3 = "";
            }
            JSONObject jSONObjectPut11 = jSONObjectPut10.put("osver", strA3);
            String str2 = Build.VERSION.RELEASE;
            if (str2 == null) {
                str2 = "";
            }
            JSONObject jSONObjectPut12 = jSONObjectPut11.put(DownloadFacadeEnum.USER_AVER, str2);
            String str3 = Build.DISPLAY;
            if (str3 == null) {
                str3 = "";
            }
            JSONObject jSONObjectPut13 = jSONObjectPut12.put("build", str3);
            String language = Locale.getDefault().getLanguage();
            if (language == null) {
                language = "";
            }
            JSONObject jSONObjectPut14 = jSONObjectPut13.put("lang", language);
            String str4 = Build.BRAND;
            if (str4 == null) {
                str4 = "";
            }
            JSONObject jSONObjectPut15 = jSONObjectPut14.put("brand", str4);
            String str5 = Build.MODEL;
            if (str5 == null) {
                str5 = "";
            }
            JSONObject jSONObjectPut16 = jSONObjectPut15.put(CommonUrlParts.MODEL, str5).put(DownloadFacadeEnum.USER_NET, o3d.d(contextI)).put("uts", System.currentTimeMillis()).put("try", 0);
            String strV = athena.v(contextI);
            if (strV == null) {
                strV = "";
            }
            JSONObject jSONObjectPut17 = jSONObjectPut16.put("mcc", strV);
            String strW = athena.w(contextI);
            if (strW == null) {
                strW = "";
            }
            JSONObject jSONObjectPut18 = jSONObjectPut17.put("mnc", strW).put("ekey", jSONObjectPut7.toString()).put("appids", jSONArray);
            JSONObject jSONObjectH = ehanat.h();
            if (jSONObjectH != null && jSONObjectH.length() > 0) {
                int length = jSONObjectH.toString().getBytes(StandardCharsets.UTF_8).length;
                if (length > 2000) {
                    String str6 = String.format(Locale.getDefault(), "custom param is too long,limit is 2000 bytes(now is %d bytes)", Integer.valueOf(length));
                    c4d.d(str6);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("errorMsg", str6);
                    jSONObjectPut7.put("cparam", jSONObject3.toString());
                } else {
                    jSONObjectPut7.put("cparam", jSONObjectH.toString());
                }
            }
            if (ehanat.C) {
                jSONObjectPut18.put("iid", strC == null ? "" : strC);
            }
            bytes = jSONObjectPut18.toString().getBytes(StandardCharsets.UTF_8);
        } catch (Exception e3) {
            c4d.d(Log.getStackTraceString(e3));
            bytes = null;
        }
        if (TextUtils.isEmpty(strC)) {
            strC = com.transsion.athena.taaneh.a.b();
        }
        if (TextUtils.isEmpty(strC)) {
            strC = athena.l(AthenaAnalytics.I());
        }
        rbd rbdVarF = b.f(TextUtils.isEmpty(null) ? GslbSdk.getDomain(ehanat.o(), true) : GslbSdk.getDomain(ehanat.b((String) null), true), bytes, 1, Collections.singletonList(9999), strA, strC + "_" + com.transsion.athena.data.athena.b());
        if (rbdVarF.a == 0) {
            e4d.a(contextI).g("gdpr_close", "");
        } else {
            c4d.e("PostGdprEventTask requestByPost error : %s", ((a) rbdVarF.b).d);
        }
        if (zK) {
            e4d.a(contextI).g("first_launch", BooleanUtils.FALSE);
        }
    }

    @Override
    public String c() {
        return "GDPR";
    }
}
