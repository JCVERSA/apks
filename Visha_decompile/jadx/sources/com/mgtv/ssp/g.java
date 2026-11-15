package com.mgtv.ssp;

import android.content.Context;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.safe.SafeInformationInterface;
import com.mgtv.ssp.authbase.AccountInfo;
import com.mgtv.ssp.bean.config.SspSdkConfig;

public class g {
    private static g a;

    public static g a() {
        if (a == null) {
            synchronized (g.class) {
                try {
                    if (a == null) {
                        a = new g();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public String b() {
        return "2.0.6";
    }

    public boolean c() {
        SspSdkConfig sspSdkConfigE = com.mgtv.ssp.auth.b.a().e();
        return sspSdkConfigE != null && sspSdkConfigE.getShowLoading() == 1;
    }

    public String d() {
        SspSdkConfig sspSdkConfigE = com.mgtv.ssp.auth.b.a().e();
        return (sspSdkConfigE == null || sspSdkConfigE.getShowLoading() != 1) ? "" : sspSdkConfigE.getLoadingTitle();
    }

    public void b(boolean z) {
        com.hunantv.imgo.util.b.a(z);
    }

    public void b(String str) {
        com.hunantv.imgo.util.b.t(str);
    }

    public void a(Context context, String str, String str2, MgSspInitCallback mgSspInitCallback) {
        a(context, str, str2, mgSspInitCallback, null);
    }

    public void a(Context context, String str, String str2, MgSspInitCallback mgSspInitCallback, SafeInformationInterface safeInformationInterface) {
        if (context == null || context.getApplicationContext() == null) {
            return;
        }
        com.hunantv.imgo.util.b.m("");
        BaseApplication.setContext(context);
        com.hunantv.imgo.safe.a.a().a(safeInformationInterface);
        new com.mgtv.ssp.auth.a().a(context, "", new com.mgtv.ssp.bean.config.a(str, str2), mgSspInitCallback);
    }

    public void a(String str) {
        com.hunantv.imgo.util.b.n(str);
    }

    public void a(AccountInfo accountInfo) {
        if (accountInfo != null) {
            com.hunantv.imgo.util.b.o(accountInfo.getToken());
            com.hunantv.imgo.util.b.j(accountInfo.getOpenId());
        } else {
            com.hunantv.imgo.util.b.o("");
            com.hunantv.imgo.util.b.j("");
            com.hunantv.imgo.util.b.g("");
            com.hunantv.imgo.util.b.a(0);
        }
    }

    public void a(boolean z) {
        com.hunantv.imgo.util.b.e(z);
    }

    public void a(Context context, String str, String str2, MgtvJumpDataCallback mgtvJumpDataCallback) {
        b.a().a(context, str, str2, mgtvJumpDataCallback);
    }

    public void a(Context context, String str) {
        b.a().a(context, str, "vod");
    }
}
