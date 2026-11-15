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

public final class b {
    public static final C0682b Companion = new C0682b(null);
    private final String appId;
    private final String bundle;
    private final String ver;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final kotlinx.serialization.descriptors.f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.AppNode", aVar, 3);
            pluginGeneratedSerialDescriptor.l("bundle", false);
            pluginGeneratedSerialDescriptor.l("ver", false);
            pluginGeneratedSerialDescriptor.l("id", false);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public kotlinx.serialization.b[] childSerializers() {
            b2 b2Var = b2.f65143a;
            return new kotlinx.serialization.b[]{b2Var, b2Var, b2Var};
        }

        @Override
        public b deserialize(sy.e decoder) {
            String str;
            String strM;
            String str2;
            int i10;
            Intrinsics.h(decoder, "decoder");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            sy.c cVarB = decoder.b(descriptor2);
            if (cVarB.p()) {
                String strM2 = cVarB.m(descriptor2, 0);
                String strM3 = cVarB.m(descriptor2, 1);
                str = strM2;
                strM = cVarB.m(descriptor2, 2);
                str2 = strM3;
                i10 = 7;
            } else {
                String strM4 = null;
                String strM5 = null;
                String strM6 = null;
                boolean z10 = true;
                int i11 = 0;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    if (iO == -1) {
                        z10 = false;
                    } else if (iO == 0) {
                        strM4 = cVarB.m(descriptor2, 0);
                        i11 |= 1;
                    } else if (iO == 1) {
                        strM6 = cVarB.m(descriptor2, 1);
                        i11 |= 2;
                    } else {
                        if (iO != 2) {
                            throw new UnknownFieldException(iO);
                        }
                        strM5 = cVarB.m(descriptor2, 2);
                        i11 |= 4;
                    }
                }
                str = strM4;
                strM = strM5;
                str2 = strM6;
                i10 = i11;
            }
            cVarB.c(descriptor2);
            return new b(i10, str, str2, strM, null);
        }

        @Override
        public kotlinx.serialization.descriptors.f getDescriptor() {
            return descriptor;
        }

        @Override
        public void serialize(sy.f encoder, b value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            sy.d dVarB = encoder.b(descriptor2);
            b.write$Self(value, dVarB, descriptor2);
            dVarB.c(descriptor2);
        }

        @Override
        public kotlinx.serialization.b[] typeParametersSerializers() {
            return i0.a.a(this);
        }
    }

    public static final class C0682b {
        public C0682b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final kotlinx.serialization.b serializer() {
            return a.INSTANCE;
        }

        private C0682b() {
        }
    }

    @Deprecated
    public b(int i10, String str, String str2, String str3, w1 w1Var) {
        if (7 != (i10 & 7)) {
            m1.a(i10, 7, a.INSTANCE.getDescriptor());
        }
        this.bundle = str;
        this.ver = str2;
        this.appId = str3;
    }

    public static b copy$default(b bVar, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = bVar.bundle;
        }
        if ((i10 & 2) != 0) {
            str2 = bVar.ver;
        }
        if ((i10 & 4) != 0) {
            str3 = bVar.appId;
        }
        return bVar.copy(str, str2, str3);
    }

    public static void getAppId$annotations() {
    }

    @JvmStatic
    public static final void write$Self(b self, sy.d output, kotlinx.serialization.descriptors.f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        output.y(serialDesc, 0, self.bundle);
        output.y(serialDesc, 1, self.ver);
        output.y(serialDesc, 2, self.appId);
    }

    public final String component1() {
        return this.bundle;
    }

    public final String component2() {
        return this.ver;
    }

    public final String component3() {
        return this.appId;
    }

    public final b copy(String bundle, String ver, String appId) {
        Intrinsics.h(bundle, "bundle");
        Intrinsics.h(ver, "ver");
        Intrinsics.h(appId, "appId");
        return new b(bundle, ver, appId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.bundle, bVar.bundle) && Intrinsics.c(this.ver, bVar.ver) && Intrinsics.c(this.appId, bVar.appId);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final String getBundle() {
        return this.bundle;
    }

    public final String getVer() {
        return this.ver;
    }

    public int hashCode() {
        return (((this.bundle.hashCode() * 31) + this.ver.hashCode()) * 31) + this.appId.hashCode();
    }

    public String toString() {
        return "AppNode(bundle=" + this.bundle + ", ver=" + this.ver + ", appId=" + this.appId + ')';
    }

    public b(String bundle, String ver, String appId) {
        Intrinsics.h(bundle, "bundle");
        Intrinsics.h(ver, "ver");
        Intrinsics.h(appId, "appId");
        this.bundle = bundle;
        this.ver = ver;
        this.appId = appId;
    }
}
