package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.internal.ads.zzeix;

public final class lmf implements sih {
    public final Context a;
    public final zzr b;
    public final String c;
    public final zlf d;
    public final qyi e;
    public final qyi f;
    public final qyi g;
    public final qyi h;
    public final qyi i;
    public final qyi j;

    public lmf(zlf zlfVar, Context context, String str, zzr zzrVar) {
        this.d = zlfVar;
        this.a = context;
        this.b = zzrVar;
        this.c = str;
        fyi fyiVarA = gyi.a(context);
        this.e = fyiVarA;
        fyi fyiVarA2 = gyi.a(zzrVar);
        this.f = fyiVarA2;
        qyi qyiVarB = eyi.b(new l4h(zlfVar.N));
        this.g = qyiVarB;
        qyi qyiVarB2 = eyi.b(q4h.a());
        this.h = qyiVarB2;
        qyi qyiVarB3 = eyi.b(l5g.a());
        this.i = qyiVarB3;
        this.j = eyi.b(new qih(fyiVarA, zlfVar.d, fyiVarA2, zlfVar.T, qyiVarB, qyiVarB2, gnh.a(), qyiVarB3));
    }

    @Override
    public final zzeix zza() {
        pih pihVar = (pih) this.j.zzb();
        k4h k4hVar = (k4h) this.g.zzb();
        zlf zlfVar = this.d;
        return new zzeix(this.a, this.b, this.c, pihVar, k4hVar, klf.b(zlfVar.b), (smg) zlfVar.N.zzb());
    }
}
