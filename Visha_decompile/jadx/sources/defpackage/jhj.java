package defpackage;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import java.util.HashMap;
import java.util.concurrent.Executor;

public final class jhj extends ti4 {
    public final HashMap g = new HashMap();
    public final Context h;
    public volatile Handler i;
    public final yfj j;
    public final cf1 k;
    public final long l;
    public final long m;
    public volatile Executor n;

    public jhj(Context context, Looper looper, Executor executor) {
        yfj yfjVar = new yfj(this, null);
        this.j = yfjVar;
        this.h = context.getApplicationContext();
        this.i = new t6i(looper, yfjVar);
        this.k = cf1.b();
        this.l = 5000L;
        this.m = 300000L;
        this.n = executor;
    }

    @Override
    public final ConnectionResult c(sbj sbjVar, ServiceConnection serviceConnection, String str, Executor executor) {
        ConnectionResult connectionResultJ;
        wd8.m(serviceConnection, "ServiceConnection must not be null");
        HashMap map = this.g;
        synchronized (map) {
            try {
                wdj wdjVar = (wdj) map.get(sbjVar);
                if (executor == null) {
                    executor = this.n;
                }
                if (wdjVar == null) {
                    wdjVar = new wdj(this, sbjVar);
                    wdjVar.b(serviceConnection, serviceConnection, str);
                    connectionResultJ = wdjVar.j(str, executor);
                    map.put(sbjVar, wdjVar);
                } else {
                    this.i.removeMessages(0, sbjVar);
                    if (wdjVar.f(serviceConnection)) {
                        String string = sbjVar.toString();
                        StringBuilder sb = new StringBuilder(string.length() + 81);
                        sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                        sb.append(string);
                        throw new IllegalStateException(sb.toString());
                    }
                    wdjVar.b(serviceConnection, serviceConnection, str);
                    int iE = wdjVar.e();
                    if (iE == 1) {
                        serviceConnection.onServiceConnected(wdjVar.i(), wdjVar.h());
                    } else if (iE == 2) {
                        connectionResultJ = wdjVar.j(str, executor);
                    }
                    connectionResultJ = null;
                }
                if (wdjVar.d()) {
                    return ConnectionResult.RESULT_SUCCESS;
                }
                if (connectionResultJ == null) {
                    connectionResultJ = new ConnectionResult(-1);
                }
                return connectionResultJ;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void e(sbj sbjVar, ServiceConnection serviceConnection, String str) {
        wd8.m(serviceConnection, "ServiceConnection must not be null");
        HashMap map = this.g;
        synchronized (map) {
            try {
                wdj wdjVar = (wdj) map.get(sbjVar);
                if (wdjVar == null) {
                    String string = sbjVar.toString();
                    StringBuilder sb = new StringBuilder(string.length() + 50);
                    sb.append("Nonexistent connection status for service config: ");
                    sb.append(string);
                    throw new IllegalStateException(sb.toString());
                }
                if (!wdjVar.f(serviceConnection)) {
                    String string2 = sbjVar.toString();
                    StringBuilder sb2 = new StringBuilder(string2.length() + 76);
                    sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                    sb2.append(string2);
                    throw new IllegalStateException(sb2.toString());
                }
                wdjVar.c(serviceConnection, str);
                if (wdjVar.g()) {
                    this.i.sendMessageDelayed(this.i.obtainMessage(0, sbjVar), this.l);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final HashMap f() {
        return this.g;
    }

    public final Context g() {
        return this.h;
    }

    public final Handler h() {
        return this.i;
    }

    public final cf1 i() {
        return this.k;
    }

    public final long j() {
        return this.m;
    }
}
