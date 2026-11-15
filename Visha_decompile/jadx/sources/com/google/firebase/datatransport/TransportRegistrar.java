package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.datatransport.TransportRegistrar;
import defpackage.b9b;
import defpackage.bk5;
import defpackage.ic1;
import defpackage.j9b;
import defpackage.k82;
import defpackage.nc1;
import defpackage.qk5;
import defpackage.uo0;
import defpackage.vk8;
import defpackage.y8b;
import defpackage.zb1;
import java.util.Arrays;
import java.util.List;

@Keep
public class TransportRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    public static b9b lambda$getComponents$0(ic1 ic1Var) {
        j9b.f((Context) ic1Var.a(Context.class));
        return j9b.c().g(uo0.h);
    }

    public static b9b lambda$getComponents$1(ic1 ic1Var) {
        j9b.f((Context) ic1Var.a(Context.class));
        return j9b.c().g(uo0.h);
    }

    public static b9b lambda$getComponents$2(ic1 ic1Var) {
        j9b.f((Context) ic1Var.a(Context.class));
        return j9b.c().g(uo0.g);
    }

    @Override
    @NonNull
    public List<zb1> getComponents() {
        return Arrays.asList(zb1.e(b9b.class).h(LIBRARY_NAME).b(k82.k(Context.class)).f(new nc1() {
            @Override
            public final Object a(ic1 ic1Var) {
                return TransportRegistrar.lambda$getComponents$0(ic1Var);
            }
        }).d(), zb1.c(vk8.a(bk5.class, b9b.class)).b(k82.k(Context.class)).f(new nc1() {
            @Override
            public final Object a(ic1 ic1Var) {
                return TransportRegistrar.lambda$getComponents$1(ic1Var);
            }
        }).d(), zb1.c(vk8.a(y8b.class, b9b.class)).b(k82.k(Context.class)).f(new nc1() {
            @Override
            public final Object a(ic1 ic1Var) {
                return TransportRegistrar.lambda$getComponents$2(ic1Var);
            }
        }).d(), qk5.b(LIBRARY_NAME, "18.2.0"));
    }
}
