package rx;

import com.vungle.ads.internal.util.q;
import java.util.List;
import kotlin.Deprecated;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.f;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.b2;
import kotlinx.serialization.internal.h0;
import kotlinx.serialization.internal.i;
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.w1;

public final class d {
    public static final b Companion = new b(null);
    private Float earningsByPlacementUSD;
    private Boolean isUserAPurchaser;
    private Boolean isUserASubscriber;
    private Float last30DaysMeanSpendUSD;
    private Float last30DaysMedianSpendUSD;
    private Float last30DaysPlacementFillRate;
    private Float last30DaysTotalSpendUSD;
    private Float last30DaysUserLtvUSD;
    private Float last30DaysUserPltvUSD;
    private Float last7DaysMeanSpendUSD;
    private Float last7DaysMedianSpendUSD;
    private Float last7DaysPlacementFillRate;
    private Float last7DaysTotalSpendUSD;
    private Float last7DaysUserLtvUSD;
    private Float last7DaysUserPltvUSD;
    private List<String> topNAdomain;
    private Float totalEarningsUSD;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.fpd.Revenue", aVar, 17);
            pluginGeneratedSerialDescriptor.l("total_earnings_usd", true);
            pluginGeneratedSerialDescriptor.l("earnings_by_placement_usd", true);
            pluginGeneratedSerialDescriptor.l("top_n_adomain", true);
            pluginGeneratedSerialDescriptor.l("is_user_a_purchaser", true);
            pluginGeneratedSerialDescriptor.l("is_user_a_subscriber", true);
            pluginGeneratedSerialDescriptor.l("last_7_days_total_spend_usd", true);
            pluginGeneratedSerialDescriptor.l("last_7_days_median_spend_usd", true);
            pluginGeneratedSerialDescriptor.l("last_7_days_mean_spend_usd", true);
            pluginGeneratedSerialDescriptor.l("last_30_days_total_spend_usd", true);
            pluginGeneratedSerialDescriptor.l("last_30_days_median_spend_usd", true);
            pluginGeneratedSerialDescriptor.l("last_30_days_mean_spend_usd", true);
            pluginGeneratedSerialDescriptor.l("last_7_days_user_pltv_usd", true);
            pluginGeneratedSerialDescriptor.l("last_7_days_user_ltv_usd", true);
            pluginGeneratedSerialDescriptor.l("last_30_days_user_pltv_usd", true);
            pluginGeneratedSerialDescriptor.l("last_30_days_user_ltv_usd", true);
            pluginGeneratedSerialDescriptor.l("last_7_days_placement_fill_rate", true);
            pluginGeneratedSerialDescriptor.l("last_30_days_placement_fill_rate", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public kotlinx.serialization.b[] childSerializers() {
            h0 h0Var = h0.f65177a;
            kotlinx.serialization.b bVarS = ry.a.s(h0Var);
            kotlinx.serialization.b bVarS2 = ry.a.s(h0Var);
            kotlinx.serialization.b bVarS3 = ry.a.s(new kotlinx.serialization.internal.f(b2.f65143a));
            i iVar = i.f65183a;
            return new kotlinx.serialization.b[]{bVarS, bVarS2, bVarS3, ry.a.s(iVar), ry.a.s(iVar), ry.a.s(h0Var), ry.a.s(h0Var), ry.a.s(h0Var), ry.a.s(h0Var), ry.a.s(h0Var), ry.a.s(h0Var), ry.a.s(h0Var), ry.a.s(h0Var), ry.a.s(h0Var), ry.a.s(h0Var), ry.a.s(h0Var), ry.a.s(h0Var)};
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
        public d deserialize(sy.e decoder) {
            Object obj;
            Object obj2;
            Object objN;
            int i10;
            Object objN2;
            Object obj3;
            Object objN3;
            Object objN4;
            Object objN5;
            Object objN6;
            Object obj4;
            Object objN7;
            Object objN8;
            Object objN9;
            Object objN10;
            Object objN11;
            Object objN12;
            Object objN13;
            Object objN14;
            Object obj5;
            Intrinsics.h(decoder, "decoder");
            f descriptor2 = getDescriptor();
            sy.c cVarB = decoder.b(descriptor2);
            if (cVarB.p()) {
                h0 h0Var = h0.f65177a;
                Object objN15 = cVarB.n(descriptor2, 0, h0Var, null);
                Object objN16 = cVarB.n(descriptor2, 1, h0Var, null);
                Object objN17 = cVarB.n(descriptor2, 2, new kotlinx.serialization.internal.f(b2.f65143a), null);
                i iVar = i.f65183a;
                objN = cVarB.n(descriptor2, 3, iVar, null);
                objN6 = cVarB.n(descriptor2, 4, iVar, null);
                objN10 = cVarB.n(descriptor2, 5, h0Var, null);
                objN12 = cVarB.n(descriptor2, 6, h0Var, null);
                objN9 = cVarB.n(descriptor2, 7, h0Var, null);
                objN11 = cVarB.n(descriptor2, 8, h0Var, null);
                objN8 = cVarB.n(descriptor2, 9, h0Var, null);
                objN13 = cVarB.n(descriptor2, 10, h0Var, null);
                objN7 = cVarB.n(descriptor2, 11, h0Var, null);
                objN5 = cVarB.n(descriptor2, 12, h0Var, null);
                objN4 = cVarB.n(descriptor2, 13, h0Var, null);
                objN3 = cVarB.n(descriptor2, 14, h0Var, null);
                Object objN18 = cVarB.n(descriptor2, 15, h0Var, null);
                objN2 = cVarB.n(descriptor2, 16, h0Var, null);
                obj = objN16;
                i10 = 131071;
                obj2 = objN15;
                obj3 = objN18;
                obj4 = objN17;
            } else {
                boolean z10 = true;
                Object objN19 = null;
                Object objN20 = null;
                Object objN21 = null;
                Object objN22 = null;
                Object objN23 = null;
                Object objN24 = null;
                Object objN25 = null;
                Object objN26 = null;
                Object objN27 = null;
                Object objN28 = null;
                Object objN29 = null;
                Object objN30 = null;
                Object objN31 = null;
                Object objN32 = null;
                Object objN33 = null;
                Object obj6 = null;
                int i11 = 0;
                Object objN34 = null;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    switch (iO) {
                        case -1:
                            objN14 = obj6;
                            obj5 = objN22;
                            z10 = false;
                            objN21 = objN21;
                            objN22 = obj5;
                            obj6 = objN14;
                            objN34 = objN34;
                            break;
                        case 0:
                            Object obj7 = obj6;
                            obj5 = objN22;
                            objN14 = cVarB.n(descriptor2, 0, h0.f65177a, obj7);
                            i11 |= 1;
                            objN21 = objN21;
                            objN22 = obj5;
                            obj6 = objN14;
                            objN34 = objN34;
                            break;
                        case 1:
                            i11 |= 2;
                            objN22 = cVarB.n(descriptor2, 1, h0.f65177a, objN22);
                            objN21 = objN21;
                            objN34 = objN34;
                            break;
                        case 2:
                            objN34 = cVarB.n(descriptor2, 2, new kotlinx.serialization.internal.f(b2.f65143a), objN34);
                            i11 |= 4;
                            objN21 = objN21;
                            objN22 = objN22;
                            break;
                        case 3:
                            objN20 = cVarB.n(descriptor2, 3, i.f65183a, objN20);
                            i11 |= 8;
                            objN21 = objN21;
                            objN22 = objN22;
                            break;
                        case 4:
                            objN19 = cVarB.n(descriptor2, 4, i.f65183a, objN19);
                            i11 |= 16;
                            objN21 = objN21;
                            objN22 = objN22;
                            break;
                        case 5:
                            objN27 = cVarB.n(descriptor2, 5, h0.f65177a, objN27);
                            i11 |= 32;
                            objN21 = objN21;
                            objN22 = objN22;
                            break;
                        case 6:
                            objN28 = cVarB.n(descriptor2, 6, h0.f65177a, objN28);
                            i11 |= 64;
                            objN21 = objN21;
                            objN22 = objN22;
                            break;
                        case 7:
                            objN26 = cVarB.n(descriptor2, 7, h0.f65177a, objN26);
                            i11 |= 128;
                            objN21 = objN21;
                            objN22 = objN22;
                            break;
                        case 8:
                            objN25 = cVarB.n(descriptor2, 8, h0.f65177a, objN25);
                            i11 |= 256;
                            objN21 = objN21;
                            objN22 = objN22;
                            break;
                        case 9:
                            objN24 = cVarB.n(descriptor2, 9, h0.f65177a, objN24);
                            i11 |= 512;
                            objN21 = objN21;
                            objN22 = objN22;
                            break;
                        case 10:
                            objN29 = cVarB.n(descriptor2, 10, h0.f65177a, objN29);
                            i11 |= 1024;
                            objN21 = objN21;
                            objN22 = objN22;
                            break;
                        case 11:
                            objN23 = cVarB.n(descriptor2, 11, h0.f65177a, objN23);
                            i11 |= 2048;
                            objN21 = objN21;
                            objN22 = objN22;
                            break;
                        case 12:
                            objN22 = objN22;
                            objN30 = cVarB.n(descriptor2, 12, h0.f65177a, objN30);
                            i11 |= 4096;
                            objN21 = objN21;
                            objN31 = objN31;
                            objN22 = objN22;
                            break;
                        case 13:
                            objN22 = objN22;
                            objN31 = cVarB.n(descriptor2, 13, h0.f65177a, objN31);
                            i11 |= 8192;
                            objN21 = objN21;
                            objN32 = objN32;
                            objN22 = objN22;
                            break;
                        case 14:
                            objN22 = objN22;
                            objN32 = cVarB.n(descriptor2, 14, h0.f65177a, objN32);
                            i11 |= 16384;
                            objN21 = objN21;
                            objN33 = objN33;
                            objN22 = objN22;
                            break;
                        case 15:
                            objN33 = cVarB.n(descriptor2, 15, h0.f65177a, objN33);
                            i11 |= 32768;
                            objN21 = objN21;
                            objN22 = objN22;
                            break;
                        case 16:
                            objN21 = cVarB.n(descriptor2, 16, h0.f65177a, objN21);
                            i11 |= 65536;
                            objN22 = objN22;
                            break;
                        default:
                            throw new UnknownFieldException(iO);
                    }
                }
                Object obj8 = objN34;
                Object obj9 = obj6;
                obj = objN22;
                obj2 = obj9;
                objN = objN20;
                i10 = i11;
                objN2 = objN21;
                obj3 = objN33;
                objN3 = objN32;
                objN4 = objN31;
                objN5 = objN30;
                objN6 = objN19;
                obj4 = obj8;
                Object obj10 = objN29;
                objN7 = objN23;
                objN8 = objN24;
                objN9 = objN26;
                objN10 = objN27;
                objN11 = objN25;
                objN12 = objN28;
                objN13 = obj10;
            }
            cVarB.c(descriptor2);
            return new d(i10, (Float) obj2, (Float) obj, (List) obj4, (Boolean) objN, (Boolean) objN6, (Float) objN10, (Float) objN12, (Float) objN9, (Float) objN11, (Float) objN8, (Float) objN13, (Float) objN7, (Float) objN5, (Float) objN4, (Float) objN3, (Float) obj3, (Float) objN2, null);
        }

        @Override
        public void serialize(sy.f encoder, d value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            f descriptor2 = getDescriptor();
            sy.d dVarB = encoder.b(descriptor2);
            d.write$Self(value, dVarB, descriptor2);
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

    public d() {
    }

    private static void getEarningsByPlacementUSD$annotations() {
    }

    private static void getLast30DaysMeanSpendUSD$annotations() {
    }

    private static void getLast30DaysMedianSpendUSD$annotations() {
    }

    private static void getLast30DaysPlacementFillRate$annotations() {
    }

    private static void getLast30DaysTotalSpendUSD$annotations() {
    }

    private static void getLast30DaysUserLtvUSD$annotations() {
    }

    private static void getLast30DaysUserPltvUSD$annotations() {
    }

    private static void getLast7DaysMeanSpendUSD$annotations() {
    }

    private static void getLast7DaysMedianSpendUSD$annotations() {
    }

    private static void getLast7DaysPlacementFillRate$annotations() {
    }

    private static void getLast7DaysTotalSpendUSD$annotations() {
    }

    private static void getLast7DaysUserLtvUSD$annotations() {
    }

    private static void getLast7DaysUserPltvUSD$annotations() {
    }

    private static void getTopNAdomain$annotations() {
    }

    private static void getTotalEarningsUSD$annotations() {
    }

    private static void isUserAPurchaser$annotations() {
    }

    private static void isUserASubscriber$annotations() {
    }

    @JvmStatic
    public static final void write$Self(d self, sy.d output, f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        if (output.z(serialDesc, 0) || self.totalEarningsUSD != null) {
            output.i(serialDesc, 0, h0.f65177a, self.totalEarningsUSD);
        }
        if (output.z(serialDesc, 1) || self.earningsByPlacementUSD != null) {
            output.i(serialDesc, 1, h0.f65177a, self.earningsByPlacementUSD);
        }
        if (output.z(serialDesc, 2) || self.topNAdomain != null) {
            output.i(serialDesc, 2, new kotlinx.serialization.internal.f(b2.f65143a), self.topNAdomain);
        }
        if (output.z(serialDesc, 3) || self.isUserAPurchaser != null) {
            output.i(serialDesc, 3, i.f65183a, self.isUserAPurchaser);
        }
        if (output.z(serialDesc, 4) || self.isUserASubscriber != null) {
            output.i(serialDesc, 4, i.f65183a, self.isUserASubscriber);
        }
        if (output.z(serialDesc, 5) || self.last7DaysTotalSpendUSD != null) {
            output.i(serialDesc, 5, h0.f65177a, self.last7DaysTotalSpendUSD);
        }
        if (output.z(serialDesc, 6) || self.last7DaysMedianSpendUSD != null) {
            output.i(serialDesc, 6, h0.f65177a, self.last7DaysMedianSpendUSD);
        }
        if (output.z(serialDesc, 7) || self.last7DaysMeanSpendUSD != null) {
            output.i(serialDesc, 7, h0.f65177a, self.last7DaysMeanSpendUSD);
        }
        if (output.z(serialDesc, 8) || self.last30DaysTotalSpendUSD != null) {
            output.i(serialDesc, 8, h0.f65177a, self.last30DaysTotalSpendUSD);
        }
        if (output.z(serialDesc, 9) || self.last30DaysMedianSpendUSD != null) {
            output.i(serialDesc, 9, h0.f65177a, self.last30DaysMedianSpendUSD);
        }
        if (output.z(serialDesc, 10) || self.last30DaysMeanSpendUSD != null) {
            output.i(serialDesc, 10, h0.f65177a, self.last30DaysMeanSpendUSD);
        }
        if (output.z(serialDesc, 11) || self.last7DaysUserPltvUSD != null) {
            output.i(serialDesc, 11, h0.f65177a, self.last7DaysUserPltvUSD);
        }
        if (output.z(serialDesc, 12) || self.last7DaysUserLtvUSD != null) {
            output.i(serialDesc, 12, h0.f65177a, self.last7DaysUserLtvUSD);
        }
        if (output.z(serialDesc, 13) || self.last30DaysUserPltvUSD != null) {
            output.i(serialDesc, 13, h0.f65177a, self.last30DaysUserPltvUSD);
        }
        if (output.z(serialDesc, 14) || self.last30DaysUserLtvUSD != null) {
            output.i(serialDesc, 14, h0.f65177a, self.last30DaysUserLtvUSD);
        }
        if (output.z(serialDesc, 15) || self.last7DaysPlacementFillRate != null) {
            output.i(serialDesc, 15, h0.f65177a, self.last7DaysPlacementFillRate);
        }
        if (!output.z(serialDesc, 16) && self.last30DaysPlacementFillRate == null) {
            return;
        }
        output.i(serialDesc, 16, h0.f65177a, self.last30DaysPlacementFillRate);
    }

    public final d setEarningsByPlacement(float f10) {
        if (q.isInRange$default(q.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.earningsByPlacementUSD = Float.valueOf(f10);
        }
        return this;
    }

    public final d setIsUserAPurchaser(boolean z10) {
        this.isUserAPurchaser = Boolean.valueOf(z10);
        return this;
    }

    public final d setIsUserASubscriber(boolean z10) {
        this.isUserASubscriber = Boolean.valueOf(z10);
        return this;
    }

    public final d setLast30DaysMeanSpendUsd(float f10) {
        if (q.isInRange$default(q.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last30DaysMeanSpendUSD = Float.valueOf(f10);
        }
        return this;
    }

    public final d setLast30DaysMedianSpendUsd(float f10) {
        if (q.isInRange$default(q.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last30DaysMedianSpendUSD = Float.valueOf(f10);
        }
        return this;
    }

    public final d setLast30DaysPlacementFillRate(float f10) {
        if (q.INSTANCE.isInRange(f10, 0.0f, 100.0f)) {
            this.last30DaysPlacementFillRate = Float.valueOf(f10);
        }
        return this;
    }

    public final d setLast30DaysTotalSpendUsd(float f10) {
        if (q.isInRange$default(q.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last30DaysTotalSpendUSD = Float.valueOf(f10);
        }
        return this;
    }

    public final d setLast30DaysUserLtvUsd(float f10) {
        if (q.isInRange$default(q.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last30DaysUserLtvUSD = Float.valueOf(f10);
        }
        return this;
    }

    public final d setLast30DaysUserPltvUsd(float f10) {
        if (q.isInRange$default(q.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last30DaysUserPltvUSD = Float.valueOf(f10);
        }
        return this;
    }

    public final d setLast7DaysMeanSpendUsd(float f10) {
        if (q.isInRange$default(q.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last7DaysMeanSpendUSD = Float.valueOf(f10);
        }
        return this;
    }

    public final d setLast7DaysMedianSpendUsd(float f10) {
        if (q.isInRange$default(q.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last7DaysMedianSpendUSD = Float.valueOf(f10);
        }
        return this;
    }

    public final d setLast7DaysPlacementFillRate(float f10) {
        if (q.INSTANCE.isInRange(f10, 0.0f, 100.0f)) {
            this.last7DaysPlacementFillRate = Float.valueOf(f10);
        }
        return this;
    }

    public final d setLast7DaysTotalSpendUsd(float f10) {
        if (q.isInRange$default(q.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last7DaysTotalSpendUSD = Float.valueOf(f10);
        }
        return this;
    }

    public final d setLast7DaysUserLtvUsd(float f10) {
        if (q.isInRange$default(q.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last7DaysUserLtvUSD = Float.valueOf(f10);
        }
        return this;
    }

    public final d setLast7DaysUserPltvUsd(float f10) {
        if (q.isInRange$default(q.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.last7DaysUserPltvUSD = Float.valueOf(f10);
        }
        return this;
    }

    public final d setTopNAdomain(List<String> list) {
        this.topNAdomain = list != null ? CollectionsKt.U0(list) : null;
        return this;
    }

    public final d setTotalEarningsUsd(float f10) {
        if (q.isInRange$default(q.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.totalEarningsUSD = Float.valueOf(f10);
        }
        return this;
    }

    @Deprecated
    public d(int i10, Float f10, Float f11, List list, Boolean bool, Boolean bool2, Float f12, Float f13, Float f14, Float f15, Float f16, Float f17, Float f18, Float f19, Float f20, Float f21, Float f22, Float f23, w1 w1Var) {
        if ((i10 & 1) == 0) {
            this.totalEarningsUSD = null;
        } else {
            this.totalEarningsUSD = f10;
        }
        if ((i10 & 2) == 0) {
            this.earningsByPlacementUSD = null;
        } else {
            this.earningsByPlacementUSD = f11;
        }
        if ((i10 & 4) == 0) {
            this.topNAdomain = null;
        } else {
            this.topNAdomain = list;
        }
        if ((i10 & 8) == 0) {
            this.isUserAPurchaser = null;
        } else {
            this.isUserAPurchaser = bool;
        }
        if ((i10 & 16) == 0) {
            this.isUserASubscriber = null;
        } else {
            this.isUserASubscriber = bool2;
        }
        if ((i10 & 32) == 0) {
            this.last7DaysTotalSpendUSD = null;
        } else {
            this.last7DaysTotalSpendUSD = f12;
        }
        if ((i10 & 64) == 0) {
            this.last7DaysMedianSpendUSD = null;
        } else {
            this.last7DaysMedianSpendUSD = f13;
        }
        if ((i10 & 128) == 0) {
            this.last7DaysMeanSpendUSD = null;
        } else {
            this.last7DaysMeanSpendUSD = f14;
        }
        if ((i10 & 256) == 0) {
            this.last30DaysTotalSpendUSD = null;
        } else {
            this.last30DaysTotalSpendUSD = f15;
        }
        if ((i10 & 512) == 0) {
            this.last30DaysMedianSpendUSD = null;
        } else {
            this.last30DaysMedianSpendUSD = f16;
        }
        if ((i10 & 1024) == 0) {
            this.last30DaysMeanSpendUSD = null;
        } else {
            this.last30DaysMeanSpendUSD = f17;
        }
        if ((i10 & 2048) == 0) {
            this.last7DaysUserPltvUSD = null;
        } else {
            this.last7DaysUserPltvUSD = f18;
        }
        if ((i10 & 4096) == 0) {
            this.last7DaysUserLtvUSD = null;
        } else {
            this.last7DaysUserLtvUSD = f19;
        }
        if ((i10 & 8192) == 0) {
            this.last30DaysUserPltvUSD = null;
        } else {
            this.last30DaysUserPltvUSD = f20;
        }
        if ((i10 & 16384) == 0) {
            this.last30DaysUserLtvUSD = null;
        } else {
            this.last30DaysUserLtvUSD = f21;
        }
        if ((32768 & i10) == 0) {
            this.last7DaysPlacementFillRate = null;
        } else {
            this.last7DaysPlacementFillRate = f22;
        }
        if ((i10 & 65536) == 0) {
            this.last30DaysPlacementFillRate = null;
        } else {
            this.last30DaysPlacementFillRate = f23;
        }
    }
}
