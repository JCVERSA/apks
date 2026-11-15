package com.google.android.gms.common.api.internal;

import androidx.annotation.BinderThread;
import com.google.android.gms.signin.internal.zac;
import com.google.android.gms.signin.internal.zak;
import defpackage.tzd;
import defpackage.ubc;
import java.lang.ref.WeakReference;

final class zaar extends zac {
    private final WeakReference zaa;

    public zaar(tzd tzdVar) {
        this.zaa = new WeakReference(tzdVar);
    }

    @Override
    @BinderThread
    public final void zab(zak zakVar) {
        ubc.a(this.zaa.get());
    }
}
