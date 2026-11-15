package com.google.firebase.messaging;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.messaging.FirebaseMessagingRegistrar;
import defpackage.b9b;
import defpackage.e2a;
import defpackage.ic1;
import defpackage.k82;
import defpackage.kw3;
import defpackage.ljb;
import defpackage.mw3;
import defpackage.nc1;
import defpackage.qk5;
import defpackage.ubc;
import defpackage.vk8;
import defpackage.y8b;
import defpackage.zb1;
import defpackage.zv3;
import java.util.Arrays;
import java.util.List;

@Keep
public class FirebaseMessagingRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-fcm";

    public static FirebaseMessaging lambda$getComponents$0(vk8 vk8Var, ic1 ic1Var) {
        zv3 zv3Var = (zv3) ic1Var.a(zv3.class);
        ubc.a(ic1Var.a(mw3.class));
        return new FirebaseMessaging(zv3Var, null, ic1Var.e(ljb.class), ic1Var.e(HeartBeatInfo.class), (kw3) ic1Var.a(kw3.class), ic1Var.f(vk8Var), (e2a) ic1Var.a(e2a.class));
    }

    @Override
    @Keep
    public List<zb1> getComponents() {
        final vk8 vk8VarA = vk8.a(y8b.class, b9b.class);
        return Arrays.asList(zb1.e(FirebaseMessaging.class).h(LIBRARY_NAME).b(k82.k(zv3.class)).b(k82.g(mw3.class)).b(k82.i(ljb.class)).b(k82.i(HeartBeatInfo.class)).b(k82.k(kw3.class)).b(k82.h(vk8VarA)).b(k82.k(e2a.class)).f(new nc1() {
            @Override
            public final Object a(ic1 ic1Var) {
                return FirebaseMessagingRegistrar.lambda$getComponents$0(vk8VarA, ic1Var);
            }
        }).c().d(), qk5.b(LIBRARY_NAME, "25.0.1"));
    }
}
