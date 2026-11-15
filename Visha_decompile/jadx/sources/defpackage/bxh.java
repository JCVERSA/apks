package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.internal.ads.zzfob;
import com.google.android.gms.internal.ads.zzfog;
import com.google.android.gms.internal.ads.zzfoi;
import com.mgmi.ssp.AdError;
import com.transsion.livecaption.constant.ICode;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public final class bxh implements a.InterfaceC0093a, a.b {
    public final txh b;
    public final String c;
    public final String d;
    public final LinkedBlockingQueue e;
    public final HandlerThread f;
    public final rwh g;
    public final long h;
    public final int i;

    public bxh(Context context, int i, int i2, String str, String str2, String str3, rwh rwhVar) {
        this.c = str;
        this.i = i2;
        this.d = str2;
        this.g = rwhVar;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.f = handlerThread;
        handlerThread.start();
        this.h = System.currentTimeMillis();
        txh txhVar = new txh(context, handlerThread.getLooper(), this, this, 19621000);
        this.b = txhVar;
        this.e = new LinkedBlockingQueue();
        txhVar.checkAvailabilityAndConnect();
    }

    public final zzfoi a(int i) {
        zzfoi zzfoiVar;
        try {
            zzfoiVar = (zzfoi) this.e.poll(50000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            d(2009, this.h, e);
            zzfoiVar = null;
        }
        d(3004, this.h, null);
        if (zzfoiVar != null) {
            if (zzfoiVar.zzc == 7) {
                rwh.g(3);
            } else {
                rwh.g(2);
            }
        }
        return zzfoiVar == null ? new zzfoi(null, 1) : zzfoiVar;
    }

    public final void b() {
        txh txhVar = this.b;
        if (txhVar != null) {
            if (txhVar.isConnected() || txhVar.isConnecting()) {
                txhVar.disconnect();
            }
        }
    }

    public final zzfob c() {
        try {
            return this.b.I();
        } catch (DeadObjectException | IllegalStateException unused) {
            return null;
        }
    }

    public final void d(int i, long j, Exception exc) {
        this.g.c(i, System.currentTimeMillis() - j, exc);
    }

    @Override
    public final void onConnected(Bundle bundle) {
        zzfob zzfobVarC = c();
        if (zzfobVarC != null) {
            try {
                zzfoi zzfoiVarZzf = zzfobVarC.zzf(new zzfog(1, this.i, this.c, this.d));
                d(ICode.BUSINESSES.ACTION_START_SUBTITLE, this.h, null);
                this.e.put(zzfoiVarZzf);
            } catch (Throwable th) {
                try {
                    d(2010, this.h, new Exception(th));
                } finally {
                    b();
                    this.f.quit();
                }
            }
        }
    }

    @Override
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            d(4012, this.h, null);
            this.e.put(new zzfoi(null, 1));
        } catch (InterruptedException unused) {
        }
    }

    @Override
    public final void onConnectionSuspended(int i) {
        try {
            d(AdError.ERROR_REASON_TIME_OUT, this.h, null);
            this.e.put(new zzfoi(null, 1));
        } catch (InterruptedException unused) {
        }
    }
}
