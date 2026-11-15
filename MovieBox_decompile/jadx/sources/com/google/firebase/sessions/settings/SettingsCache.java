package com.google.firebase.sessions.settings;

import android.util.Log;
import androidx.datastore.core.g;
import androidx.datastore.preferences.core.PreferencesKt;
import androidx.datastore.preferences.core.f;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j;
import kotlinx.coroutines.n0;

public final class SettingsCache {

    private static final a f31889c = new a(null);

    private static final androidx.datastore.preferences.core.c.a f31890d = f.a("firebase_sessions_enabled");

    private static final androidx.datastore.preferences.core.c.a f31891e = f.c("firebase_sessions_sampling_rate");

    private static final androidx.datastore.preferences.core.c.a f31892f = f.e("firebase_sessions_restart_timeout");

    private static final androidx.datastore.preferences.core.c.a f31893g = f.e("firebase_sessions_cache_duration");

    private static final androidx.datastore.preferences.core.c.a f31894h = f.f("firebase_sessions_cache_updated_time");

    private final g f31895a;

    private c f31896b;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.google.firebase.sessions.settings.SettingsCache$1", f = "SettingsCache.kt", l = {46}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SettingsCache.this.new AnonymousClass1(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            SettingsCache settingsCache;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                SettingsCache settingsCache2 = SettingsCache.this;
                kotlinx.coroutines.flow.a data = settingsCache2.f31895a.getData();
                this.L$0 = settingsCache2;
                this.label = 1;
                Object objO = kotlinx.coroutines.flow.c.o(data, this);
                if (objO == objF) {
                    return objF;
                }
                settingsCache = settingsCache2;
                obj = objO;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                settingsCache = (SettingsCache) this.L$0;
                ResultKt.b(obj);
            }
            settingsCache.l(((androidx.datastore.preferences.core.c) obj).d());
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    private static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public SettingsCache(g dataStore) {
        Intrinsics.h(dataStore, "dataStore");
        this.f31895a = dataStore;
        j.b(null, new AnonymousClass1(null), 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object h(androidx.datastore.preferences.core.c.a aVar, Object obj, Continuation continuation) {
        SettingsCache$updateConfigValue$1 settingsCache$updateConfigValue$1;
        if (continuation instanceof SettingsCache$updateConfigValue$1) {
            settingsCache$updateConfigValue$1 = (SettingsCache$updateConfigValue$1) continuation;
            int i10 = settingsCache$updateConfigValue$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                settingsCache$updateConfigValue$1.label = i10 - Integer.MIN_VALUE;
            } else {
                settingsCache$updateConfigValue$1 = new SettingsCache$updateConfigValue$1(this, continuation);
            }
        } else {
            settingsCache$updateConfigValue$1 = new SettingsCache$updateConfigValue$1(this, continuation);
        }
        Object obj2 = settingsCache$updateConfigValue$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = settingsCache$updateConfigValue$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj2);
                g gVar = this.f31895a;
                SettingsCache$updateConfigValue$2 settingsCache$updateConfigValue$2 = new SettingsCache$updateConfigValue$2(obj, aVar, this, null);
                settingsCache$updateConfigValue$1.label = 1;
                if (PreferencesKt.a(gVar, settingsCache$updateConfigValue$2, settingsCache$updateConfigValue$1) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj2);
            }
        } catch (IOException e10) {
            Log.w("SettingsCache", "Failed to update cache config value: " + e10);
        }
        return Unit.f64096a;
    }

    public final void l(androidx.datastore.preferences.core.c cVar) {
        this.f31896b = new c((Boolean) cVar.b(f31890d), (Double) cVar.b(f31891e), (Integer) cVar.b(f31892f), (Integer) cVar.b(f31893g), (Long) cVar.b(f31894h));
    }

    public final boolean d() {
        c cVar = this.f31896b;
        c cVar2 = null;
        if (cVar == null) {
            Intrinsics.y("sessionConfigs");
            cVar = null;
        }
        Long lB = cVar.b();
        c cVar3 = this.f31896b;
        if (cVar3 == null) {
            Intrinsics.y("sessionConfigs");
        } else {
            cVar2 = cVar3;
        }
        Integer numA = cVar2.a();
        return lB == null || numA == null || (System.currentTimeMillis() - lB.longValue()) / ((long) 1000) >= ((long) numA.intValue());
    }

    public final Integer e() {
        c cVar = this.f31896b;
        if (cVar == null) {
            Intrinsics.y("sessionConfigs");
            cVar = null;
        }
        return cVar.d();
    }

    public final Double f() {
        c cVar = this.f31896b;
        if (cVar == null) {
            Intrinsics.y("sessionConfigs");
            cVar = null;
        }
        return cVar.e();
    }

    public final Boolean g() {
        c cVar = this.f31896b;
        if (cVar == null) {
            Intrinsics.y("sessionConfigs");
            cVar = null;
        }
        return cVar.c();
    }

    public final Object i(Double d10, Continuation continuation) {
        Object objH = h(f31891e, d10, continuation);
        return objH == IntrinsicsKt.f() ? objH : Unit.f64096a;
    }

    public final Object j(Integer num, Continuation continuation) {
        Object objH = h(f31893g, num, continuation);
        return objH == IntrinsicsKt.f() ? objH : Unit.f64096a;
    }

    public final Object k(Long l10, Continuation continuation) {
        Object objH = h(f31894h, l10, continuation);
        return objH == IntrinsicsKt.f() ? objH : Unit.f64096a;
    }

    public final Object m(Integer num, Continuation continuation) {
        Object objH = h(f31892f, num, continuation);
        return objH == IntrinsicsKt.f() ? objH : Unit.f64096a;
    }

    public final Object n(Boolean bool, Continuation continuation) {
        Object objH = h(f31890d, bool, continuation);
        return objH == IntrinsicsKt.f() ? objH : Unit.f64096a;
    }
}
