package com.mgmi.ads.api.d;

import android.content.Context;
import android.view.ViewGroup;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.model.VASTAd;
import com.mgmi.model.r;
import java.lang.ref.WeakReference;

public abstract class b {
    public com.mgmi.ads.api.e.b a;
    protected com.mgmi.ads.api.c.a b;
    protected com.mgmi.ads.api.a c;
    protected r d;
    WeakReference<Context> e;

    public b(Context context) {
        this.e = new WeakReference<>(context);
    }

    public abstract void a();

    public abstract void a(VASTAd vASTAd, ViewGroup viewGroup, com.mgmi.ads.api.c.a aVar);

    public void a(boolean z) {
    }

    public void b() {
        this.d = null;
        this.a = null;
        this.b = null;
        this.c = null;
    }

    public void f() {
    }

    public com.mgmi.ads.api.a i() {
        return this.c;
    }

    public void j() {
        com.mgmi.ads.api.e.b bVar = this.a;
        if (bVar != null) {
            bVar.c();
            SourceKitLogger.a("mgmiad", "BaseViewMode.startManager");
        }
    }

    public void a(r rVar, com.mgmi.ads.api.e.b bVar, com.mgmi.ads.api.c.a aVar, com.mgmi.ads.api.a aVar2) {
        this.d = rVar;
        this.a = bVar;
        this.b = aVar;
        this.c = aVar2;
    }
}
