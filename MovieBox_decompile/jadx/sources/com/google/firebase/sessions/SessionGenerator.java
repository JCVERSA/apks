package com.google.firebase.sessions;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Locale;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class SessionGenerator {

    public static final a f31777f = new a(null);

    private final b0 f31778a;

    private final Function0 f31779b;

    private final String f31780c;

    private int f31781d;

    private t f31782e;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    class AnonymousClass1 extends FunctionReferenceImpl implements Function0<UUID> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(0, UUID.class, "randomUUID", "randomUUID()Ljava/util/UUID;", 0);
        }

        @Override
        public final UUID invoke() {
            return UUID.randomUUID();
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SessionGenerator a() {
            Object objJ = com.google.firebase.l.a(com.google.firebase.c.f30244a).j(SessionGenerator.class);
            Intrinsics.g(objJ, "Firebase.app[SessionGenerator::class.java]");
            return (SessionGenerator) objJ;
        }

        private a() {
        }
    }

    public SessionGenerator(b0 timeProvider, Function0 uuidGenerator) {
        Intrinsics.h(timeProvider, "timeProvider");
        Intrinsics.h(uuidGenerator, "uuidGenerator");
        this.f31778a = timeProvider;
        this.f31779b = uuidGenerator;
        this.f31780c = b();
        this.f31781d = -1;
    }

    private final String b() {
        String string = ((UUID) this.f31779b.invoke()).toString();
        Intrinsics.g(string, "uuidGenerator().toString()");
        String lowerCase = StringsKt.Q(string, "-", "", false, 4, null).toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return lowerCase;
    }

    public final t a() {
        int i10 = this.f31781d + 1;
        this.f31781d = i10;
        this.f31782e = new t(i10 == 0 ? this.f31780c : b(), this.f31780c, this.f31781d, this.f31778a.a());
        return c();
    }

    public final t c() {
        t tVar = this.f31782e;
        if (tVar != null) {
            return tVar;
        }
        Intrinsics.y("currentSession");
        return null;
    }

    public SessionGenerator(b0 b0Var, Function0 function0, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(b0Var, (i10 & 2) != 0 ? AnonymousClass1.INSTANCE : function0);
    }
}
