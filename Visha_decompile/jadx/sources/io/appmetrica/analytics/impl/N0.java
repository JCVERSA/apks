package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.profile.UserProfile;

public final class N0 implements Runnable {
    public final UserProfile a;
    public final C2702m1 b;

    public N0(C2702m1 c2702m1, UserProfile userProfile) {
        this.b = c2702m1;
        this.a = userProfile;
    }

    @Override
    public final void run() {
        C2702m1.a(this.b).reportUserProfile(this.a);
    }
}
