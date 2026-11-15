package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import bc.b;
import com.google.android.datatransport.cct.a;
import com.google.android.datatransport.runtime.t;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.datatransport.TransportRegistrar;
import java.util.Arrays;
import java.util.List;
import ob.b0;
import ob.c;
import ob.e;
import ob.h;
import ob.r;
import t8.i;

@Keep
public class TransportRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    public static i lambda$getComponents$0(e eVar) {
        t.f((Context) eVar.a(Context.class));
        return t.c().g(a.f23519h);
    }

    public static i lambda$getComponents$1(e eVar) {
        t.f((Context) eVar.a(Context.class));
        return t.c().g(a.f23519h);
    }

    public static i lambda$getComponents$2(e eVar) {
        t.f((Context) eVar.a(Context.class));
        return t.c().g(a.f23518g);
    }

    @Override
    @NonNull
    public List<c> getComponents() {
        return Arrays.asList(c.c(i.class).h(LIBRARY_NAME).b(r.k(Context.class)).f(new h() {
            @Override
            public final Object a(ob.e eVar) {
                return TransportRegistrar.lambda$getComponents$0(eVar);
            }
        }).d(), c.e(b0.a(bc.a.class, i.class)).b(r.k(Context.class)).f(new h() {
            @Override
            public final Object a(ob.e eVar) {
                return TransportRegistrar.lambda$getComponents$1(eVar);
            }
        }).d(), c.e(b0.a(b.class, i.class)).b(r.k(Context.class)).f(new h() {
            @Override
            public final Object a(ob.e eVar) {
                return TransportRegistrar.lambda$getComponents$2(eVar);
            }
        }).d(), zc.h.b(LIBRARY_NAME, "19.0.0"));
    }
}
