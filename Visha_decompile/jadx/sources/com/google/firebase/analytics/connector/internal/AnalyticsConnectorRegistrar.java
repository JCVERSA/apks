package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.e2a;
import defpackage.k82;
import defpackage.lb;
import defpackage.nc1;
import defpackage.qk5;
import defpackage.zb1;
import defpackage.zv3;
import java.util.Arrays;
import java.util.List;

@Keep
public class AnalyticsConnectorRegistrar implements ComponentRegistrar {
    @Override
    @NonNull
    @Keep
    @SuppressLint({"MissingPermission"})
    public List<zb1> getComponents() {
        return Arrays.asList(zb1.e(lb.class).b(k82.k(zv3.class)).b(k82.k(Context.class)).b(k82.k(e2a.class)).f(new nc1() {
            @Override
            public final Object a(ic1 ic1Var) {
                return mb.c((zv3) ic1Var.a(zv3.class), (Context) ic1Var.a(Context.class), (e2a) ic1Var.a(e2a.class));
            }
        }).e().d(), qk5.b("fire-analytics", "21.1.1"));
    }
}
