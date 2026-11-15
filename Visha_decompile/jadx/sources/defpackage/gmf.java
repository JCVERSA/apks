package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.zzexa;

public final class gmf implements ihh {
    public final zlf a;
    public final qyi b;
    public final qyi c;
    public final qyi d;
    public final qyi e;
    public final qyi f;
    public final qyi g;

    public gmf(zlf zlfVar, Context context, String str) {
        this.a = zlfVar;
        fyi fyiVarA = gyi.a(context);
        this.b = fyiVarA;
        fyi fyiVarA2 = gyi.a(str);
        this.c = fyiVarA2;
        qyi qyiVar = zlfVar.i1;
        yjh yjhVar = new yjh(fyiVarA, qyiVar, zlfVar.j1);
        this.d = yjhVar;
        qyi qyiVarB = eyi.b(new gih(qyiVar));
        this.e = qyiVarB;
        qyi qyiVar2 = zlfVar.d;
        qyi qyiVar3 = zlfVar.T;
        gnh gnhVarA = gnh.a();
        qyi qyiVar4 = zlfVar.m;
        qyi qyiVarB2 = eyi.b(new iih(fyiVarA, qyiVar2, qyiVar3, yjhVar, qyiVarB, gnhVarA, qyiVar4));
        this.f = qyiVarB2;
        this.g = eyi.b(new nih(qyiVar3, fyiVarA, fyiVarA2, qyiVarB2, qyiVarB, qyiVar4, zlfVar.N));
    }

    @Override
    public final zzexa zza() {
        return (zzexa) this.g.zzb();
    }
}
