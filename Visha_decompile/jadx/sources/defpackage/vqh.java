package defpackage;

import com.google.android.gms.internal.ads.j8;
import java.util.List;
import java.util.concurrent.Callable;

public final class vqh {
    public final Object a;
    public final List b;
    public final erh c;

    public vqh(erh erhVar, Object obj, List list, drh drhVar) {
        this.c = erhVar;
        this.a = obj;
        this.b = list;
    }

    public final crh a(Callable callable) {
        List list = this.b;
        w7i w7iVarB = j8.b(list);
        im5 im5VarA = w7iVarB.a(new Callable() {
            @Override
            public final Object call() {
                return null;
            }
        }, zef.g);
        erh erhVar = this.c;
        return new crh(erhVar, this.a, im5VarA, list, w7iVarB.a(callable, erhVar.a));
    }
}
