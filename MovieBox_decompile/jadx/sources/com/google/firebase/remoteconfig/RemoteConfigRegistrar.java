package com.google.firebase.remoteconfig;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.f;
import com.google.firebase.remoteconfig.RemoteConfigRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import ob.b0;
import ob.e;
import ob.h;
import ob.r;

@Keep
public class RemoteConfigRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-rc";

    public static c lambda$getComponents$0(b0 b0Var, e eVar) {
        return new c((Context) eVar.a(Context.class), (ScheduledExecutorService) eVar.f(b0Var), (f) eVar.a(f.class), (lc.e) eVar.a(lc.e.class), ((com.google.firebase.abt.component.a) eVar.a(com.google.firebase.abt.component.a.class)).b("frc"), eVar.h(mb.a.class));
    }

    @Override
    public List<ob.c> getComponents() {
        final b0 b0VarA = b0.a(nb.b.class, ScheduledExecutorService.class);
        return Arrays.asList(ob.c.d(c.class, cd.a.class).h(LIBRARY_NAME).b(r.k(Context.class)).b(r.l(b0VarA)).b(r.k(f.class)).b(r.k(lc.e.class)).b(r.k(com.google.firebase.abt.component.a.class)).b(r.i(mb.a.class)).f(new h() {
            @Override
            public final Object a(ob.e eVar) {
                return RemoteConfigRegistrar.lambda$getComponents$0(b0VarA, eVar);
            }
        }).e().d(), zc.h.b(LIBRARY_NAME, "22.0.1"));
    }
}
