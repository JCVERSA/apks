package com.google.android.gms.internal.location;

import com.google.android.gms.location.LocationResult;
import defpackage.io5;

public final class a implements com.google.android.gms.common.api.internal.d.b {
    public final LocationResult a;

    public a(zzar zzarVar, LocationResult locationResult) {
        this.a = locationResult;
    }

    @Override
    public final void a(Object obj) {
        ((io5) obj).onLocationResult(this.a);
    }

    @Override
    public final void b() {
    }
}
