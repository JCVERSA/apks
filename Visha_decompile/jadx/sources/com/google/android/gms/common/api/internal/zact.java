package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.signin.internal.zac;
import com.google.android.gms.signin.internal.zak;
import defpackage.ay0;
import defpackage.c1e;
import defpackage.k1e;
import defpackage.s0e;
import defpackage.wd8;
import java.util.Set;

public final class zact extends zac implements com.google.android.gms.common.api.c.a, com.google.android.gms.common.api.c.b {
    private static final com.google.android.gms.common.api.a.AbstractC0089a zaa = c1e.c;
    private final Context zab;
    private final Handler zac;
    private final com.google.android.gms.common.api.a.AbstractC0089a zad;
    private final Set zae;
    private final ay0 zaf;
    private k1e zag;
    private s0e zah;

    @WorkerThread
    public zact(Context context, Handler handler, @NonNull ay0 ay0Var) {
        com.google.android.gms.common.api.a.AbstractC0089a abstractC0089a = zaa;
        this.zab = context;
        this.zac = handler;
        this.zaf = (ay0) wd8.m(ay0Var, "ClientSettings must not be null");
        this.zae = ay0Var.g();
        this.zad = abstractC0089a;
    }

    public static void zad(zact zactVar, zak zakVar) {
        ConnectionResult connectionResultZaa = zakVar.zaa();
        if (connectionResultZaa.isSuccess()) {
            com.google.android.gms.common.internal.zav zavVar = (com.google.android.gms.common.internal.zav) wd8.l(zakVar.zab());
            ConnectionResult connectionResultZaa2 = zavVar.zaa();
            if (!connectionResultZaa2.isSuccess()) {
                String strValueOf = String.valueOf(connectionResultZaa2);
                Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(strValueOf), new Exception());
                zactVar.zah.d(connectionResultZaa2);
                zactVar.zag.disconnect();
                return;
            }
            zactVar.zah.b(zavVar.zab(), zactVar.zae);
        } else {
            zactVar.zah.d(connectionResultZaa);
        }
        zactVar.zag.disconnect();
    }

    @Override
    @WorkerThread
    public final void onConnected(@Nullable Bundle bundle) {
        this.zag.b(this);
    }

    @Override
    @WorkerThread
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        this.zah.d(connectionResult);
    }

    @Override
    @WorkerThread
    public final void onConnectionSuspended(int i) {
        this.zah.c(i);
    }

    @Override
    @BinderThread
    public final void zab(zak zakVar) {
        this.zac.post(new zacr(this, zakVar));
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.common.api.a$f, k1e] */
    @WorkerThread
    public final void zae(s0e s0eVar) {
        k1e k1eVar = this.zag;
        if (k1eVar != null) {
            k1eVar.disconnect();
        }
        this.zaf.k(Integer.valueOf(System.identityHashCode(this)));
        com.google.android.gms.common.api.a.AbstractC0089a abstractC0089a = this.zad;
        Context context = this.zab;
        Handler handler = this.zac;
        ay0 ay0Var = this.zaf;
        this.zag = abstractC0089a.b(context, handler.getLooper(), ay0Var, ay0Var.h(), this, this);
        this.zah = s0eVar;
        Set set = this.zae;
        if (set == null || set.isEmpty()) {
            this.zac.post(new zacq(this));
        } else {
            this.zag.zab();
        }
    }

    public final void zaf() {
        k1e k1eVar = this.zag;
        if (k1eVar != null) {
            k1eVar.disconnect();
        }
    }
}
