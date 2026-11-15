package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import defpackage.e0e;
import defpackage.i2e;
import defpackage.jc7;
import defpackage.l0e;
import defpackage.ozd;
import defpackage.p0e;
import defpackage.th;
import defpackage.ubc;
import defpackage.w1e;
import defpackage.wd8;
import defpackage.xd;
import defpackage.zda;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

public final class m implements com.google.android.gms.common.api.c.a, com.google.android.gms.common.api.c.b {
    public final com.google.android.gms.common.api.a.f c;
    public final xd d;
    public final ozd e;
    public final int h;
    public final zact i;
    public boolean j;
    public final c n;
    public final Queue b = new LinkedList();
    public final Set f = new HashSet();
    public final Map g = new HashMap();
    public final List k = new ArrayList();
    public ConnectionResult l = null;
    public int m = 0;

    public m(c cVar, com.google.android.gms.common.api.b bVar) {
        this.n = cVar;
        com.google.android.gms.common.api.a.f fVarR = bVar.r(cVar.o.getLooper(), this);
        this.c = fVarR;
        this.d = bVar.c();
        this.e = new ozd();
        this.h = bVar.q();
        if (fVarR.requiresSignIn()) {
            this.i = bVar.s(cVar.f, cVar.o);
        } else {
            this.i = null;
        }
    }

    public static void y(m mVar, e0e e0eVar) {
        if (mVar.k.contains(e0eVar) && !mVar.j) {
            if (mVar.c.isConnected()) {
                mVar.g();
            } else {
                mVar.B();
            }
        }
    }

    public static void z(m mVar, e0e e0eVar) {
        Feature[] featureArrG;
        if (mVar.k.remove(e0eVar)) {
            mVar.n.o.removeMessages(15, e0eVar);
            mVar.n.o.removeMessages(16, e0eVar);
            Feature feature = e0eVar.b;
            ArrayList arrayList = new ArrayList(mVar.b.size());
            for (w1e w1eVar : mVar.b) {
                if ((w1eVar instanceof l0e) && (featureArrG = ((l0e) w1eVar).g(mVar)) != null && th.c(featureArrG, feature)) {
                    arrayList.add(w1eVar);
                }
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                w1e w1eVar2 = (w1e) arrayList.get(i);
                mVar.b.remove(w1eVar2);
                w1eVar2.b(new UnsupportedApiCallException(feature));
            }
        }
    }

    public final void A() {
        wd8.d(this.n.o);
        this.l = null;
    }

    public final void B() {
        wd8.d(this.n.o);
        if (this.c.isConnected() || this.c.isConnecting()) {
            return;
        }
        try {
            c cVar = this.n;
            int iB = cVar.h.b(cVar.f, this.c);
            if (iB == 0) {
                c cVar2 = this.n;
                com.google.android.gms.common.api.a.f fVar = this.c;
                n nVar = new n(cVar2, fVar, this.d);
                if (fVar.requiresSignIn()) {
                    ((zact) wd8.l(this.i)).zae(nVar);
                }
                try {
                    this.c.connect(nVar);
                    return;
                } catch (SecurityException e) {
                    E(new ConnectionResult(10), e);
                    return;
                }
            }
            ConnectionResult connectionResult = new ConnectionResult(iB, null);
            Log.w("GoogleApiManager", "The service for " + this.c.getClass().getName() + " is not available: " + connectionResult.toString());
            E(connectionResult, null);
        } catch (IllegalStateException e2) {
            E(new ConnectionResult(10), e2);
        }
    }

    public final void C(w1e w1eVar) {
        wd8.d(this.n.o);
        if (this.c.isConnected()) {
            if (m(w1eVar)) {
                j();
                return;
            } else {
                this.b.add(w1eVar);
                return;
            }
        }
        this.b.add(w1eVar);
        ConnectionResult connectionResult = this.l;
        if (connectionResult == null || !connectionResult.hasResolution()) {
            B();
        } else {
            E(this.l, null);
        }
    }

    public final void D() {
        this.m++;
    }

