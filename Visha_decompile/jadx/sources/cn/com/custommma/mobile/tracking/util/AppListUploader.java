package cn.com.custommma.mobile.tracking.util;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.just.agentweb.DefaultWebClient;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import defpackage.na1;
import defpackage.ng9;
import defpackage.tf;
import defpackage.va1;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class AppListUploader {
    public static AppListUploader b;
    public static boolean c;
    public static Context d;
    public long a;

    public AppListUploader(Context context) {
        d = context;
        this.a = -1L;
    }

    public static AppListUploader e(Context context) {
        if (b == null) {
            synchronized (AppListUploader.class) {
                try {
                    if (b == null) {
                        b = new AppListUploader(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public final void d(String str, final va1 va1Var) {
        String str2;
        tf tfVar = va1Var.k;
        if (tfVar == null || TextUtils.isEmpty(tfVar.a) || tfVar.b <= 0) {
            return;
        }
        final String str3 = va1Var.b.a + "_uploadtime";
        if (this.a < 0) {
            this.a = ng9.a(d, "cn.com.mma.mobile.tracking.mgmi_ssp_other", str3);
        }
        long j = tfVar.b * 3600;
        final long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        if (jCurrentTimeMillis > this.a + j) {
            c = true;
            if (tfVar.a.startsWith("https://") || tfVar.a.startsWith(DefaultWebClient.HTTP_SCHEME)) {
                str2 = tfVar.a;
            } else {
                try {
                    URL url = new URL(str);
                    str2 = url.getProtocol() + "://" + url.getHost() + tfVar.a;
                } catch (Exception unused) {
                    str2 = DefaultWebClient.HTTP_SCHEME + va1Var.b.a + tfVar.a;
                }
            }
            final String str4 = str2;
            new Thread(new Runnable() {
                @Override
                public void run() {
                    String string;
                    try {
                        JSONObject jSONObject = new JSONObject();
                        JSONArray jSONArrayF = DeviceInfoUtil.f(AppListUploader.d);
                        Map mapK = DeviceInfoUtil.k(AppListUploader.d);
                        jSONObject.put("time", String.valueOf(System.currentTimeMillis()));
                        jSONObject.put("sdk", "MMASDK");
                        jSONObject.put("bundleid", AppListUploader.d.getPackageName());
                        jSONObject.put("sdkv", "V2.2.4");
                        jSONObject.put(DownloadFacadeEnum.USER_MAC, na1.j((String) mapK.get("MAC")));
                        jSONObject.put(DownloadFacadeEnum.USER_IMEI, na1.j((String) mapK.get("IMEI")));
                        jSONObject.put("androidid", na1.j((String) mapK.get("ANDROIDID")));
                        jSONObject.put("applist", jSONArrayF);
                        try {
                            string = Base64.encodeToString(jSONObject.toString().getBytes("utf-8"), 2);
                        } catch (UnsupportedEncodingException unused2) {
                            string = jSONObject.toString();
                        }
                        if (DeviceInfoUtil.w(AppListUploader.d) && a.b().e(str4, string, va1Var.k.c) != null) {
                            AppListUploader.this.a = jCurrentTimeMillis;
                            ng9.e(AppListUploader.d, "cn.com.mma.mobile.tracking.mgmi_ssp_other", str3, jCurrentTimeMillis);
                        }
                    } catch (Exception unused3) {
                    } finally {
                        boolean unused4 = AppListUploader.c = false;
                    }
                }
            }).start();
        }
    }

    public synchronized void f(String str, va1 va1Var) {
        if (c) {
            return;
        }
        d(str, va1Var);
    }
}
