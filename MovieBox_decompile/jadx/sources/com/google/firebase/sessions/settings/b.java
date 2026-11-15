package com.google.firebase.sessions.settings;

import android.content.Context;
import android.os.Bundle;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

public final class b implements d {

    private static final a f31897b = new a(null);

    private final Bundle f31898a;

    private static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(Context context) {
        Intrinsics.h(context, "context");
        Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        this.f31898a = bundle == null ? Bundle.EMPTY : bundle;
    }

    @Override
    public Boolean a() {
        if (this.f31898a.containsKey("firebase_sessions_enabled")) {
            return Boolean.valueOf(this.f31898a.getBoolean("firebase_sessions_enabled"));
        }
        return null;
    }

    @Override
    public Duration b() {
        if (this.f31898a.containsKey("firebase_sessions_sessions_restart_timeout")) {
            return Duration.g(DurationKt.s(this.f31898a.getInt("firebase_sessions_sessions_restart_timeout"), DurationUnit.SECONDS));
        }
        return null;
    }

    @Override
    public Double c() {
        if (this.f31898a.containsKey("firebase_sessions_sampling_rate")) {
            return Double.valueOf(this.f31898a.getDouble("firebase_sessions_sampling_rate"));
        }
        return null;
    }

    @Override
    public Object d(Continuation continuation) {
        return d.a.a(this, continuation);
    }
}
