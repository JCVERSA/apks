package defpackage;

import com.google.android.gms.common.api.Status;
import java.util.concurrent.TimeUnit;

public final class l2e implements k08.a {
    public final k08 a;
    public final zda b;
    public final l08.a c;
    public final q2e d;

    public l2e(k08 k08Var, zda zdaVar, l08.a aVar, q2e q2eVar) {
        this.a = k08Var;
        this.b = zdaVar;
        this.c = aVar;
        this.d = q2eVar;
    }

    @Override
    public final void a(Status status) {
        if (!status.isSuccess()) {
            this.b.b(ud.a(status));
        } else {
            this.b.c(this.c.a(this.a.c(0L, TimeUnit.MILLISECONDS)));
        }
    }
}
