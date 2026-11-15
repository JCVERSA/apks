package com.vungle.ads.internal.signals;

import com.bykv.vk.openvk.preload.falconx.statistic.StatisticData;
import com.transsion.push.bean.MsgStyle;
import com.vungle.ads.internal.model.j;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.Deprecated;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.f;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.b1;
import kotlinx.serialization.internal.b2;
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.m1;
import kotlinx.serialization.internal.r0;
import kotlinx.serialization.internal.w1;
import sy.c;
import sy.d;
import sy.e;

public final class a {
    public static final b Companion = new b(null);
    private final int sessionCount;
    private long sessionCreationTime;
    private int sessionDepthCounter;
    private long sessionDuration;
    private final String sessionId;
    private List<com.vungle.ads.internal.signals.b> signaledAd;
    private List<j> unclosedAd;

    public static final class C0688a implements i0 {
        public static final C0688a INSTANCE;
        public static final f descriptor;

        static {
            C0688a c0688a = new C0688a();
            INSTANCE = c0688a;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.signals.SessionData", c0688a, 7);
            pluginGeneratedSerialDescriptor.l("103", false);
            pluginGeneratedSerialDescriptor.l("101", true);
            pluginGeneratedSerialDescriptor.l(StatisticData.ERROR_CODE_NOT_FOUND, true);
            pluginGeneratedSerialDescriptor.l("106", true);
            pluginGeneratedSerialDescriptor.l(MsgStyle.STYLE_VERTICAL_TYPE, true);
            pluginGeneratedSerialDescriptor.l("104", true);
            pluginGeneratedSerialDescriptor.l("105", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private C0688a() {
        }

        @Override
        public kotlinx.serialization.b[] childSerializers() {
            kotlinx.serialization.internal.f fVar = new kotlinx.serialization.internal.f(com.vungle.ads.internal.signals.b.a.INSTANCE);
            kotlinx.serialization.internal.f fVar2 = new kotlinx.serialization.internal.f(j.a.INSTANCE);
            r0 r0Var = r0.f65223a;
            b1 b1Var = b1.f65141a;
            return new kotlinx.serialization.b[]{r0Var, b2.f65143a, b1Var, fVar, b1Var, r0Var, fVar2};
        }

        @Override
        public a deserialize(e decoder) {
            int i10;
            Object objY;
            int i11;
            long j10;
            int i12;
            String str;
            Object objY2;
            long j11;
            Intrinsics.h(decoder, "decoder");
            f descriptor2 = getDescriptor();
            c cVarB = decoder.b(descriptor2);
            int i13 = 2;
            if (cVarB.p()) {
                int i14 = cVarB.i(descriptor2, 0);
                String strM = cVarB.m(descriptor2, 1);
                long jF = cVarB.f(descriptor2, 2);
                objY2 = cVarB.y(descriptor2, 3, new kotlinx.serialization.internal.f(com.vungle.ads.internal.signals.b.a.INSTANCE), null);
                long jF2 = cVarB.f(descriptor2, 4);
                int i15 = cVarB.i(descriptor2, 5);
                objY = cVarB.y(descriptor2, 6, new kotlinx.serialization.internal.f(j.a.INSTANCE), null);
                i10 = i14;
                i11 = i15;
                j10 = jF2;
                str = strM;
                i12 = 127;
                j11 = jF;
            } else {
                long jF3 = 0;
                boolean z10 = true;
                int i16 = 0;
                int i17 = 0;
                String strM2 = null;
                Object objY3 = null;
                long jF4 = 0;
                Object objY4 = null;
                int i18 = 0;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    switch (iO) {
                        case -1:
                            z10 = false;
                            break;
                        case 0:
                            i17 |= 1;
                            i16 = cVarB.i(descriptor2, 0);
                            break;
                        case 1:
                            strM2 = cVarB.m(descriptor2, 1);
                            i17 |= 2;
                            break;
                        case 2:
                            jF4 = cVarB.f(descriptor2, i13);
                            i17 |= 4;
                            break;
                        case 3:
                            objY3 = cVarB.y(descriptor2, 3, new kotlinx.serialization.internal.f(com.vungle.ads.internal.signals.b.a.INSTANCE), objY3);
                            i17 |= 8;
                            i13 = 2;
                            break;
                        case 4:
                            jF3 = cVarB.f(descriptor2, 4);
                            i17 |= 16;
                            i13 = 2;
                            break;
                        case 5:
                            i18 = cVarB.i(descriptor2, 5);
                            i17 |= 32;
                            i13 = 2;
                            break;
                        case 6:
                            objY4 = cVarB.y(descriptor2, 6, new kotlinx.serialization.internal.f(j.a.INSTANCE), objY4);
                            i17 |= 64;
                            i13 = 2;
                            break;
                        default:
                            throw new UnknownFieldException(iO);
                    }
                }
                i10 = i16;
                objY = objY4;
                i11 = i18;
                j10 = jF3;
                i12 = i17;
                str = strM2;
                objY2 = objY3;
                j11 = jF4;
            }
            cVarB.c(descriptor2);
            return new a(i12, i10, str, j11, (List) objY2, j10, i11, (List) objY, null);
        }

        @Override
        public f getDescriptor() {
            return descriptor;
        }

        @Override
        public void serialize(sy.f encoder, a value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            f descriptor2 = getDescriptor();
            d dVarB = encoder.b(descriptor2);
            a.write$Self(value, dVarB, descriptor2);
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
            return C0688a.INSTANCE;
        }

        private b() {
        }
    }

