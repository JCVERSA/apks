package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.internal.ads.zzejz;

public final class wmf implements kkh {
    public final zlf a;
    public final qyi b;
    public final qyi c;
    public final qyi d;
    public final qyi e;
    public final qyi f;
    public final qyi g;
    public final qyi h;

    public wmf(zlf zlfVar, Context context, String str, zzr zzrVar) {
        this.a = zlfVar;
        fyi fyiVarA = gyi.a(context);
        this.b = fyiVarA;
        fyi fyiVarA2 = gyi.a(zzrVar);
        this.c = fyiVarA2;
        fyi fyiVarA3 = gyi.a(str);
        this.d = fyiVarA3;
        qyi qyiVar = zlfVar.N;
        qyi qyiVarB = eyi.b(new l4h(qyiVar));
        this.e = qyiVarB;
        qyi qyiVarB2 = eyi.b(new ilh(zlfVar.i1));
        this.f = qyiVarB2;
        qyi qyiVarB3 = eyi.b(new ekh(fyiVarA, zlfVar.d, zlfVar.T, qyiVarB, qyiVarB2, gnh.a()));
        this.g = qyiVarB3;
        this.h = eyi.b(new v4h(fyiVarA, fyiVarA2, fyiVarA3, qyiVarB3, qyiVarB, qyiVarB2, zlfVar.m, zlfVar.V, qyiVar));
    }

    @Override
    public final zzejz zza() {
        return (zzejz) this.h.zzb();
    }
}
