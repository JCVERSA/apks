package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

public final class a implements Application.ActivityLifecycleCallbacks {
    public final b b;

    public a(b bVar) {
        this.b = bVar;
    }

    @Override
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        this.b.s(new zzdw(this, bundle, activity));
    }

    @Override
    public final void onActivityDestroyed(Activity activity) {
        this.b.s(new zzec(this, activity));
    }

    @Override
    public final void onActivityPaused(Activity activity) {
        this.b.s(new zzdz(this, activity));
    }

    @Override
    public final void onActivityResumed(Activity activity) {
        this.b.s(new zzdy(this, activity));
    }

    @Override
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zzbz zzbzVar = new zzbz();
        this.b.s(new zzeb(this, activity, zzbzVar));
        Bundle bundleZzb = zzbzVar.zzb(50L);
        if (bundleZzb != null) {
            bundle.putAll(bundleZzb);
        }
    }

    @Override
    public final void onActivityStarted(Activity activity) {
        this.b.s(new zzdx(this, activity));
    }

    @Override
    public final void onActivityStopped(Activity activity) {
        this.b.s(new zzea(this, activity));
    }
}
