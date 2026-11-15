package com.google.firebase.sessions;

import android.content.Context;
import android.util.Log;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;

public final class SessionDatastoreImpl implements s {

    private static final a f31756f = new a(null);

    private static final ReadOnlyProperty f31757g = PreferenceDataStoreDelegateKt.b(r.f31867a.a(), new j1.b(new Function1<CorruptionException, androidx.datastore.preferences.core.c>() {
        @Override
        public final androidx.datastore.preferences.core.c invoke(CorruptionException ex2) {
            Intrinsics.h(ex2, "ex");
            Log.w("FirebaseSessionsRepo", "CorruptionException in sessions DataStore in " + q.f31866a.e() + '.', ex2);
            return androidx.datastore.preferences.core.d.a();
        }
    }), null, null, 12, null);

    private final Context f31758b;

    private final CoroutineContext f31759c;

    private final AtomicReference f31760d;

    private final kotlinx.coroutines.flow.a f31761e;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.google.firebase.sessions.SessionDatastoreImpl$1", f = "SessionDatastore.kt", l = {TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        static final class a implements kotlinx.coroutines.flow.b {

            final SessionDatastoreImpl f31762a;

            a(SessionDatastoreImpl sessionDatastoreImpl) {
                this.f31762a = sessionDatastoreImpl;
            }

            @Override
            public final Object emit(i iVar, Continuation continuation) {
                this.f31762a.f31760d.set(iVar);
                return Unit.f64096a;
            }
        }

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SessionDatastoreImpl.this.new AnonymousClass1(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.a aVar = SessionDatastoreImpl.this.f31761e;
                a aVar2 = new a(SessionDatastoreImpl.this);
                this.label = 1;
                if (aVar.a(aVar2, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    static final class a {

        static final KProperty[] f31763a = {Reflection.j(new PropertyReference2Impl(a.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final androidx.datastore.core.g b(Context context) {
            return (androidx.datastore.core.g) SessionDatastoreImpl.f31757g.a(context, f31763a[0]);
        }

        private a() {
        }
    }

    static final class b {

        public static final b f31764a = new b();

        private static final androidx.datastore.preferences.core.c.a f31765b = androidx.datastore.preferences.core.f.g("session_id");

        private b() {
        }

        public final androidx.datastore.preferences.core.c.a a() {
            return f31765b;
        }
    }

    public SessionDatastoreImpl(Context context, CoroutineContext backgroundDispatcher) {
        Intrinsics.h(context, "context");
        Intrinsics.h(backgroundDispatcher, "backgroundDispatcher");
        this.f31758b = context;
        this.f31759c = backgroundDispatcher;
        this.f31760d = new AtomicReference();
        final kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(f31756f.b(context).getData(), new SessionDatastoreImpl$firebaseSessionDataFlow$1(null));
        this.f31761e = new kotlinx.coroutines.flow.a() {

            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.b {

                final kotlinx.coroutines.flow.b f31768a;

                final SessionDatastoreImpl f31769b;

                @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
                @DebugMetadata(c = "com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1$2", f = "SessionDatastore.kt", l = {Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE}, m = "emit")
                @SourceDebugExtension
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.b bVar, SessionDatastoreImpl sessionDatastoreImpl) {
                    this.f31768a = bVar;
                    this.f31769b = sessionDatastoreImpl;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i10 = anonymousClass1.label;
                        if ((i10 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i10 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.result;
                    Object objF = IntrinsicsKt.f();
                    int i11 = anonymousClass1.label;
                    if (i11 == 0) {
                        ResultKt.b(obj2);
                        kotlinx.coroutines.flow.b bVar = this.f31768a;
                        i iVarI = this.f31769b.i((androidx.datastore.preferences.core.c) obj);
                        anonymousClass1.label = 1;
                        if (bVar.emit(iVarI, anonymousClass1) == objF) {
                            return objF;
                        }
                    } else {
                        if (i11 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.b(obj2);
                    }
                    return Unit.f64096a;
                }
            }

            @Override
            public Object a(kotlinx.coroutines.flow.b bVar, Continuation continuation) {
                Object objA = aVarE.a(new AnonymousClass2(bVar, this), continuation);
                return objA == IntrinsicsKt.f() ? objA : Unit.f64096a;
            }
        };
        kotlinx.coroutines.k.d(o0.a(backgroundDispatcher), null, null, new AnonymousClass1(null), 3, null);
    }

    public final i i(androidx.datastore.preferences.core.c cVar) {
        return new i((String) cVar.b(b.f31764a.a()));
    }

    @Override
    public String a() {
        i iVar = (i) this.f31760d.get();
        if (iVar != null) {
            return iVar.a();
        }
        return null;
    }

    @Override
    public void b(String sessionId) {
        Intrinsics.h(sessionId, "sessionId");
        kotlinx.coroutines.k.d(o0.a(this.f31759c), null, null, new SessionDatastoreImpl$updateSessionId$1(this, sessionId, null), 3, null);
    }
}
