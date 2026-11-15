package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzb;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.y3;
import defpackage.aif;
import defpackage.chf;
import defpackage.cye;
import defpackage.im5;
import defpackage.zef;
import java.util.concurrent.Callable;

public final class y3 extends zzb {
    public final chf c;
    public final z3 d;
    public final String e;
    public final String[] f;

    public y3(chf chfVar, z3 z3Var, String str, String[] strArr) {
        this.c = chfVar;
        this.d = z3Var;
        this.e = str;
        this.f = strArr;
        zzv.zzz().c(this);
    }

    public final String c() {
        return this.e;
    }

    @Override
    public final void zza() {
        try {
            this.d.o(this.e, this.f);
        } finally {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new zzccj(this));
        }
    }

    @Override
    public final im5 zzb() {
        return (((Boolean) zzbd.zzc().b(cye.i2)).booleanValue() && (this.d instanceof aif)) ? zef.f.m(new Callable() {
            @Override
            public final Object call() {
                y3 y3Var = this.b;
                return Boolean.valueOf(y3Var.d.r(y3Var.e, y3Var.f, y3Var));
            }
        }) : super.zzb();
    }
}
