package com.google.firebase.sessions;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

public final class f implements g {

    public static final a f31859b = new a(null);

    private final kc.b f31860a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public f(kc.b transportFactoryProvider) {
        Intrinsics.h(transportFactoryProvider, "transportFactoryProvider");
        this.f31860a = transportFactoryProvider;
    }

    public final byte[] c(u uVar) {
        String strB = v.f31911a.c().b(uVar);
        Intrinsics.g(strB, "SessionEvents.SESSION_EVENT_ENCODER.encode(value)");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Session Event Type: ");
        sb2.append(uVar.b().name());
        byte[] bytes = strB.getBytes(Charsets.UTF_8);
        Intrinsics.g(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    @Override
    public void a(u sessionEvent) {
        Intrinsics.h(sessionEvent, "sessionEvent");
        ((t8.i) this.f31860a.get()).b("FIREBASE_APPQUALITY_SESSION", u.class, t8.c.b("json"), new t8.g() {
            @Override
            public final Object apply(Object obj) {
                return this.f31858a.c((u) obj);
            }
        }).a(t8.d.f(sessionEvent));
    }
}
