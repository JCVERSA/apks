package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.t4;
import com.google.android.gms.internal.ads.zzbrm;
import com.google.android.gms.internal.ads.zzfbw;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;

public final class k6h implements eeh {
    public final g8i a;
    public final jkg b;
    public final t4 c;
    public final m6h d;

    public k6h(g8i g8iVar, jkg jkgVar, t4 t4Var, m6h m6hVar) {
        this.a = g8iVar;
        this.b = jkgVar;
        this.c = t4Var;
        this.d = m6hVar;
    }

    public static l6h a(k6h k6hVar) {
        List<String> listAsList = Arrays.asList(((String) zzbd.zzc().b(cye.D1)).split(ProcessInfo.SPLIT_NEW_VERSION));
        Bundle bundle = new Bundle();
        for (String str : listAsList) {
            try {
                eoh eohVarC = k6hVar.b.c(str, new JSONObject());
                eohVarC.c();
                boolean zT = k6hVar.c.t();
                Bundle bundle2 = new Bundle();
                if (!((Boolean) zzbd.zzc().b(cye.Kb)).booleanValue() || zT) {
                    try {
                        zzbrm zzbrmVarK = eohVarC.k();
                        if (zzbrmVarK != null) {
                            bundle2.putString("sdk_version", zzbrmVarK.toString());
                        }
                    } catch (zzfbw unused) {
                    }
                }
                try {
                    zzbrm zzbrmVarJ = eohVarC.j();
                    if (zzbrmVarJ != null) {
                        bundle2.putString("adapter_version", zzbrmVarJ.toString());
                    }
                } catch (zzfbw unused2) {
                }
                bundle.putBundle(str, bundle2);
            } catch (zzfbw unused3) {
            }
        }
        l6h l6hVar = new l6h(bundle);
        if (((Boolean) zzbd.zzc().b(cye.Kb)).booleanValue()) {
            k6hVar.d.b(l6hVar);
        }
        return l6hVar;
    }

    @Override
    public final int zza() {
        return 1;
    }

    @Override
    public final im5 zzb() {
        qxe qxeVar = cye.Kb;
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            m6h m6hVar = this.d;
            if (m6hVar.a() != null) {
                l6h l6hVarA = m6hVar.a();
                l6hVarA.getClass();
                return j8.h(l6hVarA);
            }
        }
        if (j3i.d((String) zzbd.zzc().b(cye.D1)) || (!((Boolean) zzbd.zzc().b(qxeVar)).booleanValue() && (this.d.d() || !this.c.t()))) {
            return j8.h(new l6h(new Bundle()));
        }
        this.d.c(true);
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                return k6h.a(this.b);
            }
        });
    }
}
