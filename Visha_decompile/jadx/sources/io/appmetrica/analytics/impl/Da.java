package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.HostRetryInfoProvider;

public final class Da implements HostRetryInfoProvider {
    public final Oe a;
    public final Ld b;

    public Da(Oe oe, Ld ld) {
        this.a = oe;
        this.b = ld;
    }

    public final Ld a() {
        return this.b;
    }

    @Override
    public final long getLastAttemptTimeSeconds() {
        return this.a.a(this.b, 0L);
    }

    @Override
    public final int getNextSendAttemptNumber() {
        return this.a.a(this.b, 1);
    }

    @Override
    public final void saveLastAttemptTimeSeconds(long j) {
        this.a.b(this.b, j).b();
    }

    @Override
    public final void saveNextSendAttemptNumber(int i) {
        this.a.b(this.b, i).b();
    }
}
