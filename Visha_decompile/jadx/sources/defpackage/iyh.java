package defpackage;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.internal.ads.i6;
import com.google.android.gms.internal.ads.zzfou;

public final class iyh {
    public final byte[] a;
    public int b;
    public int c;
    public final i6 d;

    public iyh(i6 i6Var, byte[] bArr, jyh jyhVar) {
        this.d = i6Var;
        this.a = bArr;
    }

    public final iyh a(int i) {
        this.c = i;
        return this;
    }

    public final iyh b(int i) {
        this.b = i;
        return this;
    }

    public final synchronized void c() {
        try {
            i6 i6Var = this.d;
            if (i6Var.b) {
                zzfou zzfouVar = i6Var.a;
                zzfouVar.zzj(this.a);
                zzfouVar.zzi(this.b);
                zzfouVar.zzg(this.c);
                zzfouVar.zzh(null);
                zzfouVar.zzf();
            }
        } catch (RemoteException e) {
            Log.d("GASS", "Clearcut log failed", e);
        }
    }
}