    public a(int i10) {
        this.sessionCount = i10;
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "randomUUID().toString()");
        this.sessionId = string;
        this.sessionCreationTime = System.currentTimeMillis() / 1000;
        this.signaledAd = new ArrayList();
        this.unclosedAd = new ArrayList();
    }

    public static a copy$default(a aVar, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = aVar.sessionCount;
        }
        return aVar.copy(i10);
    }

    public static void getSessionCount$annotations() {
    }

    public static void getSessionCreationTime$annotations() {
    }

    public static void getSessionDepthCounter$annotations() {
    }

    public static void getSessionDuration$annotations() {
    }

    public static void getSessionId$annotations() {
    }

    public static void getSignaledAd$annotations() {
    }

    public static void getUnclosedAd$annotations() {
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0032  */
    @JvmStatic
    public static final void write$Self(a self, d output, f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        output.w(serialDesc, 0, self.sessionCount);
        if (output.z(serialDesc, 1)) {
            output.y(serialDesc, 1, self.sessionId);
        } else {
            String str = self.sessionId;
            String string = UUID.randomUUID().toString();
            Intrinsics.g(string, "randomUUID().toString()");
            if (!Intrinsics.c(str, string)) {
                output.y(serialDesc, 1, self.sessionId);
            }
        }
        if (output.z(serialDesc, 2) || self.sessionCreationTime != System.currentTimeMillis() / 1000) {
            output.F(serialDesc, 2, self.sessionCreationTime);
        }
        if (output.z(serialDesc, 3) || !Intrinsics.c(self.signaledAd, new ArrayList())) {
            output.C(serialDesc, 3, new kotlinx.serialization.internal.f(com.vungle.ads.internal.signals.b.a.INSTANCE), self.signaledAd);
        }
        if (output.z(serialDesc, 4) || self.sessionDuration != 0) {
            output.F(serialDesc, 4, self.sessionDuration);
        }
        if (output.z(serialDesc, 5) || self.sessionDepthCounter != 0) {
            output.w(serialDesc, 5, self.sessionDepthCounter);
        }
        if (!output.z(serialDesc, 6) && Intrinsics.c(self.unclosedAd, new ArrayList())) {
            return;
        }
        output.C(serialDesc, 6, new kotlinx.serialization.internal.f(j.a.INSTANCE), self.unclosedAd);
    }

    public final int component1() {
        return this.sessionCount;
    }

    public final a copy(int i10) {
        return new a(i10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.sessionCount == ((a) obj).sessionCount;
    }

    public final int getSessionCount() {
        return this.sessionCount;
    }

    public final long getSessionCreationTime() {
        return this.sessionCreationTime;
    }

    public final int getSessionDepthCounter() {
        return this.sessionDepthCounter;
    }

    public final long getSessionDuration() {
        return this.sessionDuration;
    }

    public final String getSessionId() {
        return this.sessionId;
    }

    public final List<com.vungle.ads.internal.signals.b> getSignaledAd() {
        return this.signaledAd;
    }

    public final List<j> getUnclosedAd() {
        return this.unclosedAd;
    }

    public int hashCode() {
        return this.sessionCount;
    }

    public final void setSessionCreationTime(long j10) {
        this.sessionCreationTime = j10;
    }

    public final void setSessionDepthCounter(int i10) {
        this.sessionDepthCounter = i10;
    }

    public final void setSessionDuration(long j10) {
        this.sessionDuration = j10;
    }

    public final void setSignaledAd(List<com.vungle.ads.internal.signals.b> list) {
        Intrinsics.h(list, "<set-?>");
        this.signaledAd = list;
    }

    public final void setUnclosedAd(List<j> list) {
        Intrinsics.h(list, "<set-?>");
        this.unclosedAd = list;
    }

    public String toString() {
        return "SessionData(sessionCount=" + this.sessionCount + ')';
    }

    @Deprecated
    public a(int i10, int i11, String str, long j10, List list, long j11, int i12, List list2, w1 w1Var) {
        if (1 != (i10 & 1)) {
            m1.a(i10, 1, C0688a.INSTANCE.getDescriptor());
        }
        this.sessionCount = i11;
        if ((i10 & 2) == 0) {
            String string = UUID.randomUUID().toString();
            Intrinsics.g(string, "randomUUID().toString()");
            this.sessionId = string;
        } else {
            this.sessionId = str;
        }
        if ((i10 & 4) == 0) {
            this.sessionCreationTime = System.currentTimeMillis() / 1000;
        } else {
            this.sessionCreationTime = j10;
        }
        if ((i10 & 8) == 0) {
            this.signaledAd = new ArrayList();
        } else {
            this.signaledAd = list;
        }
        if ((i10 & 16) == 0) {
            this.sessionDuration = 0L;
        } else {
            this.sessionDuration = j11;
        }
        if ((i10 & 32) == 0) {
            this.sessionDepthCounter = 0;
        } else {
            this.sessionDepthCounter = i12;
        }
        if ((i10 & 64) == 0) {
            this.unclosedAd = new ArrayList();
        } else {
            this.unclosedAd = list2;
        }
    }
}
