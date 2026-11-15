package defpackage;

import java.util.List;

public final class m9h implements fyi {
    public final qyi a;
    public final qyi b;
    public final qyi c;

    public m9h(qyi qyiVar, qyi qyiVar2, qyi qyiVar3) {
        this.a = qyiVar;
        this.b = qyiVar2;
        this.c = qyiVar3;
    }

    @Override
    public final Object zzb() {
        Object objZzb = ((i5h) this.a).zzb();
        k8h k8hVar = (k8h) this.b.zzb();
        if (true == ((List) this.c.zzb()).contains("2")) {
            objZzb = k8hVar;
        }
        pyi.b(objZzb);
        return objZzb;
    }
}
