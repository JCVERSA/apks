package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import java.util.Map;

public final class l7h implements eeh {
    public final Context a;
    public final String b;
    public final String c;
    public final long d;
    public final svf e;
    public final moh f;
    public final enh g;
    public final zzg h = zzv.zzp().j();
    public final lmg i;
    public final kwf j;

    public l7h(Context context, String str, String str2, svf svfVar, moh mohVar, enh enhVar, lmg lmgVar, kwf kwfVar, long j) {
        this.a = context;
        this.b = str;
        this.c = str2;
        this.e = svfVar;
        this.f = mohVar;
        this.g = enhVar;
        this.i = lmgVar;
        this.j = kwfVar;
        this.d = j;
    }

    @Override
    public final int zza() {
        return 12;
    }

    @Override
    public final im5 zzb() {
        Bundle bundle = new Bundle();
        lmg lmgVar = this.i;
        Map mapB = lmgVar.b();
        String str = this.b;
        mapB.put("seq_num", str);
        if (((Boolean) zzbd.zzc().b(cye.q2)).booleanValue()) {
            lmgVar.d("tsacc", String.valueOf(zzv.zzC().currentTimeMillis() - this.d));
            zzv.zzq();
            lmgVar.d("foreground", true != zzs.zzH(this.a) ? "1" : "0");
        }
        svf svfVar = this.e;
        enh enhVar = this.g;
        svfVar.k(enhVar.d);
        bundle.putAll(this.f.a());
        return j8.h(new m7h(this.a, bundle, str, this.c, this.h, enhVar.f, this.j));
    }
}
