package defpackage;

import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.internal.ads.zzdvg;
import com.google.android.gms.internal.ads.zzecj;
import com.google.android.gms.internal.ads.zzefc;
import com.google.android.gms.internal.ads.zzfbw;
import java.util.LinkedHashMap;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeoutException;

public final class o0h implements v7i {
    public final long a;
    public final kmh b;
    public final hmh c;
    public final String d;
    public final sth e;
    public final vmh f;
    public final q0h g;

    public o0h(q0h q0hVar, long j, kmh kmhVar, hmh hmhVar, String str, sth sthVar, vmh vmhVar) {
        this.a = j;
        this.b = kmhVar;
        this.c = hmhVar;
        this.d = str;
        this.e = sthVar;
        this.f = vmhVar;
        this.g = q0hVar;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0062 A[PHI: r8
      0x0062: PHI (r8v1 int) = (r8v0 int), (r8v3 int), (r8v3 int), (r8v3 int) binds: [B:16:0x002f, B:21:0x004a, B:23:0x004e, B:25:0x0057] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:32:0x006b A[Catch: all -> 0x007c, TryCatch #0 {all -> 0x007c, blocks: (B:30:0x0065, B:32:0x006b, B:34:0x0077, B:38:0x007f, B:39:0x0087, B:41:0x0099, B:42:0x00ae, B:44:0x00b4, B:46:0x00b6, B:54:0x00f3, B:55:0x00fa, B:49:0x00d8, B:51:0x00dc, B:53:0x00e6), top: B:59:0x0065 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0077 A[Catch: all -> 0x007c, TryCatch #0 {all -> 0x007c, blocks: (B:30:0x0065, B:32:0x006b, B:34:0x0077, B:38:0x007f, B:39:0x0087, B:41:0x0099, B:42:0x00ae, B:44:0x00b4, B:46:0x00b6, B:54:0x00f3, B:55:0x00fa, B:49:0x00d8, B:51:0x00dc, B:53:0x00e6), top: B:59:0x0065 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0099 A[Catch: all -> 0x007c, TryCatch #0 {all -> 0x007c, blocks: (B:30:0x0065, B:32:0x006b, B:34:0x0077, B:38:0x007f, B:39:0x0087, B:41:0x0099, B:42:0x00ae, B:44:0x00b4, B:46:0x00b6, B:54:0x00f3, B:55:0x00fa, B:49:0x00d8, B:51:0x00dc, B:53:0x00e6), top: B:59:0x0065 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00b4 A[Catch: all -> 0x007c, DONT_GENERATE, TryCatch #0 {all -> 0x007c, blocks: (B:30:0x0065, B:32:0x006b, B:34:0x0077, B:38:0x007f, B:39:0x0087, B:41:0x0099, B:42:0x00ae, B:44:0x00b4, B:46:0x00b6, B:54:0x00f3, B:55:0x00fa, B:49:0x00d8, B:51:0x00dc, B:53:0x00e6), top: B:59:0x0065 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00b6 A[Catch: all -> 0x007c, TryCatch #0 {all -> 0x007c, blocks: (B:30:0x0065, B:32:0x006b, B:34:0x0077, B:38:0x007f, B:39:0x0087, B:41:0x0099, B:42:0x00ae, B:44:0x00b4, B:46:0x00b6, B:54:0x00f3, B:55:0x00fa, B:49:0x00d8, B:51:0x00dc, B:53:0x00e6), top: B:59:0x0065 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override
    public final void zza(Throwable th) {
        Integer numValueOf;
        int i;
        zze zzeVarZzb;
        zze zzeVarA;
        int i2;
        zze zzeVar;
        q0h q0hVar = this.g;
        long jElapsedRealtime = q0hVar.a.elapsedRealtime() - this.a;
        if (th instanceof TimeoutException) {
            i = 2;
        } else if (th instanceof zzefc) {
            i = 3;
        } else {
            if (!(th instanceof CancellationException)) {
                if (th instanceof zzfbw) {
                    i = 5;
                } else {
                    int i3 = 6;
                    if (th instanceof zzdvg) {
                        i3 = goh.a(th).zza == 3 ? 1 : 6;
                        if (((Boolean) zzbd.zzc().b(cye.O1)).booleanValue() && (th instanceof zzecj) && (zzeVarZzb = ((zzecj) th).zzb()) != null) {
                            numValueOf = Integer.valueOf(zzeVarZzb.zza);
                        } else {
                            numValueOf = null;
                        }
                    } else {
                        numValueOf = null;
                    }
                    i = i3;
                }
                synchronized (q0hVar) {
                    try {
                        if (q0hVar.e) {
                            q0hVar.b.a(this.b, this.c, i, th instanceof zzecj ? (zzecj) th : null, jElapsedRealtime);
                        }
                        if (((Boolean) zzbd.zzc().b(cye.v8)).booleanValue()) {
                            wth wthVar = q0hVar.c;
                            sth sthVar = this.e;
                            vmh vmhVar = this.f;
                            hmh hmhVar = this.c;
                            wthVar.e(sthVar.d(vmhVar, hmhVar, hmhVar.n), hmhVar.x0);
                        }
                        if (q0hVar.g) {
                            return;
                        }
                        LinkedHashMap linkedHashMap = q0hVar.d;
                        hmh hmhVar2 = this.c;
                        linkedHashMap.put(hmhVar2, new p0h(this.d, hmhVar2.f0, i, jElapsedRealtime, numValueOf));
                        zzeVarA = goh.a(th);
                        i2 = zzeVarA.zza;
                        if ((i2 != 3 || i2 == 0) && (zzeVar = zzeVarA.zzd) != null && !zzeVar.zzc.equals(MobileAds.ERROR_DOMAIN)) {
                        }
                        q0hVar.f.f(hmhVar2, jElapsedRealtime, zzeVarA);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            i = 4;
        }
        numValueOf = null;
        synchronized (q0hVar) {
            if (q0hVar.e) {
                q0hVar.b.a(this.b, this.c, i, th instanceof zzecj ? (zzecj) th : null, jElapsedRealtime);
            }
            if (((Boolean) zzbd.zzc().b(cye.v8)).booleanValue()) {
                wth wthVar2 = q0hVar.c;
                sth sthVar2 = this.e;
                vmh vmhVar2 = this.f;
                hmh hmhVar3 = this.c;
                wthVar2.e(sthVar2.d(vmhVar2, hmhVar3, hmhVar3.n), hmhVar3.x0);
            }
            if (q0hVar.g) {
                return;
            }
            LinkedHashMap linkedHashMap2 = q0hVar.d;
            hmh hmhVar4 = this.c;
            linkedHashMap2.put(hmhVar4, new p0h(this.d, hmhVar4.f0, i, jElapsedRealtime, numValueOf));
            zzeVarA = goh.a(th);
            i2 = zzeVarA.zza;
            zzeVarA = i2 != 3 ? goh.a(new zzecj(13, zzeVarA.zzd)) : goh.a(new zzecj(13, zzeVarA.zzd));
            q0hVar.f.f(hmhVar4, jElapsedRealtime, zzeVarA);
        }
    }

    @Override
    public final void zzb(Object obj) {
        q0h q0hVar = this.g;
        long jElapsedRealtime = q0hVar.a.elapsedRealtime() - this.a;
        synchronized (q0hVar) {
            try {
                if (q0hVar.e) {
                    q0hVar.b.a(this.b, this.c, 0, null, jElapsedRealtime);
                }
                if (q0hVar.g) {
                    return;
                }
                hmh hmhVar = this.c;
                if (q0hVar.q(hmhVar)) {
                    ((p0h) q0hVar.d.get(hmhVar)).d = jElapsedRealtime;
                } else {
                    q0hVar.d.put(hmhVar, new p0h(this.d, hmhVar.f0, 0, jElapsedRealtime, null));
                }
                q0hVar.f.g(hmhVar, jElapsedRealtime, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
