package com.iab.omid.library.bytedance2.internal;

import android.view.View;
import androidx.annotation.Nullable;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;

public class e {

    private final com.iab.omid.library.bytedance2.weakreference.a f32616a;

    private final String f32617b;

    private final FriendlyObstructionPurpose f32618c;

    private final String f32619d;

    public e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        this.f32616a = new com.iab.omid.library.bytedance2.weakreference.a(view);
        this.f32617b = view.getClass().getCanonicalName();
        this.f32618c = friendlyObstructionPurpose;
        this.f32619d = str;
    }

    public String a() {
        return this.f32619d;
    }

    public FriendlyObstructionPurpose b() {
        return this.f32618c;
    }

    public com.iab.omid.library.bytedance2.weakreference.a c() {
        return this.f32616a;
    }

    public String d() {
        return this.f32617b;
    }
}
