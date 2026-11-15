package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.internal.ads.t;
import com.google.android.gms.internal.ads.zzfnx;
import com.google.android.gms.internal.ads.zzfob;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public final class ywh implements a.InterfaceC0093a, a.b {
    public final txh b;
    public final String c;
    public final String d;
    public final LinkedBlockingQueue e;
    public final HandlerThread f;

    public ywh(Context context, String str, String str2) {
        this.c = str;
        this.d = str2;
        HandlerThread handlerThread = new HandlerThread("GassClient");
        this.f = handlerThread;
        handlerThread.start();
        txh txhVar = new txh(context, handlerThread.getLooper(), this, this, 9200000);
        this.b = txhVar;
        this.e = new LinkedBlockingQueue();
        txhVar.checkAvailabilityAndConnect();
    }

    public static t a() {
        ooe ooeVarB0 = t.B0();
        ooeVarB0.w(32768L);
        return (t) ooeVarB0.q();
    }

    public final t b(int i) {
        t tVar;
        try {
            tVar = (t) this.e.poll(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            tVar = null;
        }
        return tVar == null ? a() : tVar;
    }

    public final void c() {
        txh txhVar = this.b;
        if (txhVar != null) {
            if (txhVar.isConnected() || txhVar.isConnecting()) {
                txhVar.disconnect();
            }
        }
    }

    public final zzfob d() {
        try {
            return this.b.I();
        } catch (DeadObjectException | IllegalStateException unused) {
            return null;
        }
    }

    @Override
    public final void onConnected(Bundle bundle) {
        zzfob zzfobVarD = d();
        if (zzfobVarD != null) {
            try {
                try {
                    this.e.put(zzfobVarD.zze(new zzfnx(this.c, this.d)).zza());
                } catch (Throwable unused) {
                    this.e.put(a());
                }
            } catch (InterruptedException unused2) {
            } finally {
                c();
                this.f.quit();
            }
        }
    }

    @Override
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            this.e.put(a());
        } catch (InterruptedException unused) {
        }
    }

    @Override
    public final void onConnectionSuspended(int i) {
        try {
            this.e.put(a());
        } catch (InterruptedException unused) {
        }
    }
}
