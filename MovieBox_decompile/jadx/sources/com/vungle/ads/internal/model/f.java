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

public final class f {
    public static final b Companion = new b(null);
    private final String params;
    private final String vendorKey;
    private final String vendorURL;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final kotlinx.serialization.descriptors.f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.internal.model.OmSdkData", aVar, 3);
            pluginGeneratedSerialDescriptor.l("params", true);
            pluginGeneratedSerialDescriptor.l("vendorKey", true);
            pluginGeneratedSerialDescriptor.l("vendorURL", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public kotlinx.serialization.b[] childSerializers() {
            b2 b2Var = b2.f65143a;
            return new kotlinx.serialization.b[]{ry.a.s(b2Var), ry.a.s(b2Var), ry.a.s(b2Var)};
        }

        @Override
        public f deserialize(sy.e decoder) {
            Object objN;
            int i10;
            Object objN2;
            Object objN3;
            Intrinsics.h(decoder, "decoder");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            sy.c cVarB = decoder.b(descriptor2);
            Object objN4 = null;
            if (cVarB.p()) {
                b2 b2Var = b2.f65143a;
                objN2 = cVarB.n(descriptor2, 0, b2Var, null);
                Object objN5 = cVarB.n(descriptor2, 1, b2Var, null);
                objN3 = cVarB.n(descriptor2, 2, b2Var, null);
                objN = objN5;
                i10 = 7;
            } else {
                boolean z10 = true;
                int i11 = 0;
                objN = null;
                Object objN6 = null;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    if (iO == -1) {
                        z10 = false;
                    } else if (iO == 0) {
                        objN4 = cVarB.n(descriptor2, 0, b2.f65143a, objN4);
                        i11 |= 1;
                    } else if (iO == 1) {
                        objN = cVarB.n(descriptor2, 1, b2.f65143a, objN);
                        i11 |= 2;
                    } else {
                        if (iO != 2) {
                            throw new UnknownFieldException(iO);
                        }
                        objN6 = cVarB.n(descriptor2, 2, b2.f65143a, objN6);
                        i11 |= 4;
                    }
                }
                i10 = i11;
                objN2 = objN4;
                objN3 = objN6;
            }
            cVarB.c(descriptor2);
            return new f(i10, (String) objN2, (String) objN, (String) objN3, (w1) null);
        }

        @Override
        public kotlinx.serialization.descriptors.f getDescriptor() {
            return descriptor;
        }

        @Override
        public void serialize(sy.f encoder, f value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            kotlinx.serialization.descriptors.f descriptor2 = getDescriptor();
            sy.d dVarB = encoder.b(descriptor2);
            f.write$Self(value, dVarB, descriptor2);
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

    public f() {
        this((String) null, (String) null, (String) null, 7, (DefaultConstructorMarker) null);
    }

    public static f copy$default(f fVar, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = fVar.params;
        }
        if ((i10 & 2) != 0) {
            str2 = fVar.vendorKey;
        }
        if ((i10 & 4) != 0) {
            str3 = fVar.vendorURL;
        }
        return fVar.copy(str, str2, str3);
    }

    @JvmStatic
    public static final void write$Self(f self, sy.d output, kotlinx.serialization.descriptors.f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        if (output.z(serialDesc, 0) || self.params != null) {
            output.i(serialDesc, 0, b2.f65143a, self.params);
        }
        if (output.z(serialDesc, 1) || self.vendorKey != null) {
            output.i(serialDesc, 1, b2.f65143a, self.vendorKey);
        }
        if (!output.z(serialDesc, 2) && self.vendorURL == null) {
            return;
        }
        output.i(serialDesc, 2, b2.f65143a, self.vendorURL);
    }

    public final String component1() {
        return this.params;
    }

    public final String component2() {
        return this.vendorKey;
    }

    public final String component3() {
        return this.vendorURL;
    }

    public final f copy(String str, String str2, String str3) {
        return new f(str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return Intrinsics.c(this.params, fVar.params) && Intrinsics.c(this.vendorKey, fVar.vendorKey) && Intrinsics.c(this.vendorURL, fVar.vendorURL);
    }

    public final String getParams() {
        return this.params;
    }

    public final String getVendorKey() {
        return this.vendorKey;
    }

    public final String getVendorURL() {
        return this.vendorURL;
    }

    public int hashCode() {
        String str = this.params;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.vendorKey;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.vendorURL;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "OmSdkData(params=" + this.params + ", vendorKey=" + this.vendorKey + ", vendorURL=" + this.vendorURL + ')';
    }

    @Deprecated
    public f(int i10, String str, String str2, String str3, w1 w1Var) {
        if ((i10 & 1) == 0) {
            this.params = null;
        } else {
            this.params = str;
        }
        if ((i10 & 2) == 0) {
            this.vendorKey = null;
        } else {
            this.vendorKey = str2;
        }
        if ((i10 & 4) == 0) {
            this.vendorURL = null;
        } else {
            this.vendorURL = str3;
        }
    }

    public f(String str, String str2, String str3) {
        this.params = str;
        this.vendorKey = str2;
        this.vendorURL = str3;
    }

    public f(String str, String str2, String str3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : str3);
    }
}
