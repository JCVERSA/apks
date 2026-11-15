package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import ob.h;
import ob.r;

@Keep
@KeepForSdk
public class AnalyticsConnectorRegistrar implements ComponentRegistrar {
    @Override
    @NonNull
    @Keep
    @SuppressLint({"MissingPermission"})
    @KeepForSdk
    public List<ob.c> getComponents() {
        return Arrays.asList(ob.c.c(mb.a.class).b(r.k(com.google.firebase.f.class)).b(r.k(Context.class)).b(r.k(hc.d.class)).f(new h() {
            @Override
            public final Object a(ob.e eVar) {
                return mb.b.h((com.google.firebase.f) eVar.a(com.google.firebase.f.class), (Context) eVar.a(Context.class), (hc.d) eVar.a(hc.d.class));
            }
        }).e().d(), zc.h.b("fire-analytics", "22.1.2"));
    }
}
