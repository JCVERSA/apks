package com.google.firebase.sessions;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import com.google.firebase.sessions.api.SessionSubscriber;
import com.google.firebase.sessions.settings.SessionsSettings;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;

public final class FirebaseSessions {

    public static final a f31750c = new a(null);

    private final com.google.firebase.f f31751a;

    private final SessionsSettings f31752b;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.google.firebase.sessions.FirebaseSessions$1", f = "FirebaseSessions.kt", l = {45, Sdk$SDKMetric.SDKMetricType.AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final CoroutineContext $backgroundDispatcher;
        final y $lifecycleServiceBinder;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(CoroutineContext coroutineContext, y yVar, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$backgroundDispatcher = coroutineContext;
            this.$lifecycleServiceBinder = yVar;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FirebaseSessions.this.new AnonymousClass1(this.$backgroundDispatcher, this.$lifecycleServiceBinder, continuation);
        }

        /* JADX WARN: Code duplicated, block: B:29:0x0074  */
        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    ResultKt.b(obj);
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                if (FirebaseSessions.this.f31752b.d()) {
                    SessionLifecycleClient sessionLifecycleClient = new SessionLifecycleClient(this.$backgroundDispatcher);
                    sessionLifecycleClient.i(this.$lifecycleServiceBinder);
                    a0.f31804a.a(sessionLifecycleClient);
                    FirebaseSessions.this.f31751a.h(new com.google.firebase.g() {
                    });
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            FirebaseSessionsDependencies firebaseSessionsDependencies = FirebaseSessionsDependencies.f31807a;
            this.label = 1;
            obj = firebaseSessionsDependencies.c(this);
            if (obj == objF) {
                return objF;
            }
            Collection collectionValues = ((Map) obj).values();
            if (!(collectionValues instanceof Collection) || !collectionValues.isEmpty()) {
                Iterator it = collectionValues.iterator();
                do {
                    if (it.hasNext()) {
                    }
                } while (!((SessionSubscriber) it.next()).a());
                SessionsSettings sessionsSettings = FirebaseSessions.this.f31752b;
                this.label = 2;
                if (sessionsSettings.g(this) == objF) {
                    return objF;
                }
                if (FirebaseSessions.this.f31752b.d()) {
                    SessionLifecycleClient sessionLifecycleClient2 = new SessionLifecycleClient(this.$backgroundDispatcher);
                    sessionLifecycleClient2.i(this.$lifecycleServiceBinder);
                    a0.f31804a.a(sessionLifecycleClient2);
                    FirebaseSessions.this.f31751a.h(new com.google.firebase.g() {
                    });
                }
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public FirebaseSessions(com.google.firebase.f firebaseApp, SessionsSettings settings, CoroutineContext backgroundDispatcher, y lifecycleServiceBinder) {
        Intrinsics.h(firebaseApp, "firebaseApp");
        Intrinsics.h(settings, "settings");
        Intrinsics.h(backgroundDispatcher, "backgroundDispatcher");
        Intrinsics.h(lifecycleServiceBinder, "lifecycleServiceBinder");
        this.f31751a = firebaseApp;
        this.f31752b = settings;
        Context applicationContext = firebaseApp.k().getApplicationContext();
        if (applicationContext instanceof Application) {
            ((Application) applicationContext).registerActivityLifecycleCallbacks(a0.f31804a);
            kotlinx.coroutines.k.d(o0.a(backgroundDispatcher), null, null, new AnonymousClass1(backgroundDispatcher, lifecycleServiceBinder, null), 3, null);
            return;
        }
        Log.e("FirebaseSessions", "Failed to register lifecycle callbacks, unexpected context " + applicationContext.getClass() + '.');
    }
}
