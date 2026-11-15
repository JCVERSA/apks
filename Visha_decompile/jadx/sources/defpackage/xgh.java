package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.zzfgn;
import java.util.HashSet;
import java.util.concurrent.Executor;

public abstract class xgh implements fyi {
    public static geh a(Context context, eef eefVar, fef fefVar, Object obj, mfh mfhVar, ggh gghVar, zxi zxiVar, zxi zxiVar2, zxi zxiVar3, zxi zxiVar4, zxi zxiVar5, zxi zxiVar6, zxi zxiVar7, Executor executor, zzfgn zzfgnVar, smg smgVar) {
        HashSet hashSet = new HashSet();
        hashSet.add((zfh) obj);
        hashSet.add(mfhVar);
        hashSet.add(gghVar);
        if (((Boolean) zzbd.zzc().b(cye.O5)).booleanValue()) {
            hashSet.add((eeh) zxiVar.zzb());
        }
        if (((Boolean) zzbd.zzc().b(cye.P5)).booleanValue()) {
            hashSet.add((eeh) zxiVar2.zzb());
        }
        if (((Boolean) zzbd.zzc().b(cye.R5)).booleanValue()) {
            hashSet.add((eeh) zxiVar4.zzb());
        }
        if (((Boolean) zzbd.zzc().b(cye.S5)).booleanValue()) {
            hashSet.add((eeh) zxiVar5.zzb());
        }
        if (((Boolean) zzbd.zzc().b(cye.k3)).booleanValue()) {
            hashSet.add((eeh) zxiVar7.zzb());
        }
        return new geh(context, executor, hashSet, zzfgnVar, smgVar);
    }
}
