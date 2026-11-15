package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.internal.ads.zzbas;
import defpackage.axe;
import defpackage.eff;
import defpackage.pwe;
import defpackage.twe;
import defpackage.wwe;
import defpackage.ywe;
import java.io.IOException;

public final class wwe implements a.InterfaceC0093a {
    public final zzbas b;
    public final eff c;
    public final ywe d;

    public wwe(ywe yweVar, zzbas zzbasVar, eff effVar) {
        this.b = zzbasVar;
        this.c = effVar;
        this.d = yweVar;
    }

    @Override
    public final void onConnected(Bundle bundle) {
        ywe yweVar = this.d;
        synchronized (yweVar.d) {
            try {
                if (yweVar.b) {
                    return;
                }
                yweVar.b = true;
                final pwe pweVar = yweVar.a;
                if (pweVar == null) {
                    return;
                }
                g8i g8iVar = zef.a;
                final zzbas zzbasVar = this.b;
                final eff effVar = this.c;
                final im5 im5VarI = g8iVar.i(new Runnable() {
                    @Override
                    public final void run() {
                        wwe wweVar = this.zza;
                        pwe pweVar2 = pweVar;
                        eff effVar2 = effVar;
                        try {
                            zzbau zzbauVarJ = pweVar2.J();
                            boolean zI = pweVar2.I();
                            zzbas zzbasVar2 = zzbasVar;
                            zzbap zzbapVarZzg = zI ? zzbauVarJ.zzg(zzbasVar2) : zzbauVarJ.zzf(zzbasVar2);
                            if (!zzbapVarZzg.zze()) {
                                effVar2.d(new RuntimeException("No entry contents."));
                                ywe.e(wweVar.d);
                                return;
                            }
                            twe tweVar = new twe(wweVar, zzbapVarZzg.zzc(), 1);
                            int i = tweVar.read();
                            if (i == -1) {
                                throw new IOException("Unable to read from cache.");
                            }
                            tweVar.unread(i);
                            effVar2.c(axe.b(tweVar, zzbapVarZzg.zzd(), zzbapVarZzg.zzg(), zzbapVarZzg.zza(), zzbapVarZzg.zzf()));
                        } catch (RemoteException | IOException e) {
                            int i2 = zze.zza;
                            zzo.zzh("Unable to obtain a cache service instance.", e);
                            effVar2.d(e);
                            ywe.e(wweVar.d);
                        }
                    }
                });
                effVar.addListener(new Runnable() {
                    @Override
                    public final void run() {
                        if (effVar.isCancelled()) {
                            im5VarI.cancel(true);
                        }
                    }
                }, zef.g);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void onConnectionSuspended(int i) {
    }
}
