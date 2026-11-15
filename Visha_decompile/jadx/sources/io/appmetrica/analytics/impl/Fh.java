package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.profile.UserProfile;

public final class Fh implements Runnable {
    public final UserProfile a;
    public final Yh b;

    public Fh(Yh yh, UserProfile userProfile) {
        this.b = yh;
        this.a = userProfile;
    }

    @Override
    public final void run() {
        Yh yh = this.b;
        Yh.a(yh.a, yh.d, yh.e).reportUserProfile(this.a);
    }
}
