package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.StrictMode;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzaf;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

public final class wdj implements ServiceConnection, jij {
    public final Map b;
    public int c;
    public boolean d;
    public IBinder e;
    public final sbj f;
    public ComponentName g;
    public final jhj h;

    public wdj(jhj jhjVar, sbj sbjVar) {
        Objects.requireNonNull(jhjVar);
        this.h = jhjVar;
        this.f = sbjVar;
        this.b = new HashMap();
        this.c = 2;
    }

    public final void a(String str) {
        sbj sbjVar = this.f;
        jhj jhjVar = this.h;
        jhjVar.h().removeMessages(1, sbjVar);
        jhjVar.i().c(jhjVar.g(), this);
        this.d = false;
        this.c = 2;
    }

    public final void b(ServiceConnection serviceConnection, ServiceConnection serviceConnection2, String str) {
        this.b.put(serviceConnection, serviceConnection2);
    }

    public final void c(ServiceConnection serviceConnection, String str) {
        this.b.remove(serviceConnection);
    }

    public final boolean d() {
        return this.d;
    }

    public final int e() {
        return this.c;
    }

    public final boolean f(ServiceConnection serviceConnection) {
        return this.b.containsKey(serviceConnection);
    }

    public final boolean g() {
        return this.b.isEmpty();
    }

    public final IBinder h() {
        return this.e;
    }

    public final ComponentName i() {
        return this.g;
    }

    public final ConnectionResult j(String str, Executor executor) {
        ConnectionResult connectionResult;
        try {
            Intent intentA = rde.a(this.h.g(), this.f);
            this.c = 3;
            StrictMode.VmPolicy vmPolicyA = z4g.a();
            try {
                jhj jhjVar = this.h;
                cf1 cf1VarI = jhjVar.i();
                Context contextG = jhjVar.g();
                sbj sbjVar = this.f;
                boolean zD = cf1VarI.d(contextG, str, intentA, this, 4225, executor);
                this.d = zD;
                if (zD) {
                    jhjVar.h().sendMessageDelayed(jhjVar.h().obtainMessage(1, sbjVar), jhjVar.j());
                    connectionResult = ConnectionResult.RESULT_SUCCESS;
                } else {
                    this.c = 2;
                    try {
                        jhjVar.i().c(jhjVar.g(), this);
                    } catch (IllegalArgumentException unused) {
                    }
                    connectionResult = new ConnectionResult(16);
                }
                return connectionResult;
            } finally {
                StrictMode.setVmPolicy(vmPolicyA);
            }
        } catch (zzaf e) {
            return e.zza;
        }
    }

    @Override
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        jhj jhjVar = this.h;
        synchronized (jhjVar.f()) {
            try {
                jhjVar.h().removeMessages(1, this.f);
                this.e = iBinder;
                this.g = componentName;
                Iterator it = this.b.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                }
                this.c = 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        jhj jhjVar = this.h;
        synchronized (jhjVar.f()) {
            try {
                jhjVar.h().removeMessages(1, this.f);
                this.e = null;
                this.g = componentName;
                Iterator it = this.b.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                }
                this.c = 2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
