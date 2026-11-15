package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.util.Log;
import androidx.loader.content.AsyncTaskLoader;
import com.google.android.gms.common.api.c;
import defpackage.ui9;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

public final class zbc extends AsyncTaskLoader implements ui9 {
    public final Semaphore a;
    public final Set b;

    public zbc(Context context, Set set) {
        super(context);
        this.a = new Semaphore(0);
        this.b = set;
    }

    @Override
    public final Object loadInBackground() {
        Iterator it = this.b.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (((c) it.next()).d(this)) {
                i++;
            }
        }
        try {
            this.a.tryAcquire(i, 5L, TimeUnit.SECONDS);
            return null;
        } catch (InterruptedException e) {
            Log.i("GACSignInLoader", "Unexpected InterruptedException", e);
            Thread.currentThread().interrupt();
            return null;
        }
    }

    @Override
    public final void onStartLoading() {
        this.a.drainPermits();
        forceLoad();
    }
}
