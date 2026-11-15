package defpackage;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzefc;
import com.google.android.gms.internal.ads.zzfbw;
import com.google.android.gms.internal.ads.zzffn;
import java.util.Iterator;

public final class f2h implements kxg {
    public final mxg a;
    public final pxg b;
    public final lrh c;
    public final g8i d;

    public f2h(lrh lrhVar, g8i g8iVar, mxg mxgVar, pxg pxgVar) {
        this.c = lrhVar;
        this.d = g8iVar;
        this.b = pxgVar;
        this.a = mxgVar;
    }

    public static final String e(String str, int i) {
        return "Error from: " + str + ", code: " + i;
    }

    @Override
    public final im5 a(final vmh vmhVar, final hmh hmhVar) {
        final nxg nxgVarA;
        Iterator it = hmhVar.t.iterator();
        while (true) {
            if (!it.hasNext()) {
                nxgVarA = null;
                break;
            }
            try {
                nxgVarA = this.a.a((String) it.next(), hmhVar.v);
                break;
            } catch (zzfbw unused) {
            }
        }
        if (nxgVarA == null) {
            return j8.g(new zzefc("Unable to instantiate mediation adapter class."));
        }
        eff effVar = new eff();
        nxgVarA.c.zza(new e2h(this, nxgVarA, effVar));
        if (hmhVar.M) {
            Bundle bundle = vmhVar.a.a.d.zzm;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            if (bundle2 == null) {
                bundle2 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle2);
            }
            bundle2.putBoolean("render_test_ad_label", true);
        }
        lrh lrhVar = this.c;
        return xqh.d(new qqh() {
            @Override
            public final void zza() {
                this.a.b.a(vmhVar, hmhVar, nxgVarA);
            }
        }, this.d, zzffn.ADAPTER_LOAD_AD_SYN, lrhVar).b(zzffn.ADAPTER_LOAD_AD_ACK).d(effVar).b(zzffn.ADAPTER_WRAP_ADAPTER).e(new pqh() {
            @Override
            public final Object zza(Object obj) {
                return this.a.b.b(vmhVar, hmhVar, nxgVarA);
            }
        }).a();
    }

    @Override
    public final boolean b(vmh vmhVar, hmh hmhVar) {
        return !hmhVar.t.isEmpty();
    }
}
