package defpackage;

import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbuy;

public final class mjh implements wjh {
    public final wjh a;
    public oyf b;

    public mjh(wjh wjhVar) {
        this.a = wjhVar;
    }

    @Override
    public final im5 a(xjh xjhVar, vjh vjhVar, Object obj) {
        return c(xjhVar, vjhVar, null);
    }

    @Override
    public final synchronized oyf zzd() {
        return this.b;
    }

    public final synchronized im5 c(xjh xjhVar, vjh vjhVar, oyf oyfVar) {
        zzbuy zzbuyVar;
        this.b = oyfVar;
        if (oyfVar == null || (zzbuyVar = xjhVar.a) == null) {
            return ((ljh) this.a).c(xjhVar, vjhVar, oyfVar);
        }
        gvf gvfVarZzb = oyfVar.zzb();
        return gvfVarZzb.h(gvfVarZzb.j(j8.h(zzbuyVar)));
    }
}
