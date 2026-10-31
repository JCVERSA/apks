package com.snaptube.plugin.extension.nonlifecycle.ad;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.format.DateUtils;
import com.snaptube.ad.frequency.FrequencyControlManager;
import com.snaptube.ads.activity.SplashAdActivity;
import com.snaptube.ads.base.AdsPos;
import com.snaptube.ads.feedback.data.AdFbPostKey;
import com.snaptube.ads_log_v2.AdImpressionSceneTrack;
import com.snaptube.player_guide.IPlayerGuide;
import com.snaptube.player_guide.IPlayerGuideConfig;
import com.snaptube.player_guide.PlayerGuideAdPos;
import com.snaptube.player_guide.h;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.config.GlobalConfig;
import o.ba3;
import o.dn0;
import o.fc1;
import o.g9;
import o.gb;
import o.ic;
import o.jb;
import o.k36;
import o.lw2;
import o.or3;
import o.q23;
import o.qe6;
import o.qv4;
import o.t14;
import o.ul3;
import o.vd3;
import o.yn5;
import o.zh4;

public final class StartDownloadAdViewModel {
    public static final StartDownloadAdViewModel a;
    public static final AdsPos b;
    public static final String c;
    public static final String d;
    public static final String e;
    public static final String f;
    public static final PlayerGuideAdPos g;
    public static final t14 h;
    public static final t14 i;
    public static final t14 j;

    public static final class a implements lw2 {
        @Override
        public Bundle a(String str, Bundle bundle) {
            return lw2.a.a(this, str, bundle);
        }

        @Override
        public ic b(String str, Bundle bundle) {
            or3.f(str, AdFbPostKey.AD_POS);
            SharedPreferences genericSharedPrefs = GlobalConfig.getGenericSharedPrefs();
            StartDownloadAdViewModel startDownloadAdViewModel = StartDownloadAdViewModel.a;
            or3.c(genericSharedPrefs);
            int iB = StartDownloadAdViewModel.b(startDownloadAdViewModel, genericSharedPrefs);
            if (yn5.h(bundle) && iB >= 0 && iB < StartDownloadAdViewModel.e(startDownloadAdViewModel)) {
                StartDownloadAdViewModel.i(startDownloadAdViewModel, genericSharedPrefs, StartDownloadAdViewModel.b(startDownloadAdViewModel, genericSharedPrefs) + 1);
                return new ic.b("in install ad impression interval", "interval=" + StartDownloadAdViewModel.e(startDownloadAdViewModel) + ",afterLastGuideImpressionDownloadCount=" + iB);
            }
            int i = bundle != null ? bundle.getInt("key_interval") : 0;
            int i2 = bundle != null ? bundle.getInt("key_start_count") : 0;
            if (i < 0 || i2 <= 0) {
                return new ic.b("invalid param", "interval=" + i + ",startCount=" + i2);
            }
            int iC = StartDownloadAdViewModel.c(startDownloadAdViewModel, genericSharedPrefs);
            if (iC < i2) {
                return new ic.b("in start download limit", "startCount=" + i2 + ",todayDownloadCount=" + iC + "}");
            }
            int iA = StartDownloadAdViewModel.a(startDownloadAdViewModel, genericSharedPrefs);
            if (iA < 0 || iA >= i) {
                return ic.c.d;
            }
            StartDownloadAdViewModel.h(startDownloadAdViewModel, genericSharedPrefs, StartDownloadAdViewModel.a(startDownloadAdViewModel, genericSharedPrefs) + 1);
            return new ic.b("in download count interval", "interval=" + i + ",afterLastAdImpressionDownloadCount=" + iA);
        }

        @Override
        public ic c(String str, Bundle bundle) {
            or3.f(str, AdFbPostKey.AD_POS);
            StartDownloadAdViewModel startDownloadAdViewModel = StartDownloadAdViewModel.a;
            StartDownloadAdViewModel.g(startDownloadAdViewModel);
            return StartDownloadAdViewModel.f(startDownloadAdViewModel, bundle != null ? yn5.f(bundle) : 0.0d) ? ic.c.d : new ic.b("strategy fail", "");
        }
    }

    public static final class b implements lw2 {
        @Override
        public Bundle a(String str, Bundle bundle) {
            return lw2.a.a(this, str, bundle);
        }

