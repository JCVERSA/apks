package rx;

import com.vungle.ads.fpd.AgeRange;
import com.vungle.ads.fpd.LengthOfResidence;
import com.vungle.ads.fpd.MedianHomeValueUSD;
import com.vungle.ads.fpd.MonthlyHousingCosts;
import kotlin.Deprecated;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.f;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.r0;
import kotlinx.serialization.internal.w1;

public final class a {
    public static final b Companion = new b(null);
    private Integer ageRange;
    private Integer lengthOfResidence;
    private Integer medianHomeValueUSD;
    private Integer monthlyHousingPaymentUSD;

    public static final class C0876a implements i0 {
        public static final C0876a INSTANCE;
        public static final f descriptor;

        static {
            C0876a c0876a = new C0876a();
            INSTANCE = c0876a;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.fpd.Demographic", c0876a, 4);
            pluginGeneratedSerialDescriptor.l("age_range", true);
            pluginGeneratedSerialDescriptor.l("length_of_residence", true);
            pluginGeneratedSerialDescriptor.l("median_home_value_usd", true);
            pluginGeneratedSerialDescriptor.l("monthly_housing_payment_usd", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private C0876a() {
        }

        @Override
        public kotlinx.serialization.b[] childSerializers() {
            r0 r0Var = r0.f65223a;
            return new kotlinx.serialization.b[]{ry.a.s(r0Var), ry.a.s(r0Var), ry.a.s(r0Var), ry.a.s(r0Var)};
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
        public a deserialize(sy.e decoder) {
            Object objN;
            int i10;
            Object objN2;
            Object objN3;
            Object objN4;
            Intrinsics.h(decoder, "decoder");
            f descriptor2 = getDescriptor();
            sy.c cVarB = decoder.b(descriptor2);
            Object objN5 = null;
            if (cVarB.p()) {
                r0 r0Var = r0.f65223a;
                objN2 = cVarB.n(descriptor2, 0, r0Var, null);
                objN3 = cVarB.n(descriptor2, 1, r0Var, null);
                Object objN6 = cVarB.n(descriptor2, 2, r0Var, null);
                objN4 = cVarB.n(descriptor2, 3, r0Var, null);
                objN = objN6;
                i10 = 15;
            } else {
                boolean z10 = true;
                int i11 = 0;
                Object objN7 = null;
                objN = null;
                Object objN8 = null;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    if (iO == -1) {
                        z10 = false;
                    } else if (iO == 0) {
                        objN5 = cVarB.n(descriptor2, 0, r0.f65223a, objN5);
                        i11 |= 1;
                    } else if (iO == 1) {
                        objN7 = cVarB.n(descriptor2, 1, r0.f65223a, objN7);
                        i11 |= 2;
                    } else if (iO == 2) {
                        objN = cVarB.n(descriptor2, 2, r0.f65223a, objN);
                        i11 |= 4;
                    } else {
                        if (iO != 3) {
                            throw new UnknownFieldException(iO);
                        }
                        objN8 = cVarB.n(descriptor2, 3, r0.f65223a, objN8);
                        i11 |= 8;
                    }
                }
                i10 = i11;
                objN2 = objN5;
                objN3 = objN7;
                objN4 = objN8;
            }
            cVarB.c(descriptor2);
            return new a(i10, (Integer) objN2, (Integer) objN3, (Integer) objN, (Integer) objN4, null);
        }

        @Override
        public void serialize(sy.f encoder, a value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            f descriptor2 = getDescriptor();
            sy.d dVarB = encoder.b(descriptor2);
            a.write$Self(value, dVarB, descriptor2);
            dVarB.c(descriptor2);
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final kotlinx.serialization.b serializer() {
            return C0876a.INSTANCE;
        }

        private b() {
        }
    }

    public a() {
    }

    private static void getAgeRange$annotations() {
    }

    private static void getLengthOfResidence$annotations() {
    }

    private static void getMedianHomeValueUSD$annotations() {
    }

    private static void getMonthlyHousingPaymentUSD$annotations() {
    }

    @JvmStatic
    public static final void write$Self(a self, sy.d output, f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        if (output.z(serialDesc, 0) || self.ageRange != null) {
            output.i(serialDesc, 0, r0.f65223a, self.ageRange);
        }
        if (output.z(serialDesc, 1) || self.lengthOfResidence != null) {
            output.i(serialDesc, 1, r0.f65223a, self.lengthOfResidence);
        }
        if (output.z(serialDesc, 2) || self.medianHomeValueUSD != null) {
            output.i(serialDesc, 2, r0.f65223a, self.medianHomeValueUSD);
        }
        if (!output.z(serialDesc, 3) && self.monthlyHousingPaymentUSD == null) {
            return;
        }
        output.i(serialDesc, 3, r0.f65223a, self.monthlyHousingPaymentUSD);
    }

    public final a setAgeRange(int i10) {
        this.ageRange = Integer.valueOf(AgeRange.INSTANCE.fromAge$vungle_ads_release(i10).getId());
        return this;
    }

    public final a setLengthOfResidence(int i10) {
        this.lengthOfResidence = Integer.valueOf(LengthOfResidence.INSTANCE.fromYears$vungle_ads_release(i10).getId());
        return this;
    }

    public final a setMedianHomeValueUSD(int i10) {
        this.medianHomeValueUSD = Integer.valueOf(MedianHomeValueUSD.INSTANCE.fromPrice$vungle_ads_release(i10).getId());
        return this;
    }

    public final a setMonthlyHousingCosts(int i10) {
        this.monthlyHousingPaymentUSD = Integer.valueOf(MonthlyHousingCosts.INSTANCE.fromCost$vungle_ads_release(i10).getId());
        return this;
    }

    @Deprecated
    public a(int i10, Integer num, Integer num2, Integer num3, Integer num4, w1 w1Var) {
        if ((i10 & 1) == 0) {
            this.ageRange = null;
        } else {
            this.ageRange = num;
        }
        if ((i10 & 2) == 0) {
            this.lengthOfResidence = null;
        } else {
            this.lengthOfResidence = num2;
        }
        if ((i10 & 4) == 0) {
            this.medianHomeValueUSD = null;
        } else {
            this.medianHomeValueUSD = num3;
        }
        if ((i10 & 8) == 0) {
            this.monthlyHousingPaymentUSD = null;
        } else {
            this.monthlyHousingPaymentUSD = num4;
        }
    }
}
