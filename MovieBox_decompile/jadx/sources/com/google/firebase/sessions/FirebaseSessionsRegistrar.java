package com.google.firebase.sessions;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.sessions.settings.SessionsSettings;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i0;

@Keep
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0001\u0018\u0000 \n2\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J=\u0010\b\u001a0\u0012,\u0012*\u0012\u000e\b\u0001\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006 \u0007*\u0014\u0012\u000e\b\u0001\u0012\n \u0007*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\u00050\u00050\u0004H\u0016¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;", "Lcom/google/firebase/components/ComponentRegistrar;", "<init>", "()V", "", "Lob/c;", "", "kotlin.jvm.PlatformType", "getComponents", "()Ljava/util/List;", "Companion", "a", "com.google.firebase-firebase-sessions"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FirebaseSessionsRegistrar implements ComponentRegistrar {
    private static final a Companion = new a(null);
    private static final String LIBRARY_NAME = "fire-sessions";
    private static final ob.b0 backgroundDispatcher;
    private static final ob.b0 blockingDispatcher;
    private static final ob.b0 firebaseApp;
    private static final ob.b0 firebaseInstallationsApi;
    private static final ob.b0 sessionLifecycleServiceBinder;
    private static final ob.b0 sessionsSettings;
    private static final ob.b0 transportFactory;

    private static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static {
        ob.b0 b0VarB = ob.b0.b(com.google.firebase.f.class);
        Intrinsics.g(b0VarB, "unqualified(FirebaseApp::class.java)");
        firebaseApp = b0VarB;
        ob.b0 b0VarB2 = ob.b0.b(lc.e.class);
        Intrinsics.g(b0VarB2, "unqualified(FirebaseInstallationsApi::class.java)");
        firebaseInstallationsApi = b0VarB2;
        ob.b0 b0VarA = ob.b0.a(nb.a.class, i0.class);
        Intrinsics.g(b0VarA, "qualified(Background::cl…neDispatcher::class.java)");
        backgroundDispatcher = b0VarA;
        ob.b0 b0VarA2 = ob.b0.a(nb.b.class, i0.class);
        Intrinsics.g(b0VarA2, "qualified(Blocking::clas…neDispatcher::class.java)");
        blockingDispatcher = b0VarA2;
        ob.b0 b0VarB3 = ob.b0.b(t8.i.class);
        Intrinsics.g(b0VarB3, "unqualified(TransportFactory::class.java)");
        transportFactory = b0VarB3;
        ob.b0 b0VarB4 = ob.b0.b(SessionsSettings.class);
        Intrinsics.g(b0VarB4, "unqualified(SessionsSettings::class.java)");
        sessionsSettings = b0VarB4;
        ob.b0 b0VarB5 = ob.b0.b(y.class);
        Intrinsics.g(b0VarB5, "unqualified(SessionLifec…erviceBinder::class.java)");
        sessionLifecycleServiceBinder = b0VarB5;
    }

    public static final FirebaseSessions getComponents$lambda$0(ob.e eVar) {
        Object objF = eVar.f(firebaseApp);
        Intrinsics.g(objF, "container[firebaseApp]");
        Object objF2 = eVar.f(sessionsSettings);
        Intrinsics.g(objF2, "container[sessionsSettings]");
        Object objF3 = eVar.f(backgroundDispatcher);
        Intrinsics.g(objF3, "container[backgroundDispatcher]");
        Object objF4 = eVar.f(sessionLifecycleServiceBinder);
        Intrinsics.g(objF4, "container[sessionLifecycleServiceBinder]");
        return new FirebaseSessions((com.google.firebase.f) objF, (SessionsSettings) objF2, (CoroutineContext) objF3, (y) objF4);
    }

    public static final SessionGenerator getComponents$lambda$1(ob.e eVar) {
        return new SessionGenerator(c0.f31854a, null, 2, null);
    }

    public static final w getComponents$lambda$2(ob.e eVar) {
        Object objF = eVar.f(firebaseApp);
        Intrinsics.g(objF, "container[firebaseApp]");
        com.google.firebase.f fVar = (com.google.firebase.f) objF;
        Object objF2 = eVar.f(firebaseInstallationsApi);
        Intrinsics.g(objF2, "container[firebaseInstallationsApi]");
        lc.e eVar2 = (lc.e) objF2;
        Object objF3 = eVar.f(sessionsSettings);
        Intrinsics.g(objF3, "container[sessionsSettings]");
        SessionsSettings sessionsSettings2 = (SessionsSettings) objF3;
        kc.b bVarC = eVar.c(transportFactory);
        Intrinsics.g(bVarC, "container.getProvider(transportFactory)");
        f fVar2 = new f(bVarC);
        Object objF4 = eVar.f(backgroundDispatcher);
        Intrinsics.g(objF4, "container[backgroundDispatcher]");
        return new SessionFirelogPublisherImpl(fVar, eVar2, sessionsSettings2, fVar2, (CoroutineContext) objF4);
    }

    public static final SessionsSettings getComponents$lambda$3(ob.e eVar) {
        Object objF = eVar.f(firebaseApp);
        Intrinsics.g(objF, "container[firebaseApp]");
        Object objF2 = eVar.f(blockingDispatcher);
        Intrinsics.g(objF2, "container[blockingDispatcher]");
        Object objF3 = eVar.f(backgroundDispatcher);
        Intrinsics.g(objF3, "container[backgroundDispatcher]");
        Object objF4 = eVar.f(firebaseInstallationsApi);
        Intrinsics.g(objF4, "container[firebaseInstallationsApi]");
        return new SessionsSettings((com.google.firebase.f) objF, (CoroutineContext) objF2, (CoroutineContext) objF3, (lc.e) objF4);
    }

    public static final s getComponents$lambda$4(ob.e eVar) {
        Context contextK = ((com.google.firebase.f) eVar.f(firebaseApp)).k();
        Intrinsics.g(contextK, "container[firebaseApp].applicationContext");
        Object objF = eVar.f(backgroundDispatcher);
        Intrinsics.g(objF, "container[backgroundDispatcher]");
        return new SessionDatastoreImpl(contextK, (CoroutineContext) objF);
    }

    public static final y getComponents$lambda$5(ob.e eVar) {
        Object objF = eVar.f(firebaseApp);
        Intrinsics.g(objF, "container[firebaseApp]");
        return new z((com.google.firebase.f) objF);
    }

    @Override
    public List<ob.c> getComponents() {
        ob.c.b bVarH = ob.c.c(FirebaseSessions.class).h(LIBRARY_NAME);
        ob.b0 b0Var = firebaseApp;
        ob.c.b bVarB = bVarH.b(ob.r.l(b0Var));
        ob.b0 b0Var2 = sessionsSettings;
        ob.c.b bVarB2 = bVarB.b(ob.r.l(b0Var2));
        ob.b0 b0Var3 = backgroundDispatcher;
        ob.c cVarD = bVarB2.b(ob.r.l(b0Var3)).b(ob.r.l(sessionLifecycleServiceBinder)).f(new ob.h() {
            @Override
            public final Object a(ob.e eVar) {
                return FirebaseSessionsRegistrar.getComponents$lambda$0(eVar);
            }
        }).e().d();
        ob.c cVarD2 = ob.c.c(SessionGenerator.class).h("session-generator").f(new ob.h() {
            @Override
            public final Object a(ob.e eVar) {
                return FirebaseSessionsRegistrar.getComponents$lambda$1(eVar);
            }
        }).d();
        ob.c.b bVarB3 = ob.c.c(w.class).h("session-publisher").b(ob.r.l(b0Var));
        ob.b0 b0Var4 = firebaseInstallationsApi;
        return CollectionsKt.o(cVarD, cVarD2, bVarB3.b(ob.r.l(b0Var4)).b(ob.r.l(b0Var2)).b(ob.r.n(transportFactory)).b(ob.r.l(b0Var3)).f(new ob.h() {
            @Override
            public final Object a(ob.e eVar) {
                return FirebaseSessionsRegistrar.getComponents$lambda$2(eVar);
            }
        }).d(), ob.c.c(SessionsSettings.class).h("sessions-settings").b(ob.r.l(b0Var)).b(ob.r.l(blockingDispatcher)).b(ob.r.l(b0Var3)).b(ob.r.l(b0Var4)).f(new ob.h() {
            @Override
            public final Object a(ob.e eVar) {
                return FirebaseSessionsRegistrar.getComponents$lambda$3(eVar);
            }
        }).d(), ob.c.c(s.class).h("sessions-datastore").b(ob.r.l(b0Var)).b(ob.r.l(b0Var3)).f(new ob.h() {
            @Override
            public final Object a(ob.e eVar) {
                return FirebaseSessionsRegistrar.getComponents$lambda$4(eVar);
            }
        }).d(), ob.c.c(y.class).h("sessions-service-binder").b(ob.r.l(b0Var)).f(new ob.h() {
            @Override
            public final Object a(ob.e eVar) {
                return FirebaseSessionsRegistrar.getComponents$lambda$5(eVar);
            }
        }).d(), zc.h.b(LIBRARY_NAME, "2.0.7"));
    }
}
