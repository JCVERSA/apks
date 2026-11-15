package io.appmetrica.analytics.impl;

import android.os.Bundle;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import java.util.concurrent.TimeUnit;

public final class C2769oi implements Oj {
    public final C2602i0 a;
    public final Lj b;
    public final ICommonExecutor c;

    public C2769oi(@NonNull C2602i0 c2602i0, @NonNull Lj lj) {
        this(c2602i0, lj, C2879t4.i().e().b());
    }

    public final void a(C2743nh c2743nh) {
        AbstractCallableC2793ph eg;
        ICommonExecutor iCommonExecutor = this.c;
        if (c2743nh.b) {
            Lj lj = this.b;
            eg = new C2732n6(lj.a, lj.b, lj.c, c2743nh);
        } else {
            Lj lj2 = this.b;
            eg = new Eg(lj2.b, lj2.c, c2743nh);
        }
        iCommonExecutor.submit(eg);
    }

    public final void b(@NonNull C2743nh c2743nh) {
        Lj lj = this.b;
        C2732n6 c2732n6 = new C2732n6(lj.a, lj.b, lj.c, c2743nh);
        if (this.a.a()) {
            try {
                this.c.submit(c2732n6).get(4L, TimeUnit.SECONDS);
            } catch (Throwable unused) {
            }
        }
        if (c2732n6.c) {
            return;
        }
        try {
            c2732n6.a();
        } catch (Throwable unused2) {
        }
    }

    @Override
    public final void reportData(int i, @NonNull Bundle bundle) {
        ICommonExecutor iCommonExecutor = this.c;
        Lj lj = this.b;
        iCommonExecutor.submit(new C2674kn(lj.b, lj.c, i, bundle));
    }

    public C2769oi(C2602i0 c2602i0, Lj lj, ICommonExecutor iCommonExecutor) {
        this.c = iCommonExecutor;
        this.b = lj;
        this.a = c2602i0;
    }

    public final void b(@NonNull C2791pf c2791pf) {
        ICommonExecutor iCommonExecutor = this.c;
        Lj lj = this.b;
        iCommonExecutor.submit(new C2918ui(lj.b, lj.c, c2791pf));
    }

    public final void a(@NonNull C2791pf c2791pf) {
        ICommonExecutor iCommonExecutor = this.c;
        Lj lj = this.b;
        iCommonExecutor.submit(new C2616ie(lj.b, lj.c, c2791pf));
    }
}
