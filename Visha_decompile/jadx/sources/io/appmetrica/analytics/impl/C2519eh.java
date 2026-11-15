package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.coreutils.internal.time.TimeProvider;
import org.json.JSONObject;

public final class C2519eh extends Gg {
    public final Cif b;
    public final Un c;
    public final SafePackageManager d;
    public final TimeProvider e;

    public C2519eh(@NonNull C2706m5 c2706m5) {
        this(c2706m5, c2706m5.t(), C2910ua.j().s(), new SafePackageManager(), new SystemTimeProvider());
    }

    @Override
    public final boolean a(@NonNull C2408a6 c2408a6) {
        C2706m5 c2706m5 = this.a;
        if (this.c.d()) {
            return false;
        }
        C2408a6 c2408a6A = ((C2469ch) c2706m5.k.a()).e ? C2408a6.a(c2408a6, EnumC2588hb.EVENT_TYPE_APP_UPDATE) : C2408a6.a(c2408a6, EnumC2588hb.EVENT_TYPE_INIT);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appInstaller", (String) WrapUtils.getOrDefault(this.d.getInstallerPackageName(c2706m5.a, c2706m5.b.a), ""));
            Cif cif = this.b;
            cif.h.a(cif.a);
            jSONObject.put("preloadInfo", ((C2542ff) cif.c()).b());
        } catch (Throwable unused) {
        }
        c2408a6A.setValue(jSONObject.toString());
        C2810q9 c2810q9 = c2706m5.n;
        c2810q9.a(c2408a6A, C2945vk.a(c2810q9.c.b(c2408a6A), c2408a6A.i));
        Un un = this.c;
        synchronized (un) {
            Vn vn = un.a;
            vn.a(vn.a().put("init_event_done", true));
        }
        this.c.a(this.e.currentTimeMillis());
        return false;
    }

    public C2519eh(C2706m5 c2706m5, Un un, Cif cif, SafePackageManager safePackageManager, SystemTimeProvider systemTimeProvider) {
        super(c2706m5);
        this.c = un;
        this.b = cif;
        this.d = safePackageManager;
        this.e = systemTimeProvider;
    }
}
