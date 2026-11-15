package defpackage;

import com.google.android.gms.internal.ads.j8;
import java.util.Objects;
import java.util.concurrent.Callable;

public final class lug {
    public final hug a;
    public final g8i b;

    public lug(hug hugVar, g8i g8iVar) {
        this.a = hugVar;
        this.b = g8iVar;
    }

    public final void a(pqh pqhVar) {
        final hug hugVar = this.a;
        Objects.requireNonNull(hugVar);
        Callable callable = new Callable() {
            @Override
            public final Object call() {
                return hugVar.getWritableDatabase();
            }
        };
        g8i g8iVar = this.b;
        j8.r(g8iVar.m(callable), new kug(this, pqhVar), g8iVar);
    }
}
