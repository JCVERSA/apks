package com.iab.omid.library.vungle.adsession;

import android.view.View;

public abstract class b {
    public static b a(c cVar, d dVar) {
        xe.g.a();
        xe.g.d(cVar, "AdSessionConfiguration is null");
        xe.g.d(dVar, "AdSessionContext is null");
        return new h(cVar, dVar);
    }

    public abstract void b();

    public abstract void c(View view);

    public abstract void d();
}
