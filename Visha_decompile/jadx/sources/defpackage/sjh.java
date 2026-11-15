package defpackage;

import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzdxq;
import java.util.concurrent.Executor;

public final class sjh {
    public final voh a;
    public final oyf b;
    public final Executor c;
    public qjh d;

    public sjh(voh vohVar, oyf oyfVar, Executor executor) {
        this.a = vohVar;
        this.b = oyfVar;
        this.c = executor;
    }

    public final im5 c() {
        im5 im5VarH;
        qjh qjhVar = this.d;
        if (qjhVar != null) {
            return j8.h(qjhVar);
        }
        if (((Boolean) g0f.a.e()).booleanValue()) {
            q7i q7iVarZzE = q7i.zzE(this.b.zzb().f(this.a.zza()));
            pjh pjhVar = new pjh(this);
            Executor executor = this.c;
            im5VarH = (q7i) j8.e((q7i) j8.m(q7iVarZzE, pjhVar, executor), zzdxq.class, new ojh(this), executor);
        } else {
            qjh qjhVar2 = new qjh(null, e(), null);
            this.d = qjhVar2;
            im5VarH = j8.h(qjhVar2);
        }
        return j8.m(im5VarH, new m2i() {
            @Override
            public final Object apply(Object obj) {
                return (qjh) obj;
            }
        }, this.c);
    }

    public final cph e() {
        enh enhVarZzf = this.b.zzf();
        return this.a.b(enhVarZzf.d, enhVarZzf.f, enhVarZzf.j);
    }
}
