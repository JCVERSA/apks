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
import kotlinx.serialization.internal.i0;
import kotlinx.serialization.internal.r0;
import kotlinx.serialization.internal.w1;

public final class e {
    public static final b Companion = new b(null);
    private List<String> friends;
    private Float healthPercentile;
    private Float inGamePurchasesUSD;
    private Float levelPercentile;
    private String page;
    private Integer sessionDuration;
    private Integer sessionStartTime;
    private Integer signupDate;
    private Integer timeSpent;
    private String userID;
    private Float userLevelPercentile;
    private Float userScorePercentile;

    public static final class a implements i0 {
        public static final a INSTANCE;
        public static final f descriptor;

        static {
            a aVar = new a();
            INSTANCE = aVar;
            PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vungle.ads.fpd.SessionContext", aVar, 12);
            pluginGeneratedSerialDescriptor.l("level_percentile", true);
            pluginGeneratedSerialDescriptor.l("page", true);
            pluginGeneratedSerialDescriptor.l("time_spent", true);
            pluginGeneratedSerialDescriptor.l("signup_date", true);
            pluginGeneratedSerialDescriptor.l("user_score_percentile", true);
            pluginGeneratedSerialDescriptor.l("user_id", true);
            pluginGeneratedSerialDescriptor.l("friends", true);
            pluginGeneratedSerialDescriptor.l("user_level_percentile", true);
            pluginGeneratedSerialDescriptor.l("health_percentile", true);
            pluginGeneratedSerialDescriptor.l("session_start_time", true);
            pluginGeneratedSerialDescriptor.l("session_duration", true);
            pluginGeneratedSerialDescriptor.l("in_game_purchases_usd", true);
            descriptor = pluginGeneratedSerialDescriptor;
        }

        private a() {
        }

