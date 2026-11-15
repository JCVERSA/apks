package com.google.firebase.abt.component;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.abt.component.AbtRegistrar;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import ob.c;
import ob.e;
import ob.h;
import ob.r;

@Keep
public class AbtRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-abt";

    public static a lambda$getComponents$0(e eVar) {
        return new a((Context) eVar.a(Context.class), eVar.h(mb.a.class));
    }

    @Override
    public List<c> getComponents() {
        return Arrays.asList(c.c(a.class).h(LIBRARY_NAME).b(r.k(Context.class)).b(r.i(mb.a.class)).f(new h() {
            @Override
            public final Object a(e eVar) {
                return AbtRegistrar.lambda$getComponents$0(eVar);
            }
        }).d(), zc.h.b(LIBRARY_NAME, "21.1.1"));
    }
}
