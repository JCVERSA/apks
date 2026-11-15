package com.google.android.gms.internal.p000authapi;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;
import defpackage.c3e;
import defpackage.jea;
import defpackage.zda;

final class zbax extends zbaa {
    final zda zba;

    public zbax(c3e c3eVar, zda zdaVar) {
        this.zba = zdaVar;
    }

    @Override
    public final void zbb(Status status, PendingIntent pendingIntent) {
        jea.b(status, pendingIntent, this.zba);
    }
}
