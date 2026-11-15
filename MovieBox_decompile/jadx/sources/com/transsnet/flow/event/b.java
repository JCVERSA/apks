package com.transsnet.flow.event;

import android.app.Application;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final b f58030a = new b();

    public static Application f58031b;

    private static c f58032c;

    private b() {
    }

    public final Application a() {
        Application application = f58031b;
        if (application != null) {
            return application;
        }
        Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
        return null;
    }

    public final c b() {
        return f58032c;
    }

    public final void c(Application application) {
        Intrinsics.h(application, "application");
        f58030a.d(application);
        f58032c = new d();
    }

    public final void d(Application application) {
        Intrinsics.h(application, "<set-?>");
        f58031b = application;
    }
}
