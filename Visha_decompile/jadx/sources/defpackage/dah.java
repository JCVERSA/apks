package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzfxb;

public final class dah implements fyi {
    public final qyi a;
    public final qyi b;

    public dah(qyi qyiVar, qyi qyiVar2) {
        this.a = qyiVar;
        this.b = qyiVar2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0030  */
    @Override
    public final Object zzb() {
        zzfxb zzfxbVarZzn;
        bbh bbhVarZzb = ((fbh) this.a).zzb();
        Context contextA = ((skf) this.b).a();
        if (((Boolean) zzbd.zzc().b(cye.xb)).booleanValue()) {
            zzv.zzq();
            if (zzs.zzC(contextA)) {
                zzfxbVarZzn = zzfxb.zzo(bbhVarZzb);
            } else {
                zzfxbVarZzn = zzfxb.zzn();
            }
        } else {
            zzfxbVarZzn = zzfxb.zzn();
        }
        pyi.b(zzfxbVarZzn);
        return zzfxbVarZzn;
    }
}
