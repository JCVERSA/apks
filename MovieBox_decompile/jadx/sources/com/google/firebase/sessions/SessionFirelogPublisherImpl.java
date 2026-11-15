package com.google.firebase.sessions;

import android.util.Log;
import com.google.firebase.sessions.settings.SessionsSettings;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;

public final class SessionFirelogPublisherImpl implements w {

    public static final a f31770g = new a(null);

    private static final double f31771h = Math.random();

    private final com.google.firebase.f f31772b;

    private final lc.e f31773c;

    private final SessionsSettings f31774d;

    private final g f31775e;

    private final CoroutineContext f31776f;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public SessionFirelogPublisherImpl(com.google.firebase.f firebaseApp, lc.e firebaseInstallations, SessionsSettings sessionSettings, g eventGDTLogger, CoroutineContext backgroundDispatcher) {
        Intrinsics.h(firebaseApp, "firebaseApp");
        Intrinsics.h(firebaseInstallations, "firebaseInstallations");
        Intrinsics.h(sessionSettings, "sessionSettings");
        Intrinsics.h(eventGDTLogger, "eventGDTLogger");
        Intrinsics.h(backgroundDispatcher, "backgroundDispatcher");
        this.f31772b = firebaseApp;
        this.f31773c = firebaseInstallations;
        this.f31774d = sessionSettings;
        this.f31775e = eventGDTLogger;
        this.f31776f = backgroundDispatcher;
    }

    public final void g(u uVar) {
        try {
            this.f31775e.a(uVar);
        } catch (RuntimeException e10) {
            Log.e("SessionFirelogPublisher", "Error logging Session Start event to DataTransport: ", e10);
        }
    }

    private final boolean h() {
        return f31771h <= this.f31774d.b();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object i(Continuation continuation) {
        SessionFirelogPublisherImpl$shouldLogSession$1 sessionFirelogPublisherImpl$shouldLogSession$1;
        SessionFirelogPublisherImpl sessionFirelogPublisherImpl;
        if (continuation instanceof SessionFirelogPublisherImpl$shouldLogSession$1) {
            sessionFirelogPublisherImpl$shouldLogSession$1 = (SessionFirelogPublisherImpl$shouldLogSession$1) continuation;
            int i10 = sessionFirelogPublisherImpl$shouldLogSession$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                sessionFirelogPublisherImpl$shouldLogSession$1.label = i10 - Integer.MIN_VALUE;
            } else {
                sessionFirelogPublisherImpl$shouldLogSession$1 = new SessionFirelogPublisherImpl$shouldLogSession$1(this, continuation);
            }
        } else {
            sessionFirelogPublisherImpl$shouldLogSession$1 = new SessionFirelogPublisherImpl$shouldLogSession$1(this, continuation);
        }
        Object obj = sessionFirelogPublisherImpl$shouldLogSession$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = sessionFirelogPublisherImpl$shouldLogSession$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            SessionsSettings sessionsSettings = this.f31774d;
            sessionFirelogPublisherImpl$shouldLogSession$1.L$0 = this;
            sessionFirelogPublisherImpl$shouldLogSession$1.label = 1;
            if (sessionsSettings.g(sessionFirelogPublisherImpl$shouldLogSession$1) == objF) {
                return objF;
            }
            sessionFirelogPublisherImpl = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            sessionFirelogPublisherImpl = (SessionFirelogPublisherImpl) sessionFirelogPublisherImpl$shouldLogSession$1.L$0;
            ResultKt.b(obj);
        }
        if (sessionFirelogPublisherImpl.f31774d.d()) {
            return !sessionFirelogPublisherImpl.h() ? Boxing.a(false) : Boxing.a(true);
        }
        return Boxing.a(false);
    }

    @Override
    public void a(t sessionDetails) {
        Intrinsics.h(sessionDetails, "sessionDetails");
        kotlinx.coroutines.k.d(o0.a(this.f31776f), null, null, new SessionFirelogPublisherImpl$logSession$1(this, sessionDetails, null), 3, null);
    }
}
