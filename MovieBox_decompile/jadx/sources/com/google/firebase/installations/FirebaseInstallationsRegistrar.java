package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.concurrent.FirebaseExecutors;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import ob.b0;
import ob.r;

@Keep
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-installations";

    public static lc.e lambda$getComponents$0(ob.e eVar) {
        return new c((com.google.firebase.f) eVar.a(com.google.firebase.f.class), eVar.h(ic.h.class), (ExecutorService) eVar.f(b0.a(nb.a.class, ExecutorService.class)), FirebaseExecutors.b((Executor) eVar.f(b0.a(nb.b.class, Executor.class))));
    }

    @Override
    public List<ob.c> getComponents() {
        return Arrays.asList(ob.c.c(lc.e.class).h(LIBRARY_NAME).b(r.k(com.google.firebase.f.class)).b(r.i(ic.h.class)).b(r.l(b0.a(nb.a.class, ExecutorService.class))).b(r.l(b0.a(nb.b.class, Executor.class))).f(new ob.h() {
            @Override
            public final Object a(ob.e eVar) {
                return FirebaseInstallationsRegistrar.lambda$getComponents$0(eVar);
            }
        }).d(), ic.g.a(), zc.h.b(LIBRARY_NAME, "18.0.0"));
    }
}