        @Override
        public ic b(String str, Bundle bundle) {
            or3.f(str, AdFbPostKey.AD_POS);
            int i = bundle != null ? bundle.getInt("key_interval") : 0;
            int i2 = bundle != null ? bundle.getInt("key_start_count") : 0;
            boolean z = bundle != null ? bundle.getBoolean("key_ad_shown") : false;
            if (i < 0 || i2 <= 0) {
                return new ic.b("invalid param", "interval=" + i + ",startCount=" + i2);
            }
            SharedPreferences genericSharedPrefs = GlobalConfig.getGenericSharedPrefs();
            StartDownloadAdViewModel startDownloadAdViewModel = StartDownloadAdViewModel.a;
            or3.c(genericSharedPrefs);
            if (StartDownloadAdViewModel.c(startDownloadAdViewModel, genericSharedPrefs) < i2) {
                return new ic.b("invalid param", "interval=" + i + ",startCount=" + i2);
            }
            int iB = StartDownloadAdViewModel.b(startDownloadAdViewModel, genericSharedPrefs);
            if (iB >= 0 && iB < i) {
                StartDownloadAdViewModel.i(startDownloadAdViewModel, genericSharedPrefs, StartDownloadAdViewModel.b(startDownloadAdViewModel, genericSharedPrefs) + 1);
                return new ic.b("in download count interval", "interval=" + i + ",afterLastGuideImpressionDownloadCount=" + iB);
            }
            if (z) {
                return new ic.b("ad show", "");
            }
            StartDownloadAdViewModel.j(startDownloadAdViewModel);
            StartDownloadAdViewModel.i(startDownloadAdViewModel, genericSharedPrefs, 0);
            g9.a aVar = g9.a;
            aVar.b(System.currentTimeMillis());
            aVar.c(1);
            return ic.c.d;
        }

        @Override
        public ic c(String str, Bundle bundle) {
            or3.f(str, AdFbPostKey.AD_POS);
            return ic.c.d;
        }
    }

    static {
        StartDownloadAdViewModel startDownloadAdViewModel = new StartDownloadAdViewModel();
        a = startDownloadAdViewModel;
        AdsPos adsPos = AdsPos.START_DOWNLOAD_INTERSTITIAL;
        b = adsPos;
        c = adsPos.pos() + "_download_count";
        d = adsPos.pos() + "_last_download_count_time";
        e = adsPos.pos() + "_after_ad_impression_download_count";
        f = adsPos.pos() + "_after_guide_impression_download_count";
        g = PlayerGuideAdPos.AD_POS_START_DOWNLOAD_INTERSTITIAL;
        h = kotlin.b.b(StartDownloadAdViewModel$playerGuide$2.INSTANCE);
        i = kotlin.b.b(StartDownloadAdViewModel$installedAdImpressionInterval$2.INSTANCE);
        j = kotlin.b.b(StartDownloadAdViewModel$preloadBlockPercentage$2.INSTANCE);
        startDownloadAdViewModel.C();
    }

    public static final void A(String str) {
        or3.f(str, "scene");
        B(null, str, 1, null);
    }

