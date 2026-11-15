package com.vungle.ads.internal.model;

import kotlin.Deprecated;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.b2;
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.m1;
import kotlinx.serialization.internal.w1;

public final class j {
    public static final b Companion = new b(null);
    private final String eventId;
    private String sessionId;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final kotlinx.serialization.descriptors.f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.UnclosedAd", aVar, 2);
            pluginGeneratedSerialDescriptor.l("107", false);
            pluginGeneratedSerialDescriptor.l("101", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public kotlinx.serialization.b[] childSerializers() {
            b2 b2Var = b2.f65143a;
            return new kotlinx.serialization.b[]{b2Var, b2Var};
        }

        @Override
        public j deserialize(sy.e decoder) {
            String strM;
            String strM2;
            int i10;
            Intrinsics.h(decoder, "decoder");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            sy.c cVarB = decoder.b(descriptor2);
            w1 w1Var = null;
            if (cVarB.p()) {
                strM = cVarB.m(descriptor2, 0);
                strM2 = cVarB.m(descriptor2, 1);
                i10 = 3;
            } else {
                boolean z10 = true;
                int i11 = 0;
                strM = null;
                String strM3 = null;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    if (iO == -1) {
                        z10 = false;
                    } else if (iO == 0) {
                        strM = cVarB.m(descriptor2, 0);
                        i11 |= 1;
                    } else {
                        if (iO != 1) {
                            throw new UnknownFieldException(iO);
                        }
                        strM3 = cVarB.m(descriptor2, 1);
                        i11 |= 2;
                    }
                }
                strM2 = strM3;
                i10 = i11;
            }
            cVarB.c(descriptor2);
            return new j(i10, strM, strM2, w1Var);
        }

        @Override
        public kotlinx.serialization.descriptors.f getDescriptor() {
            return descriptor;
        }

        @Override
        public void serialize(sy.f encoder, j value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            sy.d dVarB = encoder.b(descriptor2);
            j.write$Self(value, dVarB, descriptor2);
            dVarB.c(descriptor2);
        }

        @Override
        public kotlinx.serialization.b[] typeParametersSerializers() {
            return i0.a.a(this);
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final kotlinx.serialization.b serializer() {
            return a.INSTANCE;
        }

        private b() {
        }
    }

    @Deprecated
    public j(int i10, String str, String str2, w1 w1Var) {
        if (1 != (i10 & 1)) {
            m1.a(i10, 1, a.INSTANCE.getDescriptor());
        }
        this.eventId = str;
        if ((i10 & 2) == 0) {
            this.sessionId = "";
        } else {
            this.sessionId = str2;
        }
    }

    public static j copy$default(j jVar, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = jVar.eventId;
        }
        if ((i10 & 2) != 0) {
            str2 = jVar.sessionId;
        }
        return jVar.copy(str, str2);
    }

    public static void getEventId$annotations() {
    }

    public static void getSessionId$annotations() {
    }

    @JvmStatic
    public static final void write$Self(j self, sy.d output, kotlinx.serialization.descriptors.f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        output.y(serialDesc, 0, self.eventId);
        if (!output.z(serialDesc, 1) && Intrinsics.c(self.sessionId, "")) {
            return;
        }
        output.y(serialDesc, 1, self.sessionId);
    }

    public final String component1() {
        return this.eventId;
    }

    public final String component2() {
        return this.sessionId;
    }

    public final j copy(String eventId, String sessionId) {
        Intrinsics.h(eventId, "eventId");
        Intrinsics.h(sessionId, "sessionId");
        return new j(eventId, sessionId);
    }

    public boolean equals(Object obj) {
        if (obj == null || !Intrinsics.c(j.class, obj.getClass())) {
            return false;
        }
        j jVar = (j) obj;
        return Intrinsics.c(this.eventId, jVar.eventId) && Intrinsics.c(this.sessionId, jVar.sessionId);
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final String getSessionId() {
        return this.sessionId;
    }

    public int hashCode() {
        return (this.eventId.hashCode() * 31) + this.sessionId.hashCode();
    }

    public final void setSessionId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.sessionId = str;
    }

    public String toString() {
        return "UnclosedAd(eventId=" + this.eventId + ", sessionId=" + this.sessionId + ')';
    }

    public j(String eventId, String sessionId) {
        Intrinsics.h(eventId, "eventId");
        Intrinsics.h(sessionId, "sessionId");
        this.eventId = eventId;
        this.sessionId = sessionId;
    }

    public j(String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? "" : str2);
    }
}
