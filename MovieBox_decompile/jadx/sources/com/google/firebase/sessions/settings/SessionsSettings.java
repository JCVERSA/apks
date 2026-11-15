package com.google.firebase.sessions.settings;

import android.content.Context;
import android.util.Log;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.g;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import com.google.firebase.f;
import com.google.firebase.l;
import com.google.firebase.sessions.q;
import com.google.firebase.sessions.r;
import com.google.firebase.sessions.v;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import lc.e;

public final class SessionsSettings {

    public static final a f31884c = new a(null);

    private static final ReadOnlyProperty f31885d = PreferenceDataStoreDelegateKt.b(r.f31867a.b(), new j1.b(new Function1<CorruptionException, androidx.datastore.preferences.core.c>() {
        @Override
        public final androidx.datastore.preferences.core.c invoke(CorruptionException ex2) {
            Intrinsics.h(ex2, "ex");
            Log.w("SessionsSettings", "CorruptionException in settings DataStore in " + q.f31866a.e() + '.', ex2);
            return androidx.datastore.preferences.core.d.a();
        }
    }), null, null, 12, null);

    private final d f31886a;

    private final d f31887b;

    public static final class a {

        static final KProperty[] f31888a = {Reflection.j(new PropertyReference2Impl(a.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final g b(Context context) {
            return (g) SessionsSettings.f31885d.a(context, f31888a[0]);
        }

        public final SessionsSettings c() {
            Object objJ = l.a(com.google.firebase.c.f30244a).j(SessionsSettings.class);
            Intrinsics.g(objJ, "Firebase.app[SessionsSettings::class.java]");
            return (SessionsSettings) objJ;
        }

        private a() {
        }
    }

    public SessionsSettings(d localOverrideSettings, d remoteSettings) {
        Intrinsics.h(localOverrideSettings, "localOverrideSettings");
        Intrinsics.h(remoteSettings, "remoteSettings");
        this.f31886a = localOverrideSettings;
        this.f31887b = remoteSettings;
    }

    private final boolean e(double d10) {
        return 0.0d <= d10 && d10 <= 1.0d;
    }

    private final boolean f(long j10) {
        return Duration.E(j10) && Duration.z(j10);
    }

    public final double b() {
        Double dC = this.f31886a.c();
        if (dC != null) {
            double dDoubleValue = dC.doubleValue();
            if (e(dDoubleValue)) {
                return dDoubleValue;
            }
        }
        Double dC2 = this.f31887b.c();
        if (dC2 == null) {
            return 1.0d;
        }
        double dDoubleValue2 = dC2.doubleValue();
        if (e(dDoubleValue2)) {
            return dDoubleValue2;
        }
        return 1.0d;
    }

    public final long c() {
        Duration durationB = this.f31886a.b();
        if (durationB != null) {
            long rawValue = durationB.getRawValue();
            if (f(rawValue)) {
                return rawValue;
            }
        }
        Duration durationB2 = this.f31887b.b();
        if (durationB2 != null) {
            long rawValue2 = durationB2.getRawValue();
            if (f(rawValue2)) {
                return rawValue2;
            }
        }
        Duration.Companion companion = Duration.INSTANCE;
        return DurationKt.s(30, DurationUnit.MINUTES);
    }

    public final boolean d() {
        Boolean boolA = this.f31886a.a();
        if (boolA != null) {
            return boolA.booleanValue();
        }
        Boolean boolA2 = this.f31887b.a();
        if (boolA2 != null) {
            return boolA2.booleanValue();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(Continuation continuation) {
        SessionsSettings$updateSettings$1 sessionsSettings$updateSettings$1;
        SessionsSettings sessionsSettings;
        if (continuation instanceof SessionsSettings$updateSettings$1) {
            sessionsSettings$updateSettings$1 = (SessionsSettings$updateSettings$1) continuation;
            int i10 = sessionsSettings$updateSettings$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                sessionsSettings$updateSettings$1.label = i10 - Integer.MIN_VALUE;
            } else {
                sessionsSettings$updateSettings$1 = new SessionsSettings$updateSettings$1(this, continuation);
            }
        } else {
            sessionsSettings$updateSettings$1 = new SessionsSettings$updateSettings$1(this, continuation);
        }
        Object obj = sessionsSettings$updateSettings$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = sessionsSettings$updateSettings$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                sessionsSettings = (SessionsSettings) sessionsSettings$updateSettings$1.L$0;
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        d dVar = this.f31886a;
        sessionsSettings$updateSettings$1.L$0 = this;
        sessionsSettings$updateSettings$1.label = 1;
        if (dVar.d(sessionsSettings$updateSettings$1) == objF) {
            return objF;
        }
        sessionsSettings = this;
        d dVar2 = sessionsSettings.f31887b;
        sessionsSettings$updateSettings$1.L$0 = null;
        sessionsSettings$updateSettings$1.label = 2;
        if (dVar2.d(sessionsSettings$updateSettings$1) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    private SessionsSettings(Context context, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, e eVar, com.google.firebase.sessions.b bVar) {
        this(new b(context), new RemoteSettings(coroutineContext2, eVar, bVar, new RemoteSettingsFetcher(bVar, coroutineContext, null, 4, null), f31884c.b(context)));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SessionsSettings(f firebaseApp, CoroutineContext blockingDispatcher, CoroutineContext backgroundDispatcher, e firebaseInstallationsApi) {
        Intrinsics.h(firebaseApp, "firebaseApp");
        Intrinsics.h(blockingDispatcher, "blockingDispatcher");
        Intrinsics.h(backgroundDispatcher, "backgroundDispatcher");
        Intrinsics.h(firebaseInstallationsApi, "firebaseInstallationsApi");
        Context contextK = firebaseApp.k();
        Intrinsics.g(contextK, "firebaseApp.applicationContext");
        this(contextK, blockingDispatcher, backgroundDispatcher, firebaseInstallationsApi, v.f31911a.b(firebaseApp));
    }
}