    public final void E(ConnectionResult connectionResult, Exception exc) {
        wd8.d(this.n.o);
        zact zactVar = this.i;
        if (zactVar != null) {
            zactVar.zaf();
        }
        A();
        this.n.h.c();
        d(connectionResult);
        if ((this.c instanceof i2e) && connectionResult.getErrorCode() != 24) {
            this.n.c = true;
            c cVar = this.n;
            cVar.o.sendMessageDelayed(cVar.o.obtainMessage(19), 300000L);
        }
        if (connectionResult.getErrorCode() == 4) {
            e(c.r);
            return;
        }
        if (this.b.isEmpty()) {
            this.l = connectionResult;
            return;
        }
        if (exc != null) {
            wd8.d(this.n.o);
            f(null, exc, false);
            return;
        }
        if (!this.n.p) {
            e(c.g(this.d, connectionResult));
            return;
        }
        f(c.g(this.d, connectionResult), null, true);
        if (this.b.isEmpty() || n(connectionResult) || this.n.f(connectionResult, this.h)) {
            return;
        }
        if (connectionResult.getErrorCode() == 18) {
            this.j = true;
        }
        if (!this.j) {
            e(c.g(this.d, connectionResult));
            return;
        }
        c cVar2 = this.n;
        cVar2.o.sendMessageDelayed(Message.obtain(cVar2.o, 9, this.d), 5000L);
    }

    public final void F(ConnectionResult connectionResult) {
        wd8.d(this.n.o);
        com.google.android.gms.common.api.a.f fVar = this.c;
        fVar.disconnect("onSignInFailed for " + fVar.getClass().getName() + " with " + String.valueOf(connectionResult));
        E(connectionResult, null);
    }

    public final void G() {
        wd8.d(this.n.o);
        if (this.j) {
            B();
        }
    }

    public final void H() {
        wd8.d(this.n.o);
        e(c.q);
        this.e.f();
        for (d.a aVar : (d.a[]) this.g.keySet().toArray(new d.a[0])) {
            C(new r(aVar, new zda()));
        }
        d(new ConnectionResult(4));
        if (this.c.isConnected()) {
            this.c.onUserSignOut(new l(this));
        }
    }

    public final void I() {
        wd8.d(this.n.o);
        if (this.j) {
            l();
            c cVar = this.n;
            e(cVar.g.h(cVar.f) == 18 ? new Status(21, "Connection timed out waiting for Google Play services update to complete.") : new Status(22, "API failed to connect while resuming due to an unknown error."));
            this.c.disconnect("Timing out connection while resuming.");
        }
    }

    public final boolean a() {
        return this.c.requiresSignIn();
    }

    public final boolean b() {
        return o(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Feature c(Feature[] featureArr) {
        if (featureArr != null && featureArr.length != 0) {
            Feature[] availableFeatures = this.c.getAvailableFeatures();
            if (availableFeatures == null) {
                availableFeatures = new Feature[0];
            }
            ArrayMap arrayMap = new ArrayMap(availableFeatures.length);
            for (Feature feature : availableFeatures) {
                arrayMap.put(feature.getName(), Long.valueOf(feature.getVersion()));
            }
            for (Feature feature2 : featureArr) {
                Long l = (Long) arrayMap.get(feature2.getName());
                if (l == null || l.longValue() < feature2.getVersion()) {
                    return feature2;
                }
            }
        }
        return null;
    }

    public final void d(ConnectionResult connectionResult) {
        Iterator it = this.f.iterator();
        if (!it.hasNext()) {
            this.f.clear();
            return;
        }
        ubc.a(it.next());
        if (jc7.a(connectionResult, ConnectionResult.RESULT_SUCCESS)) {
            this.c.getEndpointPackageName();
        }
        throw null;
    }

    public final void e(Status status) {
        wd8.d(this.n.o);
        f(status, null, false);
    }

    public final void f(Status status, Exception exc, boolean z) {
        wd8.d(this.n.o);
        if ((status == null) == (exc == null)) {
            throw new IllegalArgumentException("Status XOR exception should be null");
        }
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            w1e w1eVar = (w1e) it.next();
            if (!z || w1eVar.a == 2) {
                if (status != null) {
                    w1eVar.a(status);
                } else {
                    w1eVar.b(exc);
                }
                it.remove();
            }
        }
    }

    public final void g() {
        ArrayList arrayList = new ArrayList(this.b);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            w1e w1eVar = (w1e) arrayList.get(i);
            if (!this.c.isConnected()) {
                return;
            }
            if (m(w1eVar)) {
                this.b.remove(w1eVar);
            }
        }
    }

    public final void h() {
        A();
        d(ConnectionResult.RESULT_SUCCESS);
        l();
        Iterator it = this.g.values().iterator();
        while (it.hasNext()) {
            p0e p0eVar = (p0e) it.next();
            if (c(p0eVar.a.c()) != null) {
                it.remove();
            } else {
                try {
                    p0eVar.a.d(this.c, new zda());
                } catch (DeadObjectException unused) {
                    onConnectionSuspended(3);
                    this.c.disconnect("DeadObjectException thrown while calling register listener method.");
                } catch (RemoteException unused2) {
                    it.remove();
                }
            }
        }
        g();
        j();
    }

