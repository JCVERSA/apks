package defpackage;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.internal.ads.h6;
import com.google.android.gms.internal.ads.zzfnu;

public final class exh implements a.InterfaceC0093a, a.b {
    public final txh b;
    public final h6 c;
    public final Object d = new Object();
    public boolean e = false;
    public boolean f = false;

    public exh(Context context, Looper looper, h6 h6Var) {
        this.c = h6Var;
        this.b = new txh(context, looper, this, this, 12800000);
    }

    private final void b() {
        synchronized (this.d) {
            try {
                txh txhVar = this.b;
                if (txhVar.isConnected() || txhVar.isConnecting()) {
                    txhVar.disconnect();
                }
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a() {
        synchronized (this.d) {
            try {
                if (!this.e) {
                    this.e = true;
                    this.b.checkAvailabilityAndConnect();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void onConnected(Bundle bundle) {
        synchronized (this.d) {
            try {
                if (this.f) {
                    return;
                }
                this.f = true;
                try {
                    this.b.I().zzg(new zzfnu(this.c.l()));
                } catch (Exception unused) {
                } finally {
                    b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void onConnectionFailed(ConnectionResult connectionResult) {
    }

    @Override
    public final void onConnectionSuspended(int i) {
    }
}
