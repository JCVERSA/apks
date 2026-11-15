package com.google.android.gms.internal.ads;

import android.os.Parcelable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.client.zzx;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import defpackage.bph;
import defpackage.cph;
import defpackage.cye;
import defpackage.dph;
import defpackage.pph;
import defpackage.uoh;
import defpackage.voh;
import defpackage.woh;
import defpackage.xbf;
import defpackage.xoh;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class k5 implements voh {
    public final ConcurrentHashMap a;
    public final zzfdj b;
    public final xoh c = new xoh();

    public k5(zzfdj zzfdjVar) {
        this.a = new ConcurrentHashMap(zzfdjVar.zzd);
        this.b = zzfdjVar;
    }

    @Override
    public final synchronized boolean a(cph cphVar) {
        uoh uohVar = (uoh) this.a.get(cphVar);
        if (uohVar == null) {
            return true;
        }
        return uohVar.b() < this.b.zzd;
    }

    @Override
    public final cph b(zzm zzmVar, String str, zzx zzxVar) {
        zzfdj zzfdjVar = this.b;
        return new dph(zzmVar, str, new xbf(zzfdjVar.zza).a().j, zzfdjVar.zzf, zzxVar);
    }

    @Override
    public final synchronized bph c(cph cphVar) {
        bph bphVarE;
        try {
            uoh uohVar = (uoh) this.a.get(cphVar);
            if (uohVar != null) {
                bphVarE = uohVar.e();
                if (bphVarE == null) {
                    this.c.e();
                }
                pph pphVarF = uohVar.f();
                if (bphVarE != null) {
                    a2 a2VarD0 = g2.d0();
                    y1 y1VarH0 = z1.h0();
                    y1VarH0.v(zzbbn$zzb$zzd.IN_MEMORY);
                    c2 c2VarD0 = d2.d0();
                    c2VarD0.v(pphVarF.b);
                    c2VarD0.w(pphVarF.c);
                    y1VarH0.w(c2VarD0);
                    a2VarD0.v(y1VarH0);
                    bphVarE.a.zzb().c().u((g2) a2VarD0.q());
                }
                e();
            } else {
                this.c.f();
                e();
                bphVarE = null;
            }
        } catch (Throwable th) {
            throw th;
        }
        return bphVarE;
    }

    @Override
    public final synchronized boolean d(cph cphVar, bph bphVar) {
        boolean zH;
        try {
            ConcurrentHashMap concurrentHashMap = this.a;
            uoh uohVar = (uoh) concurrentHashMap.get(cphVar);
            bphVar.d = zzv.zzC().currentTimeMillis();
            if (uohVar == null) {
                zzfdj zzfdjVar = this.b;
                uoh uohVar2 = new uoh(zzfdjVar.zzd, zzfdjVar.zze * 1000);
                if (concurrentHashMap.size() == zzfdjVar.zzc) {
                    int i = zzfdjVar.zzg;
                    int i2 = i - 1;
                    cph cphVar2 = null;
                    if (i == 0) {
                        throw null;
                    }
                    long jC = Long.MAX_VALUE;
                    if (i2 == 0) {
                        for (Map.Entry entry : concurrentHashMap.entrySet()) {
                            if (((uoh) entry.getValue()).c() < jC) {
                                jC = ((uoh) entry.getValue()).c();
                                cphVar2 = (cph) entry.getKey();
                            }
                        }
                        if (cphVar2 != null) {
                            concurrentHashMap.remove(cphVar2);
                        }
                    } else if (i2 == 1) {
                        for (Map.Entry entry2 : concurrentHashMap.entrySet()) {
                            if (((uoh) entry2.getValue()).d() < jC) {
                                jC = ((uoh) entry2.getValue()).d();
                                cphVar2 = (cph) entry2.getKey();
                            }
                        }
                        if (cphVar2 != null) {
                            concurrentHashMap.remove(cphVar2);
                        }
                    } else if (i2 == 2) {
                        int iA = Integer.MAX_VALUE;
                        for (Map.Entry entry3 : concurrentHashMap.entrySet()) {
                            if (((uoh) entry3.getValue()).a() < iA) {
                                iA = ((uoh) entry3.getValue()).a();
                                cphVar2 = (cph) entry3.getKey();
                            }
                        }
                        if (cphVar2 != null) {
                            concurrentHashMap.remove(cphVar2);
                        }
                    }
                    this.c.g();
                }
                concurrentHashMap.put(cphVar, uohVar2);
                this.c.d();
                uohVar = uohVar2;
            }
            zH = uohVar.h(bphVar);
            xoh xohVar = this.c;
            xohVar.c();
            woh wohVarA = xohVar.a();
            pph pphVarF = uohVar.f();
            a2 a2VarD0 = g2.d0();
            y1 y1VarH0 = z1.h0();
            y1VarH0.v(zzbbn$zzb$zzd.IN_MEMORY);
            e2 e2VarH0 = f2.h0();
            e2VarH0.v(wohVarA.b);
            e2VarH0.w(wohVarA.c);
            e2VarH0.x(pphVarF.c);
            y1VarH0.y(e2VarH0);
            a2VarD0.v(y1VarH0);
            bphVar.a.zzb().c().t((g2) a2VarD0.q());
            e();
        } catch (Throwable th) {
            throw th;
        }
        return zH;
    }

    public final void e() {
        Parcelable.Creator<zzfdj> creator = zzfdj.CREATOR;
        if (((Boolean) zzbd.zzc().b(cye.o6)).booleanValue()) {
            StringBuilder sb = new StringBuilder();
            zzfdj zzfdjVar = this.b;
            sb.append(zzfdjVar.zzb);
            sb.append(" PoolCollection");
            sb.append(this.c.b());
            int i = 0;
            for (Map.Entry entry : this.a.entrySet()) {
                i++;
                sb.append(i);
                sb.append(". ");
                sb.append(entry.getValue());
                sb.append("#");
                sb.append(((cph) entry.getKey()).hashCode());
                sb.append("    ");
                for (int i2 = 0; i2 < ((uoh) entry.getValue()).b(); i2++) {
                    sb.append("[O]");
                }
                for (int iB = ((uoh) entry.getValue()).b(); iB < zzfdjVar.zzd; iB++) {
                    sb.append("[ ]");
                }
                sb.append("\n");
                sb.append(((uoh) entry.getValue()).g());
                sb.append("\n");
            }
            while (i < zzfdjVar.zzc) {
                i++;
                sb.append(i);
                sb.append(".\n");
            }
            String string = sb.toString();
            int i3 = zze.zza;
            zzo.zze(string);
        }
    }

    @Override
    public final zzfdj zza() {
        return this.b;
    }
}
