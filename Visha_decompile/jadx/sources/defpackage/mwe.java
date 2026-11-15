package defpackage;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.internal.ads.m0;

public final class mwe implements a.InterfaceC0093a {
    public final m0 b;

    public mwe(m0 m0Var) {
        this.b = m0Var;
    }

    @Override
    public final void onConnected(Bundle bundle) {
        m0 m0Var = this.b;
        synchronized (m0Var.c) {
            try {
                if (m0Var.d != null) {
                    m0Var.f = m0Var.d.J();
                }
            } catch (DeadObjectException e) {
                int i = zze.zza;
                zzo.zzh("Unable to obtain a cache service instance.", e);
                m0.h(this.b);
            }
            this.b.c.notifyAll();
        }
    }

    @Override
    public final void onConnectionSuspended(int i) {
        m0 m0Var = this.b;
        synchronized (m0Var.c) {
            m0Var.f = null;
            m0Var.c.notifyAll();
        }
    }
}
