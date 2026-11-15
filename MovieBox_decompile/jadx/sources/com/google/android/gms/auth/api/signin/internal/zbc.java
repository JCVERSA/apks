package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import androidx.loader.content.AsyncTaskLoader;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.SignInConnectionListener;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

public final class zbc extends AsyncTaskLoader implements SignInConnectionListener {
    private final Semaphore zba;
    private final Set zbb;

    public zbc(Context context, Set set) {
        super(context);
        this.zba = new Semaphore(0);
        this.zbb = set;
    }

    @Override
    public final Object loadInBackground() {
        Iterator it = this.zbb.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (((GoogleApiClient) it.next()).maybeSignIn(this)) {
                i10++;
            }
        }
        try {
            this.zba.tryAcquire(i10, 5L, TimeUnit.SECONDS);
            return null;
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return null;
        }
    }

    @Override
    public final void onComplete() {
        this.zba.release();
    }

    @Override
    protected final void onStartLoading() {
        this.zba.drainPermits();
        forceLoad();
    }
}
