package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import defpackage.u1i;
import defpackage.w1i;
import java.util.Iterator;

public final class u1i implements ServiceConnection {
    public final w1i b;

    public u1i(w1i w1iVar, v1i v1iVar) {
        this.b = w1iVar;
    }

    @Override
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        w1i w1iVar = this.b;
        w1iVar.c.c("LmdServiceConnectionManager.onServiceConnected(%s)", componentName);
        w1iVar.o(new Runnable() {
            @Override
            public final void run() {
                zzfqw zzfqwVarZzb = zzfqv.zzb(iBinder);
                u1i u1iVar = this.zza;
                w1i w1iVar2 = u1iVar.b;
                w1iVar2.j = zzfqwVarZzb;
                w1iVar2.c.c("linkToDeath", new Object[0]);
                try {
                    IInterface iInterface = w1iVar2.j;
                    if (iInterface == null) {
                        throw null;
                    }
                    iInterface.asBinder().linkToDeath(w1iVar2.h, 0);
                    w1i w1iVar3 = u1iVar.b;
                    w1iVar3.f = false;
                    synchronized (w1iVar3.e) {
                        try {
                            Iterator it = w1iVar3.e.iterator();
                            while (it.hasNext()) {
                                ((Runnable) it.next()).run();
                            }
                            w1iVar3.e.clear();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } catch (RemoteException e) {
                    u1iVar.b.c.b(e, "linkToDeath failed", new Object[0]);
                }
            }
        });
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        w1i w1iVar = this.b;
        w1iVar.c.c("LmdServiceConnectionManager.onServiceDisconnected(%s)", componentName);
        w1iVar.o(new Runnable() {
            @Override
            public final void run() {
                w1i w1iVar2 = this.zza.b;
                w1iVar2.c.c("unlinkToDeath", new Object[0]);
                IInterface iInterface = w1iVar2.j;
                iInterface.getClass();
                iInterface.asBinder().unlinkToDeath(w1iVar2.h, 0);
                w1iVar2.j = null;
                w1iVar2.f = false;
            }
        });
    }
}
