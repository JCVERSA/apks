package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.client.zzx;
import com.google.android.gms.internal.ads.j5;
import defpackage.ajh;
import defpackage.bph;
import defpackage.ejh;
import defpackage.enh;
import defpackage.fjh;
import defpackage.im5;
import defpackage.k7i;
import defpackage.lph;
import defpackage.mjh;
import defpackage.nph;
import defpackage.nyf;
import defpackage.oph;
import defpackage.oyf;
import defpackage.q7i;
import defpackage.vjh;
import defpackage.wjh;
import defpackage.xjh;
import defpackage.zih;
import java.util.concurrent.Executor;

public final class j5 implements wjh {
    public final wjh a;
    public final wjh b;
    public final oph c;
    public final String d;
    public oyf e;
    public final Executor f;

    public j5(wjh wjhVar, wjh wjhVar2, oph ophVar, String str, Executor executor) {
        this.a = wjhVar;
        this.b = wjhVar2;
        this.c = ophVar;
        this.d = str;
        this.f = executor;
    }

    public static im5 c(final j5 j5Var, xjh xjhVar, zih zihVar, vjh vjhVar, oyf oyfVar, ejh ejhVar) {
        if (ejhVar != null) {
            zih zihVar2 = new zih(zihVar.a, zihVar.b, zihVar.c, zihVar.d, zihVar.e, zihVar.f, ejhVar.a);
            bph bphVar = ejhVar.c;
            if (bphVar != null) {
                j5Var.e = null;
                j5Var.c.f(zihVar2);
                return j5Var.f(bphVar, xjhVar);
            }
            oph ophVar = j5Var.c;
            im5 im5VarA = ophVar.a(zihVar2);
            if (im5VarA != null) {
                j5Var.e = null;
                return j8.n(im5VarA, new k7i() {
                    @Override
                    public final im5 zza(Object obj) {
                        return j5.d(this.a, (lph) obj);
                    }
                }, j5Var.f);
            }
            ophVar.f(zihVar2);
            xjhVar = new xjh(xjhVar.b, ejhVar.b);
        }
        im5 im5VarC = ((mjh) j5Var.a).c(xjhVar, vjhVar, oyfVar);
        j5Var.e = oyfVar;
        return im5VarC;
    }

    public static im5 d(j5 j5Var, lph lphVar) throws zzdvg {
        bph bphVar;
        nph nphVar;
        if (lphVar == null || (bphVar = lphVar.a) == null || (nphVar = lphVar.b) == null) {
            throw new zzdvg(1, "Empty prefetch");
        }
        a2 a2VarD0 = g2.d0();
        y1 y1VarH0 = z1.h0();
        y1VarH0.v(zzbbn$zzb$zzd.IN_MEMORY);
        y1VarH0.x(d2.f0());
        a2VarD0.v(y1VarH0);
        bphVar.a.zzb().c().z((g2) a2VarD0.q());
        return j5Var.f(bphVar, ((zih) nphVar).b);
    }

    @Override
    public final im5 a(xjh xjhVar, vjh vjhVar, Object obj) {
        return e(xjhVar, vjhVar, null);
    }

    @Override
    public final synchronized oyf zzd() {
        return this.e;
    }

    public final synchronized im5 e(final xjh xjhVar, final vjh vjhVar, oyf oyfVar) {
        nyf nyfVarA = vjhVar.a(xjhVar.b);
        nyfVarA.i(new ajh(this.d));
        final oyf oyfVar2 = (oyf) nyfVarA.zzh();
        oyfVar2.zzf();
        oyfVar2.zzf();
        zzm zzmVar = oyfVar2.zzf().d;
        if (zzmVar.zzs == null && zzmVar.zzx == null) {
            enh enhVarZzf = oyfVar2.zzf();
            zzm zzmVar2 = enhVarZzf.d;
            String str = enhVarZzf.f;
            zzx zzxVar = enhVarZzf.j;
            Executor executor = this.f;
            final zih zihVar = new zih(vjhVar, xjhVar, zzmVar2, str, executor, zzxVar, null);
            return (q7i) j8.n(q7i.zzE(((fjh) this.b).c(xjhVar, vjhVar, oyfVar2)), new k7i() {
                @Override
                public final im5 zza(Object obj) {
                    return j5.c(this.a, xjhVar, zihVar, vjhVar, oyfVar2, (ejh) obj);
                }
            }, executor);
        }
        this.e = oyfVar2;
        return ((mjh) this.a).c(xjhVar, vjhVar, oyfVar2);
    }

    public final im5 f(bph bphVar, xjh xjhVar) {
        oyf oyfVar = bphVar.a;
        this.e = oyfVar;
        if (bphVar.c != null) {
            if (oyfVar.zze() != null) {
                bphVar.c.f().g(bphVar.a.zze());
            }
            return j8.h(bphVar.c);
        }
        oyfVar.zzb().k(bphVar.b);
        return ((mjh) this.a).c(xjhVar, null, bphVar.a);
    }
}
