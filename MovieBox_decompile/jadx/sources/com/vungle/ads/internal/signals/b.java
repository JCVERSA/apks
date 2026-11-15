package com.vungle.ads.internal.signals;

import androidx.collection.s;
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

public final class b {
    public static final C0689b Companion = new C0689b(null);
    private long adAvailabilityCallbackTime;
    private String eventId;
    private final Long lastAdLoadTime;
    private final long loadAdTime;
    private long playAdTime;
    private int screenOrientation;
    private String templateSignals;
    private long timeBetweenAdAvailabilityAndPlayAd;
    private final long timeSinceLastAdLoad;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.signals.SignaledAd", aVar, 5);
            pluginGeneratedSerialDescriptor.l("500", true);
            pluginGeneratedSerialDescriptor.l("109", false);
            pluginGeneratedSerialDescriptor.l("107", true);
            pluginGeneratedSerialDescriptor.l("110", true);
            pluginGeneratedSerialDescriptor.l("108", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public kotlinx.serialization.b[] childSerializers() {
            b2 b2Var = b2.f65143a;
            kotlinx.serialization.b bVarS = ry.a.s(b2Var);
            kotlinx.serialization.b bVarS2 = ry.a.s(b2Var);
            b1 b1Var = b1.f65141a;
            return new kotlinx.serialization.b[]{bVarS, b1Var, bVarS2, b1Var, r0.f65223a};
        }

        @Override
        public b deserialize(e decoder) {
            long jF;
            int i10;
            Object obj;
            long j10;
            int i11;
            Object objN;
            Intrinsics.h(decoder, "decoder");
            f descriptor2 = getDescriptor();
            c cVarB = decoder.b(descriptor2);
            int i12 = 3;
            if (cVarB.p()) {
                b2 b2Var = b2.f65143a;
                Object objN2 = cVarB.n(descriptor2, 0, b2Var, null);
                long jF2 = cVarB.f(descriptor2, 1);
                objN = cVarB.n(descriptor2, 2, b2Var, null);
                long jF3 = cVarB.f(descriptor2, 3);
                i10 = 31;
                i11 = cVarB.i(descriptor2, 4);
                obj = objN2;
                j10 = jF2;
                jF = jF3;
            } else {
                jF = 0;
                boolean z10 = true;
                int i13 = 0;
                Object objN3 = null;
                Object objN4 = null;
                long jF4 = 0;
                int i14 = 0;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    if (iO == -1) {
                        z10 = false;
                    } else if (iO == 0) {
                        objN3 = cVarB.n(descriptor2, 0, b2.f65143a, objN3);
                        i14 |= 1;
                    } else if (iO == 1) {
                        jF4 = cVarB.f(descriptor2, 1);
                        i14 |= 2;
                    } else if (iO == 2) {
                        objN4 = cVarB.n(descriptor2, 2, b2.f65143a, objN4);
                        i14 |= 4;
                    } else if (iO == i12) {
                        jF = cVarB.f(descriptor2, i12);
                        i14 |= 8;
                    } else {
                        if (iO != 4) {
                            throw new UnknownFieldException(iO);
                        }
                        i13 = cVarB.i(descriptor2, 4);
                        i14 |= 16;
                    }
                    i12 = 3;
                }
                i10 = i14;
                obj = objN3;
                j10 = jF4;
                i11 = i13;
                objN = objN4;
            }
            cVarB.c(descriptor2);
            return new b(i10, (String) obj, j10, (String) objN, jF, i11, null);
        }

        @Override
        public f getDescriptor() {
            return descriptor;
        }

        @Override
        public void serialize(sy.f encoder, b value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            f descriptor2 = getDescriptor();
            d dVarB = encoder.b(descriptor2);
            b.write$Self(value, dVarB, descriptor2);
            dVarB.c(descriptor2);
        }

