package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.profile.UserProfile;

public final class C2695lj implements Xa {
    public final UserProfile a;

    public C2695lj(UserProfile userProfile) {
        this.a = userProfile;
    }

    @Override
    public final void a(Ya ya) {
        ya.reportUserProfile(this.a);
    }
}
