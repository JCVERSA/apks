package com.iab.omid.library.hisavana.adsession;

import android.view.View;

public abstract class b {
    public static b b(c cVar, d dVar) {
        le.g.a();
        le.g.d(cVar, "AdSessionConfiguration is null");
        le.g.d(dVar, "AdSessionContext is null");
        return new h(cVar, dVar);
    }

    public abstract void a(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str);

    public abstract void c();

    public abstract void d(View view);

    public abstract void e();
}
