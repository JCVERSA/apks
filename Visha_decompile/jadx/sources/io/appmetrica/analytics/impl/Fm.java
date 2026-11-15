package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.content.Intent;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import io.appmetrica.analytics.impl.Fm;

public final class Fm {
    public final C2801q0 a;
    public final Cdo b;
    public final C2775p c;
    public final Ak d;
    public final P5 e;
    public final C2636ja f;

    public Fm(C2801q0 c2801q0, Cdo cdo, C2775p c2775p, Ak ak, P5 p5, C2636ja c2636ja) {
        this.a = c2801q0;
        this.b = cdo;
        this.c = c2775p;
        this.d = ak;
        this.e = p5;
        this.f = c2636ja;
    }

    public static Intent a(Activity activity) {
        return (Intent) SystemServiceUtils.accessSystemServiceSafely(activity, "getting intent", "activity", new FunctionWithThrowable() {
            @Override
            public final Object apply(Object obj) {
                return Fm.b((Activity) obj);
            }
        });
    }

    public static final Intent b(Activity activity) {
        return activity.getIntent();
    }

    public Fm(C2801q0 c2801q0, Cdo cdo) {
        this(c2801q0, cdo, C2879t4.i().a(), C2879t4.i().m(), C2879t4.i().f(), C2879t4.i().h());
    }
}
