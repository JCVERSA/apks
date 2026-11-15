package com.mgmi.ads.api;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.ads.api.a.l;
import com.mgmi.ads.api.a.m;
import defpackage.h2d;

public class b {
    private static b a;
    private Context b;

    private b() {
        SourceKitLogger.a("Adx", "Adx create");
    }

    private void b() {
    }

    public void a(Context context) {
        this.b = context;
        b();
    }

    public static b a() {
        if (a == null) {
            synchronized (b.class) {
                try {
                    if (a == null) {
                        a = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public com.mgmi.ads.api.a.b a(@NonNull Context context, com.mgmi.ads.api.a.d dVar) {
        if (dVar.j().equals("ADS_NOFITY")) {
            return new l(context);
        }
        if (dVar.j().equals("ADS_BANNER")) {
            return new l(context);
        }
        if (!dVar.j().equals("ADS_ONLINE_VIDEO") && !dVar.j().equals("ADS_OFFVIDEO_ONLINE")) {
            if (dVar.j().equals("ADS_BOOT")) {
                Activity activityA = h2d.a(context);
                if (activityA != null) {
                    return new com.mgmi.ads.api.a.f(activityA);
                }
                return null;
            }
            if ("ADS_TYPE_INSIDE_BANNER".equals(dVar.j())) {
                return new l(context);
            }
            return null;
        }
        return new m(context);
    }
}
