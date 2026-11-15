package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import defpackage.cf1;
import defpackage.t4h;
import defpackage.wd8;

public final class i implements ServiceConnection, com.google.android.gms.common.internal.a.InterfaceC0093a, com.google.android.gms.common.internal.a.b {
    public volatile boolean b;
    public volatile t4h c;
    public final j d;

    public i(j jVar) {
        this.d = jVar;
    }

    public final void b(Intent intent) {
        this.d.g();
        Context contextE = this.d.a.e();
        cf1 cf1VarB = cf1.b();
        synchronized (this) {
            try {
                if (this.b) {
                    this.d.a.b().u().a("Connection attempt already in progress");
                    return;
                }
                this.d.a.b().u().a("Using local app measurement service");
                this.b = true;
                cf1VarB.a(contextE, intent, this.d.c, 129);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        this.d.g();
        Context contextE = this.d.a.e();
        synchronized (this) {
            try {
                if (this.b) {
                    this.d.a.b().u().a("Connection attempt already in progress");
                    return;
                }
                if (this.c != null && (this.c.isConnecting() || this.c.isConnected())) {
                    this.d.a.b().u().a("Already awaiting connection attempt");
                    return;
                }
                this.c = new t4h(contextE, Looper.getMainLooper(), this, this);
                this.d.a.b().u().a("Connecting to remote service");
                this.b = true;
                wd8.l(this.c);
                this.c.checkAvailabilityAndConnect();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        if (this.c != null && (this.c.isConnected() || this.c.isConnecting())) {
            this.c.disconnect();
        }
        this.c = null;
    }

    @Override
    public final void onConnected(Bundle bundle) {
        wd8.e("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                wd8.l(this.c);
                this.d.a.a().w(new zzjo(this, (zzee) this.c.getService()));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.c = null;
                this.b = false;
            }
        }
    }

    @Override
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        wd8.e("MeasurementServiceConnection.onConnectionFailed");
        c cVarE = this.d.a.E();
        if (cVarE != null) {
            cVarE.v().b("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.b = false;
            this.c = null;
        }
        this.d.a.a().w(new zzjq(this));
    }

    @Override
    public final void onConnectionSuspended(int i) {
        wd8.e("MeasurementServiceConnection.onConnectionSuspended");
        this.d.a.b().p().a("Service connection suspended");
        this.d.a.a().w(new zzjp(this));
    }

    @Override
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        wd8.e("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.b = false;
                this.d.a.b().q().a("Service connected with null binder");
                return;
            }
            zzee zzecVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    zzecVar = iInterfaceQueryLocalInterface instanceof zzee ? (zzee) iInterfaceQueryLocalInterface : new zzec(iBinder);
                    this.d.a.b().u().a("Bound to IMeasurementService interface");
                } else {
                    this.d.a.b().q().b("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException unused) {
                this.d.a.b().q().a("Service connect failed to get IMeasurementService");
            }
            if (zzecVar == null) {
                this.b = false;
                try {
                    cf1.b().c(this.d.a.e(), this.d.c);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                this.d.a.a().w(new zzjm(this, zzecVar));
            }
        }
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        wd8.e("MeasurementServiceConnection.onServiceDisconnected");
        this.d.a.b().p().a("Service disconnected");
        this.d.a.a().w(new zzjn(this, componentName));
    }
}
