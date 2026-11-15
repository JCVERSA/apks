package com.google.firebase.messaging;

import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import java.util.Arrays;
import java.util.List;

@Keep
@KeepForSdk
public class FirebaseMessagingRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-fcm";

    public static FirebaseMessaging lambda$getComponents$0(ob.b0 b0Var, ob.e eVar) {
        com.google.firebase.f fVar = (com.google.firebase.f) eVar.a(com.google.firebase.f.class);
        android.support.v4.media.session.c.a(eVar.a(jc.a.class));
        return new FirebaseMessaging(fVar, null, eVar.h(zc.i.class), eVar.h(HeartBeatInfo.class), (lc.e) eVar.a(lc.e.class), eVar.c(b0Var), (hc.d) eVar.a(hc.d.class));
    }

    @Override
    @Keep
    public List<ob.c> getComponents() {
        final ob.b0 b0VarA = ob.b0.a(bc.b.class, t8.i.class);
        return Arrays.asList(ob.c.c(FirebaseMessaging.class).h(LIBRARY_NAME).b(ob.r.k(com.google.firebase.f.class)).b(ob.r.h(jc.a.class)).b(ob.r.i(zc.i.class)).b(ob.r.i(HeartBeatInfo.class)).b(ob.r.k(lc.e.class)).b(ob.r.j(b0VarA)).b(ob.r.k(hc.d.class)).f(new ob.h() {
            @Override
            public final Object a(ob.e eVar) {
                return FirebaseMessagingRegistrar.lambda$getComponents$0(b0VarA, eVar);
            }
        }).c().d(), zc.h.b(LIBRARY_NAME, "25.0.1"));
    }
}