        @Override
        public kotlinx.serialization.b[] typeParametersSerializers() {
            return i0.a.a(this);
        }
    }

    public static final class C0689b {
        public C0689b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final kotlinx.serialization.b serializer() {
            return a.INSTANCE;
        }

        private C0689b() {
        }
    }

    public b() {
        this(null, 0L, 3, null);
    }

    public static b copy$default(b bVar, Long l10, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            l10 = bVar.lastAdLoadTime;
        }
        if ((i10 & 2) != 0) {
            j10 = bVar.loadAdTime;
        }
        return bVar.copy(l10, j10);
    }

    public static void getAdAvailabilityCallbackTime$annotations() {
    }

    public static void getEventId$annotations() {
    }

    public static void getLastAdLoadTime$annotations() {
    }

    public static void getLoadAdTime$annotations() {
    }

    public static void getPlayAdTime$annotations() {
    }

    public static void getScreenOrientation$annotations() {
    }

    public static void getTemplateSignals$annotations() {
    }

    public static void getTimeBetweenAdAvailabilityAndPlayAd$annotations() {
    }

    private final long getTimeDifference(Long l10, long j10) {
        if (l10 == null) {
            return -1L;
        }
        long jLongValue = j10 - l10.longValue();
        if (jLongValue < 0) {
            return -1L;
        }
        return jLongValue;
    }

    public static void getTimeSinceLastAdLoad$annotations() {
    }

    @JvmStatic
    public static final void write$Self(b self, d output, f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        if (output.z(serialDesc, 0) || self.templateSignals != null) {
            output.i(serialDesc, 0, b2.f65143a, self.templateSignals);
        }
        output.F(serialDesc, 1, self.timeSinceLastAdLoad);
        if (output.z(serialDesc, 2) || self.eventId != null) {
            output.i(serialDesc, 2, b2.f65143a, self.eventId);
        }
        if (output.z(serialDesc, 3) || self.timeBetweenAdAvailabilityAndPlayAd != 0) {
            output.F(serialDesc, 3, self.timeBetweenAdAvailabilityAndPlayAd);
        }
        if (!output.z(serialDesc, 4) && self.screenOrientation == 0) {
            return;
        }
        output.w(serialDesc, 4, self.screenOrientation);
    }

    public final void calculateTimeBetweenAdAvailabilityAndPlayAd() {
        this.timeBetweenAdAvailabilityAndPlayAd = getTimeDifference(Long.valueOf(this.adAvailabilityCallbackTime), this.playAdTime);
    }

    public final Long component1() {
        return this.lastAdLoadTime;
    }

    public final long component2() {
        return this.loadAdTime;
    }

    public final b copy(Long l10, long j10) {
        return new b(l10, j10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.lastAdLoadTime, bVar.lastAdLoadTime) && this.loadAdTime == bVar.loadAdTime;
    }

    public final long getAdAvailabilityCallbackTime() {
        return this.adAvailabilityCallbackTime;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final Long getLastAdLoadTime() {
        return this.lastAdLoadTime;
    }

    public final long getLoadAdTime() {
        return this.loadAdTime;
    }

    public final long getPlayAdTime() {
        return this.playAdTime;
    }

    public final int getScreenOrientation() {
        return this.screenOrientation;
    }

    public final String getTemplateSignals() {
        return this.templateSignals;
    }

    public final long getTimeBetweenAdAvailabilityAndPlayAd() {
        return this.timeBetweenAdAvailabilityAndPlayAd;
    }

    public final long getTimeSinceLastAdLoad() {
        return this.timeSinceLastAdLoad;
    }

    public int hashCode() {
        Long l10 = this.lastAdLoadTime;
        return ((l10 == null ? 0 : l10.hashCode()) * 31) + s.a(this.loadAdTime);
    }

    public final void setAdAvailabilityCallbackTime(long j10) {
        this.adAvailabilityCallbackTime = j10;
    }

    public final void setEventId(String str) {
        this.eventId = str;
    }

    public final void setPlayAdTime(long j10) {
        this.playAdTime = j10;
    }

    public final void setScreenOrientation(int i10) {
        this.screenOrientation = i10;
    }

    public final void setTemplateSignals(String str) {
        this.templateSignals = str;
    }

    public final void setTimeBetweenAdAvailabilityAndPlayAd(long j10) {
        this.timeBetweenAdAvailabilityAndPlayAd = j10;
    }

    public String toString() {
        return "SignaledAd(lastAdLoadTime=" + this.lastAdLoadTime + ", loadAdTime=" + this.loadAdTime + ')';
    }

    @Deprecated
    public b(int i10, String str, long j10, String str2, long j11, int i11, w1 w1Var) {
        if (2 != (i10 & 2)) {
            m1.a(i10, 2, a.INSTANCE.getDescriptor());
        }
        this.lastAdLoadTime = 0L;
        this.loadAdTime = 0L;
        if ((i10 & 1) == 0) {
            this.templateSignals = null;
        } else {
            this.templateSignals = str;
        }
        this.timeSinceLastAdLoad = j10;
        if ((i10 & 4) == 0) {
            this.eventId = null;
        } else {
            this.eventId = str2;
        }
        if ((i10 & 8) == 0) {
            this.timeBetweenAdAvailabilityAndPlayAd = 0L;
        } else {
            this.timeBetweenAdAvailabilityAndPlayAd = j11;
        }
        if ((i10 & 16) == 0) {
            this.screenOrientation = 0;
        } else {
            this.screenOrientation = i11;
        }
        this.adAvailabilityCallbackTime = 0L;
        this.playAdTime = 0L;
        this.timeSinceLastAdLoad = getTimeDifference(0L, 0L);
    }

    public b(Long l10, long j10) {
        this.lastAdLoadTime = l10;
        this.loadAdTime = j10;
        this.timeSinceLastAdLoad = getTimeDifference(l10, j10);
    }

    public b(Long l10, long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0L : l10, (i10 & 2) != 0 ? 0L : j10);
    }
}
