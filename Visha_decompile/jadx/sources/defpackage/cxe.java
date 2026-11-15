package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.zzo;

public final class cxe {
    public final byte[] a;
    public int b;
    public final exe c;

    public cxe(exe exeVar, byte[] bArr, dxe dxeVar) {
        this.c = exeVar;
        this.a = bArr;
    }

    public final cxe a(int i) {
        this.b = i;
        return this;
    }

    public final synchronized void c() {
        this.c.c.execute(new Runnable() {
            @Override
            public final void run() {
                this.zza.d();
            }
        });
    }

    public final synchronized void d() {
        try {
            exe exeVar = this.c;
            if (exeVar.b) {
                exeVar.a.zzj(this.a);
                exeVar.a.zzi(0);
                exeVar.a.zzg(this.b);
                exeVar.a.zzh(null);
                exeVar.a.zzf();
            }
        } catch (RemoteException e) {
            zzo.zzf("Clearcut log failed", e);
        }
    }
}
