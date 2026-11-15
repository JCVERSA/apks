package com.iab.omid.library.mmadbridge.internal;

import android.view.View;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;

public class e {

    private final te.a f32865a;

    private final String f32866b;

    private final FriendlyObstructionPurpose f32867c;

    private final String f32868d;

    public e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.f32865a = new te.a(view);
        this.f32866b = view.getClass().getCanonicalName();
        this.f32867c = friendlyObstructionPurpose;
        this.f32868d = str;
    }

    public String a() {
        return this.f32868d;
    }

    public FriendlyObstructionPurpose b() {
        return this.f32867c;
    }

    public te.a c() {
        return this.f32865a;
    }

    public String d() {
        return this.f32866b;
    }
}
