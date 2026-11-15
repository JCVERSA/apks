package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import defpackage.b5e;
import defpackage.wd8;
import java.util.Objects;

public final class g extends b5e {
    public final IBinder g;
    public final a h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(a aVar, int i, IBinder iBinder, Bundle bundle) {
        super(aVar, i, bundle);
        Objects.requireNonNull(aVar);
        this.h = aVar;
        this.g = iBinder;
    }

    @Override
    public final boolean e() {
        try {
            IBinder iBinder = this.g;
            wd8.l(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            a aVar = this.h;
            if (!aVar.j().equals(interfaceDescriptor)) {
                String strJ = aVar.j();
                StringBuilder sb = new StringBuilder(String.valueOf(strJ).length() + 34 + String.valueOf(interfaceDescriptor).length());
                sb.append("service descriptor mismatch: ");
                sb.append(strJ);
                sb.append(" vs. ");
                sb.append(interfaceDescriptor);
                Log.w("GmsClient", sb.toString());
                return false;
            }
            IInterface iInterfaceD = aVar.d(this.g);
            if (iInterfaceD == null || !(aVar.w(2, 4, iInterfaceD) || aVar.w(3, 4, iInterfaceD))) {
                return false;
            }
            aVar.F(null);
            a.InterfaceC0093a interfaceC0093aC = aVar.C();
            Bundle connectionHint = aVar.getConnectionHint();
            if (interfaceC0093aC == null) {
                return true;
            }
            aVar.C().onConnected(connectionHint);
            return true;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }

    @Override
    public final void f(ConnectionResult connectionResult) {
        a aVar = this.h;
        if (aVar.D() != null) {
            aVar.D().onConnectionFailed(connectionResult);
        }
        aVar.o(connectionResult);
    }
}
