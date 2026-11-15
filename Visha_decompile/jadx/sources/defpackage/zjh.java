package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j5;
import com.google.android.gms.internal.ads.zzfdg;

public final class zjh implements fyi {
    public final qyi a;
    public final qyi b;
    public final qyi c;

    public zjh(qyi qyiVar, qyi qyiVar2, qyi qyiVar3) {
        this.a = qyiVar;
        this.b = qyiVar2;
        this.c = qyiVar3;
    }

    @Override
    public final wjh zzb() {
        Context context = (Context) this.a.zzb();
        ooh oohVar = (ooh) this.b.zzb();
        gph gphVar = (gph) this.c.zzb();
        ief iefVarZzg = ((Boolean) zzbd.zzc().b(cye.n6)).booleanValue() ? zzv.zzp().j().zzg() : zzv.zzp().j().zzh();
        boolean z = false;
        if (iefVarZzg != null && iefVarZzg.h()) {
            z = true;
        }
        if (((Integer) zzbd.zzc().b(cye.p6)).intValue() > 0) {
            if (!((Boolean) zzbd.zzc().b(cye.m6)).booleanValue() || z) {
                fph fphVarA = gphVar.a(zzfdg.Rewarded, context, oohVar, new yih(new vih()));
                mjh mjhVar = new mjh(new ljh());
                voh vohVar = fphVarA.a;
                g8i g8iVar = zef.a;
                return new j5(mjhVar, new fjh(vohVar, g8iVar), fphVarA.b, vohVar.zza().zzf, g8iVar);
            }
        }
        return new ljh();
    }
}
