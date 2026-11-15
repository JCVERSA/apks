package com.transsion.ad;

import androidx.compose.foundation.e;
import com.transsion.ad.strategy.AppManager;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;

public final class MBAd {

    public static final MBAd f40749a = new MBAd();

    private static a f40750b;

    public static final class a {

        private final String f40751a;

        private final boolean f40752b;

        private final boolean f40753c;

        private final AppManager.AppEnum f40754d;

        private final String f40755e;

        private final String f40756f;

        private final boolean f40757g;

        private final rh.a f40758h;

        private final boolean f40759i;

        private final boolean f40760j;

        private final boolean f40761k;

        public a(String hisavanaAppId, boolean z10, boolean z11, AppManager.AppEnum appEnum, String hotSceneId, String adConfigUrl, boolean z12, rh.a aVar, boolean z13, boolean z14, boolean z15) {
            Intrinsics.h(hisavanaAppId, "hisavanaAppId");
            Intrinsics.h(appEnum, "appEnum");
            Intrinsics.h(hotSceneId, "hotSceneId");
            Intrinsics.h(adConfigUrl, "adConfigUrl");
            this.f40751a = hisavanaAppId;
            this.f40752b = z10;
            this.f40753c = z11;
            this.f40754d = appEnum;
            this.f40755e = hotSceneId;
            this.f40756f = adConfigUrl;
            this.f40757g = z12;
            this.f40758h = aVar;
            this.f40759i = z13;
            this.f40760j = z14;
            this.f40761k = z15;
        }

        public final String a() {
            return this.f40756f;
        }

        public final boolean b() {
            return this.f40752b;
        }

        public final AppManager.AppEnum c() {
            return this.f40754d;
        }

        public final rh.a d() {
            return this.f40758h;
        }

        public final String e() {
            return this.f40751a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f40751a, aVar.f40751a) && this.f40752b == aVar.f40752b && this.f40753c == aVar.f40753c && this.f40754d == aVar.f40754d && Intrinsics.c(this.f40755e, aVar.f40755e) && Intrinsics.c(this.f40756f, aVar.f40756f) && this.f40757g == aVar.f40757g && Intrinsics.c(this.f40758h, aVar.f40758h) && this.f40759i == aVar.f40759i && this.f40760j == aVar.f40760j && this.f40761k == aVar.f40761k;
        }

        public final String f() {
            return this.f40755e;
        }

        public final boolean g() {
            return this.f40757g;
        }

        public final boolean h() {
            return this.f40759i;
        }

        public int hashCode() {
            int iHashCode = ((((((((((((this.f40751a.hashCode() * 31) + e.a(this.f40752b)) * 31) + e.a(this.f40753c)) * 31) + this.f40754d.hashCode()) * 31) + this.f40755e.hashCode()) * 31) + this.f40756f.hashCode()) * 31) + e.a(this.f40757g)) * 31;
            rh.a aVar = this.f40758h;
            return ((((((iHashCode + (aVar == null ? 0 : aVar.hashCode())) * 31) + e.a(this.f40759i)) * 31) + e.a(this.f40760j)) * 31) + e.a(this.f40761k);
        }

        public final boolean i() {
            return this.f40761k;
        }

        public final boolean j() {
            return this.f40760j;
        }

        public final boolean k() {
            return this.f40753c;
        }

        public final String l() {
            return StringsKt.n("\n                AdInitParams {\n                    hisavanaAppId = " + this.f40751a + "\n                    adTestDevice = " + this.f40752b + "\n                    isDebug = " + this.f40753c + "\n                    appEnum = " + this.f40754d.getValue() + "\n                    hotSceneId = " + this.f40755e + "\n                    adConfigUrl = " + this.f40756f + "\n                    mediaDisposeAppForeground = " + this.f40757g + "\n                    businessBridge = " + this.f40758h + "\n                    mediaDisposeH5Url = " + this.f40759i + "\n                    skipHiSdkInitDelay = " + this.f40760j + "\n                    openPsActivateAd = " + this.f40761k + "\n                }\n            ");
        }

        public String toString() {
            return "AdInitParams(hisavanaAppId=" + this.f40751a + ", adTestDevice=" + this.f40752b + ", isDebug=" + this.f40753c + ", appEnum=" + this.f40754d + ", hotSceneId=" + this.f40755e + ", adConfigUrl=" + this.f40756f + ", mediaDisposeAppForeground=" + this.f40757g + ", businessBridge=" + this.f40758h + ", mediaDisposeH5Url=" + this.f40759i + ", skipHiSdkInitDelay=" + this.f40760j + ", openPsActivateAd=" + this.f40761k + ")";
        }
    }

    public static final class b {

        private boolean f40763b;

        private boolean f40764c;

        private boolean f40768g;

        private rh.a f40769h;

        private boolean f40770i;

        private boolean f40771j;

        private boolean f40772k;

        private String f40762a = "";

        private AppManager.AppEnum f40765d = AppManager.AppEnum.APP_MOVIE_BOX;

        private String f40766e = "";

        private String f40767f = "";

        public final a a() {
            if (this.f40762a.length() == 0) {
                throw new IllegalArgumentException("HiSavana App ID must not be empty");
            }
            if (this.f40767f.length() != 0) {
                return new a(this.f40762a, this.f40763b, this.f40764c, this.f40765d, this.f40766e, this.f40767f, this.f40768g, this.f40769h, this.f40770i, this.f40771j, this.f40772k);
            }
            throw new IllegalArgumentException("AdConfigUrl must not be empty");
        }

        public final b b(String adConfigUrl) {
            Intrinsics.h(adConfigUrl, "adConfigUrl");
            this.f40767f = adConfigUrl;
            return this;
        }

        public final b c(boolean z10) {
            this.f40763b = z10;
            return this;
        }

        public final b d(AppManager.AppEnum appEnum) {
            Intrinsics.h(appEnum, "appEnum");
            this.f40765d = appEnum;
            return this;
        }

        public final b e(rh.a aVar) {
            this.f40769h = aVar;
            return this;
        }

        public final b f(String hisavanaAppId) {
            Intrinsics.h(hisavanaAppId, "hisavanaAppId");
            this.f40762a = hisavanaAppId;
            return this;
        }

        public final b g(String hotSceneId) {
            Intrinsics.h(hotSceneId, "hotSceneId");
            this.f40766e = hotSceneId;
            return this;
        }

        public final b h(boolean z10) {
            this.f40764c = z10;
            return this;
        }

        public final b i(boolean z10) {
            this.f40768g = z10;
            return this;
        }

        public final b j(boolean z10) {
            this.f40770i = z10;
            return this;
        }

        public final b k(boolean z10) {
            this.f40772k = z10;
            return this;
        }

        public final b l(boolean z10) {
            this.f40771j = z10;
            return this;
        }
    }

    private MBAd() {
    }

    public final String c() {
        String simpleName = MBAd.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final a b() {
        return f40750b;
    }

    public final Object d(a aVar, Continuation continuation) {
        if (f40750b == null) {
            f40750b = aVar;
            Object objG = i.g(y0.b(), new MBAd$initAd$2(aVar, null), continuation);
            return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
        }
        xh.a.c(xh.a.f75336a, c() + " --> initAd() --> 广告SDK，已经初始化", 6, false, 4, null);
        return Unit.f64096a;
    }

    public final Object e(String str, Continuation continuation) {
        Object objG = i.g(y0.b(), new MBAd$initNonAd$2(str, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
    }
}
