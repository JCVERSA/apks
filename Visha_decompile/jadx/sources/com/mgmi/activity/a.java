package com.mgmi.activity;

import android.app.Activity;
import android.view.ViewGroup;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.ads.api.a.b;

public class a {
    private static a b;
    public b a;
    private Activity c;
    private boolean d;
    private boolean e = false;
    private String f = "IncentiveVideoManager";
    private int g = 0;
    private IncentiveVideoActivity.a h;

    public static a a() {
        if (b == null) {
            synchronized (a.class) {
                try {
                    if (b == null) {
                        b = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public void b() {
        this.c = null;
    }

    public void c() {
        SourceKitLogger.a(this.f, "onBackPressed isComplete = " + this.d);
    }

    public void a(Activity activity) {
        this.c = activity;
        this.g = 0;
    }

    public void a(ViewGroup viewGroup) {
        b bVar = this.a;
        if (bVar != null) {
            bVar.a(viewGroup);
        }
    }
}
