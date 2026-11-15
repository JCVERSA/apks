package com.mgmi.platform.b;

import android.app.Application;
import android.content.Context;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.b.c;
import com.mgmi.db.dao3.d;
import com.mgmi.f.f;
import defpackage.bgd;
import defpackage.f4d;
import defpackage.i4d;
import defpackage.k7d;
import defpackage.mpd;
import defpackage.x1d;

public class b {
    private static b b;
    private String e;
    private int f;
    private String g;
    private com.mgmi.platform.a.a h;
    private int c = 0;
    private boolean d = false;
    boolean a = true;

    private b() {
    }

    public void b(Context context) {
        try {
            d.a(context.getApplicationContext());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int c() {
        return f.p();
    }

    public String d() {
        return this.e;
    }

    public int e() {
        return this.f;
    }

    public int f() {
        return com.mgmi.platform.b.a().j();
    }

    public String g() {
        return this.g;
    }

    public com.mgmi.platform.a.a h() {
        return this.h;
    }

    public boolean i() {
        return this.a;
    }

    private void a(Context context) {
        c.a().a(context, "mgmiapicache");
    }

    public String b() {
        return "MGADSDK_3.5.9_241130";
    }

    public void a(Application application, boolean z, String str) {
        a(application, z, "", 0L, str);
    }

    public void a(Application application, boolean z, String str, long j, String str2) {
        com.mgmi.ads.api.c.a(application);
        com.mgmi.trace.a.a().a(j);
        this.e = str;
        if (!z) {
            com.mgmi.trace.a.a().b();
            SourceKitLogger.a("mgmiad", "MGMISDKFactory.initialize，isMainProcess：" + z + "，preInstallChannel：" + str + "，initCostTime：" + j);
            return;
        }
        SourceKitLogger.a("zp", "mgmi initialize process = " + Process.myPid());
        com.mgmi.platform.b.a(application);
        com.mgmi.ads.api.b.a().a(application);
        a((Context) application);
        f4d.a(application);
        a(application, str2);
        k7d.c(application);
        bgd.c();
        throw null;
    }

    public void a(Application application) {
        if (application != null) {
            com.mgmi.e.f.a(application);
        }
    }

    private void a(@NonNull final Application application, final String str) {
        i4d.a().b(new Runnable() {
            @Override
            public void run() {
                b.this.a(application);
                com.mgmi.platform.b.a().b(application, str);
                try {
                    b.this.b(application);
                    com.mgmi.d.a.a().a(application);
                    com.mgmi.e.b.a().a(application);
                } catch (Exception unused) {
                }
                mpd.D(application);
                x1d.a(application).c();
                k7d.c(application);
            }
        });
    }

    @Nullable
    public com.mgmi.ads.api.a.b a(@NonNull Context context, com.mgmi.ads.api.a.d dVar) {
        if (context != null) {
            if (!this.d) {
                StringBuilder sb = new StringBuilder();
                sb.append("MGMISDKFactory.createAdsLoader==null:mInitFlag is false，AdsType：");
                sb.append(dVar != null ? dVar.j() : "null");
                SourceKitLogger.a("mgmiad", sb.toString());
                return null;
            }
            return com.mgmi.ads.api.b.a().a(context, dVar);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("MGMISDKFactory.createAdsLoader==null:context is null，AdsType：");
        sb2.append(dVar != null ? dVar.j() : "null");
        SourceKitLogger.a("mgmiad", sb2.toString());
        return null;
    }

    public static b a() {
        if (b == null) {
            synchronized (b.class) {
                try {
                    if (b == null) {
                        b = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public void a(boolean z) {
        this.a = z;
    }
}
