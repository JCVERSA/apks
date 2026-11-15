package com.vungle.ads.internal.model;

import kotlin.Deprecated;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.b2;
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.w1;

public final class h {
    public static final b Companion = new b(null);
    private final String sdkUserAgent;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final kotlinx.serialization.descriptors.f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.RtbRequest", aVar, 1);
            pluginGeneratedSerialDescriptor.l("sdk_user_agent", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public kotlinx.serialization.b[] childSerializers() {
            return new kotlinx.serialization.b[]{ry.a.s(b2.f65143a)};
        }

        @Override
        public h deserialize(sy.e decoder) {
            Object objN;
            Intrinsics.h(decoder, "decoder");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            sy.c cVarB = decoder.b(descriptor2);
            int i10 = 1;
            w1 w1Var = null;
            if (cVarB.p()) {
                objN = cVarB.n(descriptor2, 0, b2.f65143a, null);
            } else {
                boolean z10 = true;
                int i11 = 0;
                objN = null;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    if (iO == -1) {
                        z10 = false;
                    } else {
                        if (iO != 0) {
                            throw new UnknownFieldException(iO);
                        }
                        objN = cVarB.n(descriptor2, 0, b2.f65143a, objN);
                        i11 = 1;
                    }
                }
                i10 = i11;
            }
            cVarB.c(descriptor2);
            return new h(i10, (String) objN, w1Var);
        }

        @Override
        public kotlinx.serialization.descriptors.f getDescriptor() {
            return descriptor;
        }

        @Override
        public void serialize(sy.f encoder, h value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            sy.d dVarB = encoder.b(descriptor2);
            h.write$Self(value, dVarB, descriptor2);
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

    /* JADX WARN: Multi-variable type inference failed */
    public h() {
        this((String) null, 1, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    public static h copy$default(h hVar, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = hVar.sdkUserAgent;
        }
        return hVar.copy(str);
    }

    public static void getSdkUserAgent$annotations() {
    }

    @JvmStatic
    public static final void write$Self(h self, sy.d output, kotlinx.serialization.descriptors.f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        if (!output.z(serialDesc, 0) && self.sdkUserAgent == null) {
            return;
        }
        output.i(serialDesc, 0, b2.f65143a, self.sdkUserAgent);
    }

    public final String component1() {
        return this.sdkUserAgent;
    }

    public final h copy(String str) {
        return new h(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h) && Intrinsics.c(this.sdkUserAgent, ((h) obj).sdkUserAgent);
    }

    public final String getSdkUserAgent() {
        return this.sdkUserAgent;
    }

    public int hashCode() {
        String str = this.sdkUserAgent;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public String toString() {
        return "RtbRequest(sdkUserAgent=" + this.sdkUserAgent + ')';
    }

    @Deprecated
    public h(int i10, String str, w1 w1Var) {
        if ((i10 & 1) == 0) {
            this.sdkUserAgent = null;
        } else {
            this.sdkUserAgent = str;
        }
    }

    public h(String str) {
        this.sdkUserAgent = str;
    }

    public h(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str);
    }
}
