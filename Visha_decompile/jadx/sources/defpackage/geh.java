package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzfgn;
import com.google.android.gms.internal.ads.zzfgq;
import defpackage.geh;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

public final class geh {
    public final Context a;
    public final Set b;
    public final Executor c;
    public final zzfgn d;
    public final smg e;
    public long f = 0;
    public int g = 0;

    public geh(Context context, Executor executor, Set set, zzfgn zzfgnVar, smg smgVar) {
        this.a = context;
        this.c = executor;
        this.b = set;
        this.d = zzfgnVar;
        this.e = smgVar;
    }

    public static void b(geh gehVar, long j, eeh eehVar, Bundle bundle) {
        long jElapsedRealtime = zzv.zzC().elapsedRealtime() - j;
        if (((Boolean) b0f.a.e()).booleanValue()) {
            zze.zza("Signal runtime (ms) : " + j3i.c(eehVar.getClass().getCanonicalName()) + " = " + jElapsedRealtime);
        }
        if (((Boolean) zzbd.zzc().b(cye.q2)).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.u2)).booleanValue()) {
                synchronized (gehVar) {
                    bundle.putLong("sig" + eehVar.zza(), jElapsedRealtime);
                }
            }
        }
        if (((Boolean) zzbd.zzc().b(cye.o2)).booleanValue()) {
            rmg rmgVarA = gehVar.e.a();
            rmgVarA.b("action", "lat_ms");
            rmgVarA.b("lat_grp", "sig_lat_grp");
            rmgVarA.b("lat_id", String.valueOf(eehVar.zza()));
            rmgVarA.b("clat_ms", String.valueOf(jElapsedRealtime));
            if (((Boolean) zzbd.zzc().b(cye.p2)).booleanValue()) {
                synchronized (gehVar) {
                    gehVar.g++;
                }
                rmgVarA.b("seq_num", zzv.zzp().i().c());
                synchronized (gehVar) {
                    try {
                        if (gehVar.g == gehVar.b.size() && gehVar.f != 0) {
                            gehVar.g = 0;
                            String strValueOf = String.valueOf(zzv.zzC().elapsedRealtime() - gehVar.f);
                            if (eehVar.zza() <= 39 || eehVar.zza() >= 52) {
                                rmgVarA.b("lat_clsg", strValueOf);
                            } else {
                                rmgVarA.b("lat_gmssg", strValueOf);
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            rmgVarA.k();
        }
    }

    public final im5 a(final Object obj, final Bundle bundle, final boolean z) {
        wrh wrhVarA = vrh.a(this.a, 8);
        wrhVarA.zzi();
        Set<eeh> set = this.b;
        final ArrayList arrayList = new ArrayList(set.size());
        List arrayList2 = new ArrayList();
        qxe qxeVar = cye.Pb;
        if (!((String) zzbd.zzc().b(qxeVar)).isEmpty()) {
            arrayList2 = Arrays.asList(((String) zzbd.zzc().b(qxeVar)).split(StringUtils.COMMA));
        }
        List list = arrayList2;
        this.f = zzv.zzC().elapsedRealtime();
        final Bundle bundle2 = new Bundle();
        if (((Boolean) zzbd.zzc().b(cye.q2)).booleanValue() && bundle != null) {
            long jCurrentTimeMillis = zzv.zzC().currentTimeMillis();
            if (obj instanceof kyf) {
                bundle.putLong(zzdqm.CLIENT_SIGNALS_START.zza(), jCurrentTimeMillis);
            } else {
                bundle.putLong(zzdqm.GMS_SIGNALS_START.zza(), jCurrentTimeMillis);
            }
        }
        for (final eeh eehVar : set) {
            if (!list.contains(String.valueOf(eehVar.zza()))) {
                final long jElapsedRealtime = zzv.zzC().elapsedRealtime();
                im5 im5VarZzb = eehVar.zzb();
                im5VarZzb.addListener(new Runnable() {
                    @Override
                    public final void run() {
                        geh.b(this.zza, jElapsedRealtime, eehVar, bundle2);
                    }
                }, zef.g);
                arrayList.add(im5VarZzb);
            }
        }
        im5 im5VarA = j8.b(arrayList).a(new Callable() {
            @Override
            public final Object call() {
                Object obj2;
                Bundle bundle3;
                Iterator it = arrayList.iterator();
                while (true) {
                    obj2 = obj;
                    if (!it.hasNext()) {
                        break;
                    }
                    deh dehVar = (deh) ((im5) it.next()).get();
                    if (dehVar != null) {
                        boolean z2 = z;
                        dehVar.zzb(obj2);
                        if (z2) {
                            dehVar.zza(obj2);
                        }
                    }
                }
                if (((Boolean) zzbd.zzc().b(cye.q2)).booleanValue() && (bundle3 = bundle) != null) {
                    Bundle bundle4 = bundle2;
                    long jCurrentTimeMillis2 = zzv.zzC().currentTimeMillis();
                    if (obj2 instanceof kyf) {
                        bundle3.putLong(zzdqm.CLIENT_SIGNALS_END.zza(), jCurrentTimeMillis2);
                        bundle3.putBundle("client_sig_latency_key", bundle4);
                    } else {
                        bundle3.putLong(zzdqm.GMS_SIGNALS_END.zza(), jCurrentTimeMillis2);
                        bundle3.putBundle("gms_sig_latency_key", bundle4);
                    }
                }
                return obj2;
            }
        }, this.c);
        if (zzfgq.zza()) {
            gsh.a(im5VarA, this.d, wrhVarA);
        }
        return im5VarA;
    }
}
