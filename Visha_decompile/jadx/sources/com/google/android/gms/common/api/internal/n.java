package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.IAccountAccessor;
import defpackage.s0e;
import defpackage.xd;
import java.util.Set;

public final class n implements com.google.android.gms.common.internal.a.c, s0e {
    public final com.google.android.gms.common.api.a.f a;
    public final xd b;
    public IAccountAccessor c = null;
    public Set d = null;
    public boolean e = false;
    public final c f;

    public n(c cVar, com.google.android.gms.common.api.a.f fVar, xd xdVar) {
        this.f = cVar;
        this.a = fVar;
        this.b = xdVar;
    }

    @Override
    public final void a(ConnectionResult connectionResult) {
        this.f.o.post(new zabt(this, connectionResult));
    }

    @Override
    public final void b(IAccountAccessor iAccountAccessor, Set set) {
        if (iAccountAccessor == null || set == null) {
            Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
            d(new ConnectionResult(4));
        } else {
            this.c = iAccountAccessor;
            this.d = set;
            i();
        }
    }

    @Override
    public final void c(int i) {
        m mVar = (m) this.f.k.get(this.b);
        if (mVar != null) {
            if (mVar.j) {
                mVar.F(new ConnectionResult(17));
            } else {
                mVar.onConnectionSuspended(i);
            }
        }
    }

    @Override
    public final void d(ConnectionResult connectionResult) {
        m mVar = (m) this.f.k.get(this.b);
        if (mVar != null) {
            mVar.F(connectionResult);
        }
    }

    public final void i() {
        IAccountAccessor iAccountAccessor;
        if (!this.e || (iAccountAccessor = this.c) == null) {
            return;
        }
        this.a.getRemoteService(iAccountAccessor, this.d);
    }
}