        @Override
        public kotlinx.serialization.b[] childSerializers() {
            h0 h0Var = h0.f65177a;
            kotlinx.serialization.b bVarS = ry.a.s(h0Var);
            b2 b2Var = b2.f65143a;
            kotlinx.serialization.b bVarS2 = ry.a.s(b2Var);
            r0 r0Var = r0.f65223a;
            return new kotlinx.serialization.b[]{bVarS, bVarS2, ry.a.s(r0Var), ry.a.s(r0Var), ry.a.s(h0Var), ry.a.s(b2Var), ry.a.s(new kotlinx.serialization.internal.f(b2Var)), ry.a.s(h0Var), ry.a.s(h0Var), ry.a.s(r0Var), ry.a.s(r0Var), ry.a.s(h0Var)};
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
        public e deserialize(sy.e decoder) {
            Object objN;
            Object objN2;
            Object obj;
            Object objN3;
            int i10;
            Object objN4;
            Object objN5;
            Object objN6;
            Object objN7;
            Object objN8;
            Object objN9;
            Object objN10;
            Object objN11;
            Intrinsics.h(decoder, "decoder");
            f descriptor2 = getDescriptor();
            sy.c cVarB = decoder.b(descriptor2);
            Object objN12 = null;
            if (cVarB.p()) {
                h0 h0Var = h0.f65177a;
                objN6 = cVarB.n(descriptor2, 0, h0Var, null);
                b2 b2Var = b2.f65143a;
                Object objN13 = cVarB.n(descriptor2, 1, b2Var, null);
                r0 r0Var = r0.f65223a;
                objN10 = cVarB.n(descriptor2, 2, r0Var, null);
                objN5 = cVarB.n(descriptor2, 3, r0Var, null);
                Object objN14 = cVarB.n(descriptor2, 4, h0Var, null);
                objN9 = cVarB.n(descriptor2, 5, b2Var, null);
                objN4 = cVarB.n(descriptor2, 6, new kotlinx.serialization.internal.f(b2Var), null);
                objN11 = cVarB.n(descriptor2, 7, h0Var, null);
                objN8 = cVarB.n(descriptor2, 8, h0Var, null);
                objN = cVarB.n(descriptor2, 9, r0Var, null);
                objN7 = cVarB.n(descriptor2, 10, r0Var, null);
                objN3 = cVarB.n(descriptor2, 11, h0Var, null);
                obj = objN13;
                objN2 = objN14;
                i10 = 4095;
            } else {
                boolean z10 = true;
                int i11 = 0;
                Object objN15 = null;
                Object objN16 = null;
                Object objN17 = null;
                objN = null;
                Object objN18 = null;
                Object objN19 = null;
                Object objN20 = null;
                Object objN21 = null;
                Object objN22 = null;
                objN2 = null;
                Object objN23 = null;
                while (z10) {
                    int iO = cVarB.o(descriptor2);
                    switch (iO) {
                        case -1:
                            z10 = false;
                            objN12 = objN12;
                            objN15 = objN15;
                            break;
                        case 0:
                            i11 |= 1;
                            objN12 = cVarB.n(descriptor2, 0, h0.f65177a, objN12);
                            objN15 = objN15;
                            break;
                        case 1:
                            objN15 = cVarB.n(descriptor2, 1, b2.f65143a, objN15);
                            i11 |= 2;
                            objN12 = objN12;
                            break;
                        case 2:
                            objN16 = cVarB.n(descriptor2, 2, r0.f65223a, objN16);
                            i11 |= 4;
                            objN12 = objN12;
                            break;
                        case 3:
                            objN23 = cVarB.n(descriptor2, 3, r0.f65223a, objN23);
                            i11 |= 8;
                            objN12 = objN12;
                            break;
                        case 4:
                            objN2 = cVarB.n(descriptor2, 4, h0.f65177a, objN2);
                            i11 |= 16;
                            objN12 = objN12;
                            break;
                        case 5:
                            objN22 = cVarB.n(descriptor2, 5, b2.f65143a, objN22);
                            i11 |= 32;
                            objN12 = objN12;
                            break;
                        case 6:
                            objN19 = cVarB.n(descriptor2, 6, new kotlinx.serialization.internal.f(b2.f65143a), objN19);
                            i11 |= 64;
                            objN12 = objN12;
                            break;
                        case 7:
                            objN21 = cVarB.n(descriptor2, 7, h0.f65177a, objN21);
                            i11 |= 128;
                            objN12 = objN12;
                            break;
                        case 8:
                            objN18 = cVarB.n(descriptor2, 8, h0.f65177a, objN18);
                            i11 |= 256;
                            objN12 = objN12;
                            break;
                        case 9:
                            objN = cVarB.n(descriptor2, 9, r0.f65223a, objN);
                            i11 |= 512;
                            objN12 = objN12;
                            break;
                        case 10:
                            objN17 = cVarB.n(descriptor2, 10, r0.f65223a, objN17);
                            i11 |= 1024;
                            objN12 = objN12;
                            break;
                        case 11:
                            objN20 = cVarB.n(descriptor2, 11, h0.f65177a, objN20);
                            i11 |= 2048;
                            objN12 = objN12;
                            break;
                        default:
                            throw new UnknownFieldException(iO);
                    }
                }
                obj = objN15;
                objN3 = objN20;
                Object obj2 = objN21;
                i10 = i11;
                objN4 = objN19;
                objN5 = objN23;
                objN6 = objN12;
                objN7 = objN17;
                objN8 = objN18;
                objN9 = objN22;
                objN10 = objN16;
                objN11 = obj2;
            }
            cVarB.c(descriptor2);
            return new e(i10, (Float) objN6, (String) obj, (Integer) objN10, (Integer) objN5, (Float) objN2, (String) objN9, (List) objN4, (Float) objN11, (Float) objN8, (Integer) objN, (Integer) objN7, (Float) objN3, null);
        }

        @Override
        public void serialize(sy.f encoder, e value) {
            Intrinsics.h(encoder, "encoder");
            Intrinsics.h(value, "value");
            f descriptor2 = getDescriptor();
            sy.d dVarB = encoder.b(descriptor2);
            e.write$Self(value, dVarB, descriptor2);
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

    public e() {
    }

    private static void getFriends$annotations() {
    }

    private static void getHealthPercentile$annotations() {
    }

    private static void getInGamePurchasesUSD$annotations() {
    }

    private static void getLevelPercentile$annotations() {
    }

    private static void getPage$annotations() {
    }

    private static void getSessionDuration$annotations() {
    }

    private static void getSessionStartTime$annotations() {
    }

    private static void getSignupDate$annotations() {
    }

    private static void getTimeSpent$annotations() {
    }

    private static void getUserID$annotations() {
    }

    private static void getUserLevelPercentile$annotations() {
    }

    private static void getUserScorePercentile$annotations() {
    }

    @JvmStatic
    public static final void write$Self(e self, sy.d output, f serialDesc) {
        Intrinsics.h(self, "self");
        Intrinsics.h(output, "output");
        Intrinsics.h(serialDesc, "serialDesc");
        if (output.z(serialDesc, 0) || self.levelPercentile != null) {
            output.i(serialDesc, 0, h0.f65177a, self.levelPercentile);
        }
        if (output.z(serialDesc, 1) || self.page != null) {
            output.i(serialDesc, 1, b2.f65143a, self.page);
        }
        if (output.z(serialDesc, 2) || self.timeSpent != null) {
            output.i(serialDesc, 2, r0.f65223a, self.timeSpent);
        }
        if (output.z(serialDesc, 3) || self.signupDate != null) {
            output.i(serialDesc, 3, r0.f65223a, self.signupDate);
        }
        if (output.z(serialDesc, 4) || self.userScorePercentile != null) {
            output.i(serialDesc, 4, h0.f65177a, self.userScorePercentile);
        }
        if (output.z(serialDesc, 5) || self.userID != null) {
            output.i(serialDesc, 5, b2.f65143a, self.userID);
        }
        if (output.z(serialDesc, 6) || self.friends != null) {
            output.i(serialDesc, 6, new kotlinx.serialization.internal.f(b2.f65143a), self.friends);
        }
        if (output.z(serialDesc, 7) || self.userLevelPercentile != null) {
            output.i(serialDesc, 7, h0.f65177a, self.userLevelPercentile);
        }
        if (output.z(serialDesc, 8) || self.healthPercentile != null) {
            output.i(serialDesc, 8, h0.f65177a, self.healthPercentile);
        }
        if (output.z(serialDesc, 9) || self.sessionStartTime != null) {
            output.i(serialDesc, 9, r0.f65223a, self.sessionStartTime);
        }
        if (output.z(serialDesc, 10) || self.sessionDuration != null) {
            output.i(serialDesc, 10, r0.f65223a, self.sessionDuration);
        }
        if (!output.z(serialDesc, 11) && self.inGamePurchasesUSD == null) {
            return;
        }
        output.i(serialDesc, 11, h0.f65177a, self.inGamePurchasesUSD);
    }

    public final e setFriends(List<String> list) {
        this.friends = list != null ? CollectionsKt.U0(list) : null;
        return this;
    }

    public final e setHealthPercentile(float f10) {
        if (q.INSTANCE.isInRange(f10, 0.0f, 100.0f)) {
            this.healthPercentile = Float.valueOf(f10);
        }
        return this;
    }

    public final e setInGamePurchasesUSD(float f10) {
        if (q.isInRange$default(q.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.inGamePurchasesUSD = Float.valueOf(f10);
        }
        return this;
    }

    public final e setLevelPercentile(float f10) {
        if (q.INSTANCE.isInRange(f10, 0.0f, 100.0f)) {
            this.levelPercentile = Float.valueOf(f10);
        }
        return this;
    }

    public final e setPage(String page) {
        Intrinsics.h(page, "page");
        this.page = page;
        return this;
    }

    public final e setSessionDuration(int i10) {
        this.sessionDuration = Integer.valueOf(i10);
        return this;
    }

    public final e setSessionStartTime(int i10) {
        this.sessionStartTime = Integer.valueOf(i10);
        return this;
    }

    public final e setSignupDate(int i10) {
        this.signupDate = Integer.valueOf(i10);
        return this;
    }

    public final e setTimeSpent(int i10) {
        this.timeSpent = Integer.valueOf(i10);
        return this;
    }

    public final e setUserID(String userID) {
        Intrinsics.h(userID, "userID");
        this.userID = userID;
        return this;
    }

    public final e setUserLevelPercentile(float f10) {
        if (q.INSTANCE.isInRange(f10, 0.0f, 100.0f)) {
            this.userLevelPercentile = Float.valueOf(f10);
        }
        return this;
    }

    public final e setUserScorePercentile(float f10) {
        if (q.INSTANCE.isInRange(f10, 0.0f, 100.0f)) {
            this.userScorePercentile = Float.valueOf(f10);
        }
        return this;
    }

    @Deprecated
    public e(int i10, Float f10, String str, Integer num, Integer num2, Float f11, String str2, List list, Float f12, Float f13, Integer num3, Integer num4, Float f14, w1 w1Var) {
        if ((i10 & 1) == 0) {
            this.levelPercentile = null;
        } else {
            this.levelPercentile = f10;
        }
        if ((i10 & 2) == 0) {
            this.page = null;
        } else {
            this.page = str;
        }
        if ((i10 & 4) == 0) {
            this.timeSpent = null;
        } else {
            this.timeSpent = num;
        }
        if ((i10 & 8) == 0) {
            this.signupDate = null;
        } else {
            this.signupDate = num2;
        }
        if ((i10 & 16) == 0) {
            this.userScorePercentile = null;
        } else {
            this.userScorePercentile = f11;
        }
        if ((i10 & 32) == 0) {
            this.userID = null;
        } else {
            this.userID = str2;
        }
        if ((i10 & 64) == 0) {
            this.friends = null;
        } else {
            this.friends = list;
        }
        if ((i10 & 128) == 0) {
            this.userLevelPercentile = null;
        } else {
            this.userLevelPercentile = f12;
        }
        if ((i10 & 256) == 0) {
            this.healthPercentile = null;
        } else {
            this.healthPercentile = f13;
        }
        if ((i10 & 512) == 0) {
            this.sessionStartTime = null;
        } else {
            this.sessionStartTime = num3;
        }
        if ((i10 & 1024) == 0) {
            this.sessionDuration = null;
        } else {
            this.sessionDuration = num4;
        }
        if ((i10 & 2048) == 0) {
            this.inGamePurchasesUSD = null;
        } else {
            this.inGamePurchasesUSD = f14;
        }
    }
}
