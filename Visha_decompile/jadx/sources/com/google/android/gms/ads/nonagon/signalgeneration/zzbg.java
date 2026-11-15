package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbym;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzffn;
import defpackage.cye;
import defpackage.dse;
import defpackage.fyi;
import defpackage.i9g;
import defpackage.im5;
import defpackage.lrh;
import defpackage.lyf;
import defpackage.myf;
import defpackage.pyi;
import defpackage.qyi;
import defpackage.zef;
import defpackage.zyf;
import java.util.concurrent.TimeUnit;

public final class zzbg implements fyi {
    public final qyi a;
    public final qyi b;
    public final qyi c;
    public final qyi d;
    public final qyi e;
    public final qyi f;
    public final qyi g;
    public final qyi h;
    public final qyi i;

    public zzbg(qyi qyiVar, qyi qyiVar2, qyi qyiVar3, qyi qyiVar4, qyi qyiVar5, qyi qyiVar6, qyi qyiVar7, qyi qyiVar8, qyi qyiVar9) {
        this.a = qyiVar;
        this.b = qyiVar2;
        this.c = qyiVar3;
        this.d = qyiVar4;
        this.e = qyiVar5;
        this.f = qyiVar6;
        this.g = qyiVar7;
        this.h = qyiVar8;
        this.i = qyiVar9;
    }

    @Override
    public final Object zzb() {
        im5 im5VarA;
        zzau zzauVar = (zzau) this.a.zzb();
        lrh lrhVar = (lrh) this.b.zzb();
        zzbi zzbiVarZzb = ((zzbj) this.c).zzb();
        lyf lyfVarZzb = ((myf) this.d).zzb();
        i9g i9gVar = (i9g) this.e.zzb();
        zzb zzbVar = (zzb) this.f.zzb();
        zzbym zzbymVar = (zzbym) this.g.zzb();
        int iIntValue = ((Integer) this.h.zzb()).intValue();
        Bundle bundle = ((zyf) this.i).a().s;
        zzbk zzbkVarZza = null;
        if (iIntValue == 1 && zzbymVar != null) {
            bundle.putLong(zzdqm.READ_FROM_DISK_START.zza(), com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
            zzbkVarZza = zzbVar.zza(zzbymVar, zzauVar, bundle);
            bundle.putLong(zzdqm.READ_FROM_DISK_END.zza(), com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
        }
        if (zzbkVarZza != null) {
            i9gVar.F(zzbkVarZza);
            im5VarA = j8.h(zzbkVarZza);
        } else {
            im5VarA = lrhVar.b(zzffn.GENERATE_SIGNALS, lyfVarZzb.c()).f(zzbiVarZzb).i(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.F5)).intValue(), TimeUnit.SECONDS).a();
            j8.r(im5VarA, new dse(i9gVar), zef.a);
        }
        pyi.b(im5VarA);
        return im5VarA;
    }
}
