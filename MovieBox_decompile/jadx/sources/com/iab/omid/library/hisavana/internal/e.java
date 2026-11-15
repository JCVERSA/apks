package com.iab.omid.library.hisavana.internal;

import android.view.View;
import com.iab.omid.library.hisavana.adsession.FriendlyObstructionPurpose;

public class e {

    private final ne.a f32746a;

    private final String f32747b;

    private final FriendlyObstructionPurpose f32748c;

    private final String f32749d;

    public e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.f32746a = new ne.a(view);
        this.f32747b = view.getClass().getCanonicalName();
        this.f32748c = friendlyObstructionPurpose;
        this.f32749d = str;
    }

    public String a() {
        return this.f32749d;
    }

    public FriendlyObstructionPurpose b() {
        return this.f32748c;
    }

    public ne.a c() {
        return this.f32746a;
    }

    public String d() {
        return this.f32747b;
    }
}
