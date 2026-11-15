package com.doman.core.d;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.doman.core.CoreMain;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.hubsdk.display.BuildConfig;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class i {
    private Context a = CoreMain.getInstance().getContext();
    private String b = "PackProxy";
    private boolean c = false;

    public final void a() {
        b.a();
        final com.doman.core.a.f fVar = (com.doman.core.a.f) b.a("INIT_CONFIG_BEAN");
        if (fVar == null || !fVar.b) {
            return;
        }
        long j = fVar.f;
        if (j > 0) {
            long jCurrentTimeMillis = (System.currentTimeMillis() / 1000) - l.a("key_applist_uoloadtime");
            if (jCurrentTimeMillis <= 0 || jCurrentTimeMillis < j) {
                return;
            }
            n.a(new Runnable() {
                @Override
                public final void run() {
                    try {
                        com.doman.core.webview.c.a(com.doman.core.webview.c.at);
                        JSONObject jSONObjectB = i.this.b();
                        String str = fVar.g;
                        if (TextUtils.isEmpty(str)) {
                            com.doman.core.webview.c.a(com.doman.core.webview.c.av, "error:url is empty");
                            return;
                        }
                        if (f.a()) {
                            com.doman.core.b.b bVarA = com.doman.core.b.b.a(CoreMain.getInstance().getContext());
                            com.android.net.p.b<String> bVar = new com.android.net.p.b<String>() {
                                @Override
                                public final void a(String str2) {
                                }
                            };
                            com.doman.core.b.c cVarA = com.doman.core.b.c.a(bVarA.a);
                            try {
                                HashMap map = new HashMap();
                                JSONObject jSONObject = new JSONObject();
                                cVarA.a(jSONObject);
                                jSONObject.put("app", jSONObjectB.toString());
                                map.put("params", com.doman.core.d.c.b.a(jSONObject.toString(), com.doman.core.b.c.c));
                                cVarA.a.a(new com.doman.core.b.a.c(cVarA.b, com.doman.core.b.c.a(null, map), str, bVar));
                            } catch (Exception unused) {
                            }
                            l.a("key_applist_uoloadtime", System.currentTimeMillis() / 1000);
                        }
                    } catch (Exception e) {
                        com.doman.core.webview.c.a(com.doman.core.webview.c.av, "error:96 = " + e.toString());
                    }
                }
            });
        }
    }

    public final JSONObject b() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("androidid", com.doman.core.d.b.a.a(CoreMain.getInstance().getContext()));
        jSONObject2.put(CommonUrlParts.HUAWEI_OAID, CoreMain.getInstance().getOAID());
        jSONObject2.put(DownloadFacadeEnum.USER_IMEI, com.doman.core.d.b.a.a());
        jSONObject2.put("iccid", com.doman.core.d.b.a.b());
        jSONObject2.put("wifimac", com.doman.core.d.b.a.j());
        jSONObject2.put("brand", Build.BRAND);
        jSONObject2.put(CommonUrlParts.MODEL, Build.MODEL);
        jSONObject2.put("product", Build.PRODUCT);
        jSONObject2.put("device", Build.DEVICE);
        jSONObject2.put("board", Build.BOARD);
        jSONObject2.put(BuildConfig.FLAVOR, Build.DISPLAY);
        jSONObject2.put(TtmlNode.ATTR_ID, Build.ID);
        jSONObject2.put("serial", Build.SERIAL);
        jSONObject2.put(CommonUrlParts.MANUFACTURER, Build.MANUFACTURER);
        jSONObject2.put("fingerprint", Build.FINGERPRINT);
        jSONObject2.put("release", Build.VERSION.RELEASE);
        jSONObject.put("phone", jSONObject2);
        g.a(this.b, "queryFilterAppInfo appobj= ".concat(String.valueOf(jSONObject)));
        this.c = false;
        PackageManager packageManager = this.a.getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        g.a(this.b, "resolveinfoList  = " + listQueryIntentActivities.size());
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = new JSONArray();
        for (ResolveInfo resolveInfo : listQueryIntentActivities) {
            hashSet.add(resolveInfo.activityInfo.packageName);
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("packagename", resolveInfo.activityInfo.packageName);
            } catch (JSONException unused) {
            }
            jSONArray.put(jSONObject3);
        }
        JSONArray jSONArray2 = new JSONArray();
        try {
            int size = listQueryIntentActivities.size();
            for (int i = 0; i < size; i++) {
                JSONObject jSONObject4 = new JSONObject();
                ResolveInfo resolveInfo2 = listQueryIntentActivities.get(i);
                ActivityInfo activityInfo = resolveInfo2.activityInfo;
                ApplicationInfo applicationInfo = activityInfo.applicationInfo;
                if (applicationInfo != null) {
                    jSONObject4.put("packagename", applicationInfo.packageName);
                    jSONObject4.put("name", applicationInfo.name);
                    CharSequence applicationLabel = packageManager.getApplicationLabel(applicationInfo);
                    if (applicationLabel != null) {
                        jSONObject4.put("appname", applicationLabel.toString());
                    }
                    int i2 = applicationInfo.uid;
                    if (i2 < 10000 || i2 > 19999 || (applicationInfo.flags & 1) != 0) {
                        jSONObject4.put("systemapp", true);
                    } else {
                        jSONObject4.put("systemapp", false);
                    }
                } else {
                    jSONObject4.put("packagename", activityInfo.packageName);
                    jSONObject4.put("name", resolveInfo2.activityInfo.name);
                    CharSequence charSequenceLoadLabel = resolveInfo2.activityInfo.loadLabel(packageManager);
                    if (charSequenceLoadLabel != null) {
                        jSONObject4.put("appname", charSequenceLoadLabel.toString());
                    }
                }
                jSONArray2.put(jSONObject4);
            }
        } catch (Throwable unused2) {
        }
        g.a(this.b, "resolveJsonArray = " + jSONArray.length() + "packageInfoArray size = " + jSONArray2.length());
        jSONObject.put("resolveinfo", jSONArray);
        jSONObject.put("packageinfo", jSONArray2);
        return jSONObject;
    }
}