    public static void B(Bundle bundle, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            bundle = null;
        }
        z(bundle, str);
    }

    public static final boolean J(Context context, Bundle bundle) {
        or3.f(context, "context");
        ProductionEnv.d("StartDownloadAdViewModel", "尝试展示下载后广告或导流");
        StartDownloadAdViewModel startDownloadAdViewModel = a;
        if (!startDownloadAdViewModel.w(bundle)) {
            ProductionEnv.d("StartDownloadAdViewModel", "下载后广告场景不符合");
            return false;
        }
        boolean zA = g9.a.a();
        if (q23.b0().b(g)) {
            return startDownloadAdViewModel.K(context, bundle, 1, startDownloadAdViewModel.q());
        }
        qv4 qv4VarP = startDownloadAdViewModel.p(zA);
        boolean zK = startDownloadAdViewModel.K(context, bundle, qv4VarP.a().b(), qv4VarP.a().a());
        return zK || startDownloadAdViewModel.L(bundle, zK, qv4VarP.b().b(), qv4VarP.b().a());
    }

    public static final int a(StartDownloadAdViewModel startDownloadAdViewModel, SharedPreferences sharedPreferences) {
        return startDownloadAdViewModel.k(sharedPreferences);
    }

    public static final int b(StartDownloadAdViewModel startDownloadAdViewModel, SharedPreferences sharedPreferences) {
        return startDownloadAdViewModel.l(sharedPreferences);
    }

    public static final int c(StartDownloadAdViewModel startDownloadAdViewModel, SharedPreferences sharedPreferences) {
        return startDownloadAdViewModel.n(sharedPreferences);
    }

    public static final PlayerGuideAdPos d() {
        return g;
    }

    public static final int e(StartDownloadAdViewModel startDownloadAdViewModel) {
        return startDownloadAdViewModel.q();
    }

    public static final boolean f(StartDownloadAdViewModel startDownloadAdViewModel, double d2) {
        return startDownloadAdViewModel.v(d2);
    }

    public static final void g(StartDownloadAdViewModel startDownloadAdViewModel) {
        startDownloadAdViewModel.D();
    }

    public static final void h(StartDownloadAdViewModel startDownloadAdViewModel, SharedPreferences sharedPreferences, int i2) {
        startDownloadAdViewModel.E(sharedPreferences, i2);
    }

    public static final void i(StartDownloadAdViewModel startDownloadAdViewModel, SharedPreferences sharedPreferences, int i2) {
        startDownloadAdViewModel.F(sharedPreferences, i2);
    }

    public static final void j(StartDownloadAdViewModel startDownloadAdViewModel) {
        startDownloadAdViewModel.I();
    }

    public static final void y(Bundle bundle) {
        StartDownloadAdViewModel startDownloadAdViewModel = a;
        SharedPreferences genericSharedPrefs = GlobalConfig.getGenericSharedPrefs();
        or3.e(genericSharedPrefs, "getGenericSharedPrefs(...)");
        int iN = startDownloadAdViewModel.n(genericSharedPrefs);
        SharedPreferences genericSharedPrefs2 = GlobalConfig.getGenericSharedPrefs();
        or3.e(genericSharedPrefs2, "getGenericSharedPrefs(...)");
        ProductionEnv.d("StartDownloadAdViewModel", "onDownload " + iN + " " + startDownloadAdViewModel.r(genericSharedPrefs2));
        startDownloadAdViewModel.D();
        SharedPreferences genericSharedPrefs3 = GlobalConfig.getGenericSharedPrefs();
        or3.c(genericSharedPrefs3);
        startDownloadAdViewModel.G(genericSharedPrefs3, startDownloadAdViewModel.n(genericSharedPrefs3) + 1);
        if (startDownloadAdViewModel.w(bundle)) {
            ProductionEnv.d("StartDownloadAdViewModel", "下载次数+1");
        }
    }

    public static final void z(Bundle bundle, String str) {
        int iK;
        or3.f(str, "scene");
        StartDownloadAdViewModel startDownloadAdViewModel = a;
        if (startDownloadAdViewModel.w(bundle)) {
            FrequencyControlManager frequencyControlManager = FrequencyControlManager.a;
            AdsPos adsPos = b;
            String strPos = adsPos.pos();
            or3.e(strPos, "pos(...)");
            if (frequencyControlManager.h(strPos, startDownloadAdViewModel.m(bundle))) {
                ProductionEnv.d("StartDownloadAdViewModel", "预加载下载后插屏广告位");
                String strPos2 = adsPos.pos();
                or3.e(strPos2, "pos(...)");
                if (frequencyControlManager.p(strPos2, startDownloadAdViewModel.m(bundle))) {
                    String strPos3 = adsPos.pos();
                    or3.e(strPos3, "pos(...)");
                    iK = qe6.c(frequencyControlManager.j(strPos3), 0);
                } else {
                    int iA = startDownloadAdViewModel.p(g9.a.a()).a().a();
                    SharedPreferences genericSharedPrefs = GlobalConfig.getGenericSharedPrefs();
                    or3.e(genericSharedPrefs, "getGenericSharedPrefs(...)");
                    iK = iA - startDownloadAdViewModel.k(genericSharedPrefs);
                }
                gb gbVarH0 = ((com.snaptube.premium.app.a) fc1.a(PhoenixApplication.z())).H0();
                jb.a aVar = jb.e;
                String strPos4 = adsPos.pos();
                or3.e(strPos4, "pos(...)");
                gbVarH0.c(aVar.a(strPos4).f("ad_request_scene", str).f("available_download_count", Integer.valueOf(iK)));
            }
        }
    }

    public final void C() {
        FrequencyControlManager frequencyControlManager = FrequencyControlManager.a;
        AdsPos adsPos = b;
        String strPos = adsPos.pos();
        or3.e(strPos, "pos(...)");
        frequencyControlManager.n(strPos, new a());
        String strPos2 = adsPos.pos();
        or3.e(strPos2, "pos(...)");
        frequencyControlManager.o(strPos2, new b());
    }

    public final void D() {
        SharedPreferences genericSharedPrefs = GlobalConfig.getGenericSharedPrefs();
        or3.e(genericSharedPrefs, "getGenericSharedPrefs(...)");
        if (DateUtils.isToday(r(genericSharedPrefs))) {
            return;
        }
        ProductionEnv.d("StartDownloadAdViewModel", "上次执行不是今日，清空缓存信息");
        SharedPreferences genericSharedPrefs2 = GlobalConfig.getGenericSharedPrefs();
        StartDownloadAdViewModel startDownloadAdViewModel = a;
        or3.c(genericSharedPrefs2);
        startDownloadAdViewModel.H(genericSharedPrefs2, System.currentTimeMillis());
        g9.a aVar = g9.a;
        aVar.b(0L);
        aVar.c(0);
        startDownloadAdViewModel.G(genericSharedPrefs2, 0);
        startDownloadAdViewModel.E(genericSharedPrefs2, -1);
        startDownloadAdViewModel.F(genericSharedPrefs2, -1);
    }

    public final void E(SharedPreferences sharedPreferences, int i2) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        or3.c(editorEdit);
        editorEdit.putInt(e, i2);
        editorEdit.apply();
    }

    public final void F(SharedPreferences sharedPreferences, int i2) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        or3.c(editorEdit);
        editorEdit.putInt(f, i2);
        editorEdit.apply();
    }

    public final void G(SharedPreferences sharedPreferences, int i2) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        or3.c(editorEdit);
        editorEdit.putInt(c, i2);
        editorEdit.apply();
    }

    public final void H(SharedPreferences sharedPreferences, long j2) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        or3.c(editorEdit);
        editorEdit.putLong(d, j2);
        editorEdit.apply();
    }

    public final void I() {
        ProductionEnv.d("StartDownloadAdViewModel", "跳转 gp");
        s().h(g, null, null);
    }

    public final boolean K(Context context, Bundle bundle, int i2, int i3) {
        Bundle bundleU = u(i2, i3, bundle);
        FrequencyControlManager frequencyControlManager = FrequencyControlManager.a;
        AdsPos adsPos = b;
        String strPos = adsPos.pos();
        or3.e(strPos, "pos(...)");
        frequencyControlManager.k(strPos, bundleU);
        String strPos2 = adsPos.pos();
        or3.e(strPos2, "pos(...)");
        ic icVarB = frequencyControlManager.b(strPos2, bundleU);
        if (!ic.c.a(icVarB)) {
            AdImpressionSceneTrack adImpressionSceneTrack = AdImpressionSceneTrack.a;
            String strPos3 = adsPos.pos();
            or3.e(strPos3, "pos(...)");
            adImpressionSceneTrack.a(strPos3, icVarB);
            return false;
        }
        if (!x()) {
            AdImpressionSceneTrack adImpressionSceneTrack2 = AdImpressionSceneTrack.a;
            String strPos4 = adsPos.pos();
            or3.e(strPos4, "pos(...)");
            adImpressionSceneTrack2.a(strPos4, new ic.b("no cache", ""));
            ProductionEnv.d("StartDownloadAdViewModel", "下载后广告场景无加载广告，调用预加载");
            B(null, "no_cache", 1, null);
            return false;
        }
        ProductionEnv.d("StartDownloadAdViewModel", "下载后广告场景有已加载广告，展示广告");
        SplashAdActivity.i1(context, true, "hot_launch", adsPos.pos(), false, null);
        SharedPreferences genericSharedPrefs = GlobalConfig.getGenericSharedPrefs();
        or3.e(genericSharedPrefs, "getGenericSharedPrefs(...)");
        E(genericSharedPrefs, 0);
        g9.a aVar = g9.a;
        aVar.b(System.currentTimeMillis());
        aVar.c(2);
        return true;
    }

    public final boolean L(Bundle bundle, boolean z, int i2, int i3) {
        ic.a aVar = ic.c;
        FrequencyControlManager frequencyControlManager = FrequencyControlManager.a;
        String strPos = b.pos();
        or3.e(strPos, "pos(...)");
        return aVar.a(frequencyControlManager.g(strPos, o(z, i2, i3, bundle)));
    }

    public final int k(SharedPreferences sharedPreferences) {
        return sharedPreferences.getInt(e, -1);
    }

    public final int l(SharedPreferences sharedPreferences) {
        return sharedPreferences.getInt(f, -1);
    }

    public final Bundle m(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        yn5.a(bundle2, g9.a.a(), q23.b0().b(g));
        bundle2.putDouble("key_preload_block_percentage", a.t());
        bundle2.putString("frequency_host", dn0.h(bundle));
        return bundle2;
    }

    public final int n(SharedPreferences sharedPreferences) {
        return sharedPreferences.getInt(c, 0);
    }

    public final Bundle o(boolean z, int i2, int i3, Bundle bundle) {
        Bundle bundleU = u(i2, i3, bundle);
        bundleU.putBoolean("key_ad_shown", z);
        return bundleU;
    }

    public final qv4 p(boolean z) {
        return h.i(q23.p(g), (z ? IPlayerGuideConfig.Key.UNINSTALLED_NEW_USER_IMPRESSION_STRATEGY : IPlayerGuideConfig.Key.UNINSTALLED_OLD_USER_IMPRESSION_STRATEGY).getName(), new qv4(new ul3(1, z ? -1 : 4), new ul3(z ? 1 : 4, 4)));
    }

    public final int q() {
        return ((Number) i.getValue()).intValue();
    }

    public final long r(SharedPreferences sharedPreferences) {
        return sharedPreferences.getLong(d, 0L);
    }

    public final IPlayerGuide s() {
        Object value = h.getValue();
        or3.e(value, "getValue(...)");
        return (IPlayerGuide) value;
    }

    public final double t() {
        return ((Number) j.getValue()).doubleValue();
    }

    public final Bundle u(int i2, int i3, Bundle bundle) {
        Bundle bundleM = m(bundle);
        bundleM.putInt("key_start_count", i2);
        bundleM.putInt("key_interval", i3);
        return bundleM;
    }

    public final boolean v(double d2) {
        SharedPreferences genericSharedPrefs = GlobalConfig.getGenericSharedPrefs();
        boolean zA = g9.a.a();
        boolean zB = q23.b0().b(g);
        if (zB && zA) {
            int iFloor = (int) Math.floor(((double) q()) * d2);
            or3.c(genericSharedPrefs);
            int iL = l(genericSharedPrefs);
            if (iL >= 0 && iL < iFloor) {
                return false;
            }
        }
        qv4 qv4VarP = p(zA);
        int iQ = zB ? q() : qv4VarP.a().a();
        int iB = zB ? 1 : qv4VarP.a().b();
        if (iQ < 0 || iB <= 0) {
            return false;
        }
        or3.c(genericSharedPrefs);
        if (n(genericSharedPrefs) < Math.floor(((double) iB) * d2)) {
            return false;
        }
        int iFloor2 = (int) Math.floor(((double) iQ) * d2);
        int iK = k(genericSharedPrefs);
        return iK < 0 || iK >= iFloor2;
    }

    public final boolean w(Bundle bundle) {
        if (k36.a(bundle != null ? dn0.k(bundle) : null)) {
            return false;
        }
        return !(bundle != null ? or3.a(dn0.q(bundle), Boolean.TRUE) : false);
    }

    public final boolean x() {
        vd3 vd3VarB = zh4.b("IAdsManager");
        or3.d(vd3VarB, "null cannot be cast to non-null type com.snaptube.ads.manager.IAdsManager");
        return ((ba3) vd3VarB).b().a(b.pos());
    }
}
