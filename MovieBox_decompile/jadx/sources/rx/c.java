package rx;

import com.google.android.libraries.places.api.model.PlaceTypes;
import kotlin.Deprecated;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.f;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.b2;
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.r0;
import kotlinx.serialization.internal.w1;

public final class c {
    public static final b Companion = new b(null);
    private String country;
    private Integer dma;
    private String regionState;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.fpd.Location", aVar, 3);
            pluginGeneratedSerialDescriptor.l(PlaceTypes.COUNTRY, true);
            pluginGeneratedSerialDescriptor.l("region_state", true);
            pluginGeneratedSerialDescriptor.l("dma", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public kotlinx.serialization.b[] childSerializers() {
            b2 b2Var = b2.f65143a;
            return new kotlinx.serialization.b[]{ry.a.s(b2Var), ry.a.s(b2Var), ry.a.s(r0.f65223a)};
        }

        @Override
        public f getDescriptor() {
            return descriptor;
        }

        @Override
        public kotlinx.serialization.b[] typeParametersSerializers() {
            return i0.a.a(this);
        }

        @Override
        public c deserialize(sy.e decoder) {
            int i10;
            Object objN;
            Object objN2;
            Intrinsics.h(decoder, "decoder");
            f descriptor2 = getDescriptor();
            sy.c cVarB = decoder.b(descriptor2);
            Object objN3 = null;
            if (cVarB.p()) {
                b2 b2Var = b2.f65143a;
                Object objN4 = cVarB.n(descriptor2, 0, b2Var, null);
                objN = cVarB.n(descriptor2, 1, b2Var, null);
                objN2 = cVarB.n(descriptor2, 2, r0.f65223a, null);
                objN3 = objN4;
                i10 = 7;
            } else {
                boolean z10 = true;
                int i11 = 0;
                Object objN5 = null;
                Object objN6 = null;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    if (iO == -1) {
                        z10 = false;
                    } else if (iO == 0) {
                        objN3 = cVarB.n(descriptor2, 0, b2.f65143a, objN3);
                        i11 |= 1;
                    } else if (iO == 1) {
                        objN5 = cVarB.n(descriptor2, 1, b2.f65143a, objN5);
                        i11 |= 2;
                    } else {
                        if (iO != 2) {
                            throw new UnknownFieldException(iO);
                        }
                        objN6 = cVarB.n(descriptor2, 2, r0.f65223a, objN6);
                        i11 |= 4;
                    }
                }
                i10 = i11;
                objN = objN5;
                objN2 = objN6;
            }
            cVarB.c(descriptor2);
            return new c(i10, (String) objN3, (String) objN, (Integer) objN2, null);
        }

        @Override
        public void serialize(sy.f encoder, c value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            f descriptor2 = getDescriptor();
            sy.d dVarB = encoder.b(descriptor2);
            c.write$Self(value, dVarB, descriptor2);
            dVarB.c(descriptor2);
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

    public c() {
    }

    private static void getCountry$annotations() {
    }

    private static void getDma$annotations() {
    }

    private static void getRegionState$annotations() {
    }

    @JvmStatic
    public static final void write$Self(c self, sy.d output, f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        if (output.z(serialDesc, 0) || self.country != null) {
            output.i(serialDesc, 0, b2.f65143a, self.country);
        }
        if (output.z(serialDesc, 1) || self.regionState != null) {
            output.i(serialDesc, 1, b2.f65143a, self.regionState);
        }
        if (!output.z(serialDesc, 2) && self.dma == null) {
            return;
        }
        output.i(serialDesc, 2, r0.f65223a, self.dma);
    }

    public final c setCountry(String country) {
        Intrinsics.h(country, "country");
        this.country = country;
        return this;
    }

    public final c setDma(int i10) {
        this.dma = Integer.valueOf(i10);
        return this;
    }

    public final c setRegionState(String regionState) {
        Intrinsics.h(regionState, "regionState");
        this.regionState = regionState;
        return this;
    }

    @Deprecated
    public c(int i10, String str, String str2, Integer num, w1 w1Var) {
        if ((i10 & 1) == 0) {
            this.country = null;
        } else {
            this.country = str;
        }
        if ((i10 & 2) == 0) {
            this.regionState = null;
        } else {
            this.regionState = str2;
        }
        if ((i10 & 4) == 0) {
            this.dma = null;
        } else {
            this.dma = num;
        }
    }
}
