package com.google.firebase.crashlytics.ndk;

import android.content.Context;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import ob.e;
import ob.r;

public class CrashlyticsNdkRegistrar implements ComponentRegistrar {
    public qb.a b(ob.e eVar) {
        Context context = (Context) eVar.a(Context.class);
        return c.f(context, !qb.f.g(context));
    }

    @Override
    public List getComponents() {
        return Arrays.asList(ob.c.c(qb.a.class).h("fire-cls-ndk").b(r.k(Context.class)).f(new ob.h() {
            @Override
            public final Object a(e eVar) {
                return this.f278a.b(eVar);
            }
        }).e().d(), zc.h.b("fire-cls-ndk", "19.3.0"));
    }
}
