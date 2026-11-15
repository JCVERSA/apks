package defpackage;

import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.m8;
import java.util.Iterator;
import java.util.concurrent.Executor;

public final class vih implements wjh {
    public oyf a;
    public final Executor b = m8.c();

    @Override
    public final im5 a(xjh xjhVar, vjh vjhVar, Object obj) {
        return c(xjhVar, vjhVar, null);
    }

    public final oyf b() {
        return this.a;
    }

    public final im5 c(xjh xjhVar, vjh vjhVar, oyf oyfVar) {
        nyf nyfVarA = vjhVar.a(xjhVar.b);
        nyfVarA.m(new akh(true));
        oyf oyfVar2 = (oyf) nyfVarA.zzh();
        this.a = oyfVar2;
        final gvf gvfVarZzb = oyfVar2.zzb();
        final bph bphVar = new bph();
        q7i q7iVarZzE = q7i.zzE(gvfVarZzb.i());
        k7i k7iVar = new k7i(this) {
            @Override
            public final im5 zza(Object obj) {
                vmh vmhVar = (vmh) obj;
                bphVar.b = vmhVar;
                Iterator it = vmhVar.b.a.iterator();
                boolean z = false;
                while (it.hasNext()) {
                    Iterator it2 = ((hmh) it.next()).a.iterator();
                    while (it2.hasNext()) {
                        if (!((String) it2.next()).contains("FirstPartyRenderer")) {
                            return j8.h(null);
                        }
                        z = true;
                    }
                }
                if (z) {
                    return gvfVarZzb.h(j8.h(vmhVar));
                }
                return j8.h(null);
            }
        };
        Executor executor = this.b;
        return (q7i) j8.m((q7i) j8.n(q7iVarZzE, k7iVar, executor), new m2i() {
            @Override
            public final Object apply(Object obj) {
                bph bphVar2 = bphVar;
                bphVar2.c = (buf) obj;
                return bphVar2;
            }
        }, executor);
    }

    @Override
    public final Object zzd() {
        return this.a;
    }
}
