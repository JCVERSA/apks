package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.backport.Function;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import java.io.File;

public final class Lg {
    public final Context a;
    public final ICommonExecutor b;
    public final C2854s4 c;
    public final C2587ha d;

    public Lg(Context context, C2854s4 c2854s4, IHandlerExecutor iHandlerExecutor, C2587ha c2587ha) {
        this.a = context;
        this.b = iHandlerExecutor;
        this.c = c2854s4;
        this.d = c2587ha;
    }

    public final void a(C3000y0 c3000y0, Consumer consumer, Function function) {
        ICommonExecutor iCommonExecutor = this.b;
        C2587ha c2587ha = this.d;
        String str = c3000y0.d;
        c2587ha.getClass();
        iCommonExecutor.execute(new Gf(new File(str), new Dd(new Ed(c3000y0.a, c3000y0.b), new Cd()), consumer, new Kg(this, c3000y0.f, function)));
    }
}
