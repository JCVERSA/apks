package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzcb;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nonagon.signalgeneration.zzab;
import com.google.android.gms.ads.nonagon.signalgeneration.zzau;
import com.google.android.gms.internal.ads.b5;
import com.google.android.gms.internal.ads.i4;
import com.google.android.gms.internal.ads.o0;
import com.google.android.gms.internal.ads.zzboy;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzcjl;
import com.google.android.gms.internal.ads.zzdva;
import com.google.android.gms.internal.ads.zzebe;
import com.google.android.gms.internal.ads.zzfgq;
import com.google.android.gms.internal.ads.zzfix;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

public abstract class lkf implements lof {
    public static lkf a;

    public static synchronized lkf e(Context context, zzboy zzboyVar, int i, boolean z, int i2, vlf vlfVar) {
        try {
            lkf lkfVar = a;
            if (lkfVar != null) {
                return lkfVar;
            }
            long jCurrentTimeMillis = zzv.zzC().currentTimeMillis();
            cye.a(context);
            if (((Boolean) rze.e.e()).booleanValue()) {
                jxe.d(context);
            }
            coh cohVarD = coh.d(context);
            VersionInfoParcel versionInfoParcelC = cohVarD.c(251410000, false, i2);
            cohVarD.f(zzboyVar);
            mmf mmfVar = new mmf(null);
            mkf mkfVar = new mkf();
            mkfVar.f(versionInfoParcelC);
            mkfVar.e(context);
            mkfVar.d(jCurrentTimeMillis);
            mmfVar.b(new okf(mkfVar, null));
            mmfVar.c(new gnf(vlfVar));
            lkf lkfVarA = mmfVar.a();
            zzv.zzp().v(context, versionInfoParcelC);
            zzv.zzc().i(context);
            zzv.zzq().zzm(context);
            zzv.zzq().zzl(context);
            zzd.zza(context);
            zzv.zzb().d(context);
            zzv.zzw().zzb(context);
            ((zzcb) ((zlf) lkfVarA).l0.zzb()).zzc();
            sdf.b(context);
            if (((Boolean) zzbd.zzc().b(cye.i6)).booleanValue()) {
                if (!((Boolean) zzbd.zzc().b(cye.M0)).booleanValue()) {
                    new b5(context, versionInfoParcelC, new o0(new exe(context)), new lug(new hug(context), (g8i) ((zlf) lkfVarA).g.zzb())).b(zzv.zzp().j().zzN());
                }
            }
            a = lkfVarA;
            return lkfVarA;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static lkf f(Context context, zzboy zzboyVar, int i) {
        return e(context, zzboyVar, 251410000, false, i, new vlf());
    }

    public abstract vnh A();

    public abstract foh B();

    public abstract zzfgq C();

    public abstract zzfix D();

    @Override
    public final hfh a(zzbuy zzbuyVar, int i) {
        return v(new ogh(zzbuyVar, i));
    }

    public abstract Executor b();

    public abstract ScheduledExecutorService c();

    public abstract fef d();

    public abstract zzcjl g();

    public abstract hrf h();

    public abstract zsf i();

    public abstract i4 j();

    public abstract xag k();

    public abstract pbg l();

    public abstract ajg m();

    public abstract smg n();

    public abstract bog o();

    public abstract zog p();

    public abstract zzdva q();

    public abstract zzebe r();

    public abstract com.google.android.gms.ads.nonagon.signalgeneration.zzv s();

    public abstract zzab t();

    public abstract zzau u();

    public abstract hfh v(ogh oghVar);

    public abstract hhh w();

    public abstract rih x();

    public abstract fkh y();

    public abstract bmh z();

    @Override
    public final fef zzD() {
        return d();
    }
}
