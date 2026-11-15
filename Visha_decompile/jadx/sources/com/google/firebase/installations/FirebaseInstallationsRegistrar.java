package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import defpackage.d50;
import defpackage.ew3;
import defpackage.ic1;
import defpackage.k82;
import defpackage.kw3;
import defpackage.nc1;
import defpackage.qk5;
import defpackage.rf0;
import defpackage.vk8;
import defpackage.wo4;
import defpackage.xo4;
import defpackage.zb1;
import defpackage.zv3;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

@Keep
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-installations";

    public static kw3 lambda$getComponents$0(ic1 ic1Var) {
        return new a((zv3) ic1Var.a(zv3.class), ic1Var.e(xo4.class), (ExecutorService) ic1Var.d(vk8.a(d50.class, ExecutorService.class)), ew3.a((Executor) ic1Var.d(vk8.a(rf0.class, Executor.class))));
    }

    @Override
    public List<zb1> getComponents() {
        return Arrays.asList(zb1.e(kw3.class).h(LIBRARY_NAME).b(k82.k(zv3.class)).b(k82.i(xo4.class)).b(k82.j(vk8.a(d50.class, ExecutorService.class))).b(k82.j(vk8.a(rf0.class, Executor.class))).f(new nc1() {
            @Override
            public final Object a(ic1 ic1Var) {
                return FirebaseInstallationsRegistrar.lambda$getComponents$0(ic1Var);
            }
        }).d(), wo4.a(), qk5.b(LIBRARY_NAME, "18.0.0"));
    }
}
