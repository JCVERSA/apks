package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.content.Context;
import io.appmetrica.analytics.IReporter;
import io.appmetrica.analytics.impl.EnumC2700m;
import io.appmetrica.analytics.impl.P5;

public final class P5 {
    public final C2775p a;
    public final IReporter b;
    public Context c;
    public final InterfaceC2725n d;

    public P5(C2775p c2775p) {
        this(c2775p, 0);
    }

    public static final void a(P5 p5, Activity activity, EnumC2700m enumC2700m) {
        int iOrdinal = enumC2700m.ordinal();
        if (iOrdinal == 1) {
            p5.b.resumeSession();
        } else {
            if (iOrdinal != 2) {
                return;
            }
            p5.b.pauseSession();
        }
    }

    public P5(C2775p c2775p, IReporter iReporter) {
        this.a = c2775p;
        this.b = iReporter;
        this.d = new InterfaceC2725n() {
            @Override
            public final void a(Activity activity, EnumC2700m enumC2700m) {
                P5.a(this.a, activity, enumC2700m);
            }
        };
    }

    public final synchronized void a(Context context) {
        if (this.c == null) {
            Context applicationContext = context.getApplicationContext();
            this.a.a(applicationContext);
            this.a.a(this.d, EnumC2700m.RESUMED, EnumC2700m.PAUSED);
            this.c = applicationContext;
        }
    }

    public P5(C2775p c2775p, int i) {
        this(c2775p, AbstractC2802q1.a());
    }
}
