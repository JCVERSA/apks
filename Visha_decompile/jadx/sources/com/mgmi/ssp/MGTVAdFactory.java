package com.mgmi.ssp;

import android.app.Application;
import android.content.Context;
import com.doman.core.CoreMain;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.ads.api.c;
import com.mgmi.f.e;
import com.mgmi.f.f;
import com.mgmi.platform.a;
import com.mgmi.platform.b.b;
import defpackage.h2d;
import defpackage.mpd;

public class MGTVAdFactory {
    private static MGTVAdFactory instance;
    private String uuid = "";
    private String did = "";
    private String oaid = "";
    private String gaid = "";
    private String chToken = "";
    private volatile boolean isInited = false;
    boolean isAllowedRC = true;

    public static MGTVAdFactory getInstance() {
        if (instance == null) {
            synchronized (MGTVAdFactory.class) {
                try {
                    if (instance == null) {
                        instance = new MGTVAdFactory();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    public static String getSdkVersion() {
        return b.a().b();
    }

    public static void setInback(boolean z) {
        e.i = z;
    }

    public static void setStickMode(boolean z) {
        e.h(z);
    }

    public void attachBaseContext(Context context) {
        CoreMain.getInstance().attachBaseContext(context);
    }

    public String getChToken() {
        String str = this.chToken;
        return str == null ? "" : str;
    }

    public String getDid() {
        return this.did;
    }

    public String getGaid() {
        return this.gaid;
    }

    public String getOaid() {
        String str = this.oaid;
        return str == null ? "" : str;
    }

    public String getUuid() {
        return this.uuid;
    }

    public void init(Application application, String str, String str2) {
        try {
            CoreMain.getInstance().initparams(mpd.F(application), str, str2);
            CoreMain.getInstance().onCreate(application, getOaid(), f.j(), false);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        c.a(application);
        if (h2d.f(application)) {
            try {
                com.mgmi.platform.b.a();
                com.mgmi.platform.b.u = str;
                com.mgmi.platform.b.a().b(application);
                b.a().a(application, true, str2);
                SourceKitLogger.a("mgmi", "init getSdkVersion:" + getSdkVersion());
                application.registerActivityLifecycleCallbacks(a.a());
                this.isInited = true;
            } catch (Exception e) {
                e.printStackTrace();
                SourceKitLogger.a("mgmi", "init Exception" + e.toString());
            }
        }
    }

    public boolean isAdSdkInit() {
        return this.isInited;
    }

    public boolean isAllowedRC() {
        return this.isAllowedRC;
    }

    public boolean isIsopenInerBrowser() {
        return e.d();
    }

    public boolean isSupportVip() {
        return e.b();
    }

    public boolean isVip() {
        return e.c();
    }

    public void setAdControlRendType(int i) {
        e.a().a(i);
    }

    public void setAllowedRC(boolean z) {
        b.a().a(z);
    }

    public void setAreaCode(int i) {
        com.mgmi.platform.e.b(i);
    }

    public void setChToken(String str) {
        this.chToken = str;
    }

    public void setDid(String str) {
        this.did = str;
    }

    public void setGaid(String str) {
        this.gaid = str;
    }

    public void setIsOverSea(int i) {
        com.mgmi.platform.e.a(i);
    }

    public void setIsVip(boolean z) {
        e.d(z);
    }

    public void setIsopenInerBrowser(boolean z) {
        e.e(z);
    }

    public void setOaid(String str) {
        this.oaid = str;
    }

    public void setSupportVip(boolean z) {
        e.c(z);
    }

    public void setUuid(String str) {
        this.uuid = str;
    }
}