    public final void i(int i) {
        A();
        this.j = true;
        this.e.e(i, this.c.getLastDisconnectMessage());
        xd xdVar = this.d;
        c cVar = this.n;
        cVar.o.sendMessageDelayed(Message.obtain(cVar.o, 9, xdVar), 5000L);
        xd xdVar2 = this.d;
        c cVar2 = this.n;
        cVar2.o.sendMessageDelayed(Message.obtain(cVar2.o, 11, xdVar2), 120000L);
        this.n.h.c();
        Iterator it = this.g.values().iterator();
        while (it.hasNext()) {
            ((p0e) it.next()).c.run();
        }
    }

    public final void j() {
        this.n.o.removeMessages(12, this.d);
        xd xdVar = this.d;
        c cVar = this.n;
        cVar.o.sendMessageDelayed(cVar.o.obtainMessage(12, xdVar), this.n.b);
    }

    public final void k(w1e w1eVar) {
        w1eVar.d(this.e, a());
        try {
            w1eVar.c(this);
        } catch (DeadObjectException unused) {
            onConnectionSuspended(1);
            this.c.disconnect("DeadObjectException thrown while running ApiCallRunner.");
        }
    }

    public final void l() {
        if (this.j) {
            c cVar = this.n;
            cVar.o.removeMessages(11, this.d);
            c cVar2 = this.n;
            cVar2.o.removeMessages(9, this.d);
            this.j = false;
        }
    }

    public final boolean m(w1e w1eVar) {
        if (!(w1eVar instanceof l0e)) {
            k(w1eVar);
            return true;
        }
        l0e l0eVar = (l0e) w1eVar;
        Feature featureC = c(l0eVar.g(this));
        if (featureC == null) {
            k(w1eVar);
            return true;
        }
        Log.w("GoogleApiManager", this.c.getClass().getName() + " could not execute call because it requires feature (" + featureC.getName() + ", " + featureC.getVersion() + ").");
        if (!this.n.p || !l0eVar.f(this)) {
            l0eVar.b(new UnsupportedApiCallException(featureC));
            return true;
        }
        e0e e0eVar = new e0e(this.d, featureC, null);
        int iIndexOf = this.k.indexOf(e0eVar);
        if (iIndexOf >= 0) {
            e0e e0eVar2 = (e0e) this.k.get(iIndexOf);
            this.n.o.removeMessages(15, e0eVar2);
            c cVar = this.n;
            cVar.o.sendMessageDelayed(Message.obtain(cVar.o, 15, e0eVar2), 5000L);
            return false;
        }
        this.k.add(e0eVar);
        c cVar2 = this.n;
        cVar2.o.sendMessageDelayed(Message.obtain(cVar2.o, 15, e0eVar), 5000L);
        c cVar3 = this.n;
        cVar3.o.sendMessageDelayed(Message.obtain(cVar3.o, 16, e0eVar), 120000L);
        ConnectionResult connectionResult = new ConnectionResult(2, null);
        if (n(connectionResult)) {
            return false;
        }
        this.n.f(connectionResult, this.h);
        return false;
    }

    public final boolean n(ConnectionResult connectionResult) {
        synchronized (c.s) {
            try {
                c cVar = this.n;
                if (cVar.l == null || !cVar.m.contains(this.d)) {
                    return false;
                }
                this.n.l.s(connectionResult, this.h);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean o(boolean z) {
        wd8.d(this.n.o);
        if (!this.c.isConnected() || !this.g.isEmpty()) {
            return false;
        }
        if (!this.e.g()) {
            this.c.disconnect("Timing out service connection.");
            return true;
        }
        if (!z) {
            return false;
        }
        j();
        return false;
    }

    @Override
    public final void onConnected(Bundle bundle) {
        if (Looper.myLooper() == this.n.o.getLooper()) {
            h();
        } else {
            this.n.o.post(new zabm(this));
        }
    }

    @Override
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        E(connectionResult, null);
    }

    @Override
    public final void onConnectionSuspended(int i) {
        if (Looper.myLooper() == this.n.o.getLooper()) {
            i(i);
        } else {
            this.n.o.post(new zabn(this, i));
        }
    }

    public final int p() {
        return this.h;
    }

    public final int q() {
        return this.m;
    }

    public final com.google.android.gms.common.api.a.f s() {
        return this.c;
    }

    public final Map u() {
        return this.g;
    }
}
