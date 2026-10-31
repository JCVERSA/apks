package com.snaptube.premium.activity;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.view.Lifecycle;
import androidx.view.n;
import com.dayuwuxian.clean.ui.base.CleanBaseActivity;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultRenderersFactory;
import com.phoenix.slog.SnapTubeLoggerManager;
import com.snaptube.ads.base.AdsPos;
import com.snaptube.extractor.pluginlib.common.AvailabilityChecker;
import com.snaptube.media.MediaFileScanner;
import com.snaptube.mixed_list.data.youtube.YouTubeSettingCache;
import com.snaptube.permission.PermissionHelper;
import com.snaptube.player_guide.IPlayerGuide;
import com.snaptube.player_guide.PlayerGuideAdPos;
import com.snaptube.plugin.extension.nonlifecycle.ad.StartDownloadAdViewModel;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.R;
import com.snaptube.premium.activate.ActivateAppManager;
import com.snaptube.premium.activate.ActivatePos;
import com.snaptube.premium.ads.SplashAdManager;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.clean.CleanForegroundWatcher;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.deeplink.FirebaseDynamicLinkChecker;
import com.snaptube.premium.dialog.UpgradeDialog;
import com.snaptube.premium.dialog.coordinator.IPopElement;
import com.snaptube.premium.dialog.coordinator.PopCoordinator;
import com.snaptube.premium.dialog.coordinator.element.CopyLinkPopElement;
import com.snaptube.premium.dialog.coordinator.element.UpgradePopElement;
import com.snaptube.premium.fragment.HomePageFragment;
import com.snaptube.premium.fragment.TabHostFragment;
import com.snaptube.premium.fragment.discoveryyoutube.BottomTabConfig;
import com.snaptube.premium.log.AppStartRecorder;
import com.snaptube.premium.log.LaunchLogger;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.premium.lyric.LyricManager;
import com.snaptube.premium.notification.NotificationToolBarHelper;
import com.snaptube.premium.search.SearchConst$SearchType;
import com.snaptube.premium.selfupgrade.CheckSelfUpgradeManager;
import com.snaptube.premium.settings.ContentLocationFragment;
import com.snaptube.premium.user.viewmodel.YtbUserAccountViewModel;
import com.snaptube.premium.views.viewanimator.DestinationType;
import com.snaptube.taskManager.provider.TaskInfoDBUtils;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.config.GlobalConfig;
import com.wandoujia.base.utils.CipherUtil;
import com.wandoujia.base.utils.RxBus;
import com.wandoujia.base.utils.ThreadPool;
import com.wandoujia.em.common.protomodel.Card;
import dagger.Lazy;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import o.a58;
import o.a70;
import o.af1;
import o.az7;
import o.b6;
import o.b88;
import o.bh5;
import o.bq0;
import o.br2;
import o.bt0;
import o.cy;
import o.d76;
import o.ej3;
import o.en4;
import o.f20;
import o.fc1;
import o.g86;
import o.gb;
import o.gl7;
import o.hb3;
import o.hh3;
import o.hn7;
import o.ie3;
import o.if9;
import o.jb;
import o.je3;
import o.k3;
import o.ke3;
import o.l3;
import o.l82;
import o.la2;
import o.lg2;
import o.lm3;
import o.ma2;
import o.na2;
import o.oa2;
import o.od;
import o.or4;
import o.pa2;
import o.pq5;
import o.q23;
import o.q65;
import o.qa2;
import o.qc0;
import o.ra2;
import o.ry6;
import o.sa2;
import o.sq5;
import o.ta2;
import o.ti3;
import o.u;
import o.u04;
import o.ua;
import o.ua2;
import o.uf1;
import o.uh;
import o.va2;
import o.vs1;
import o.vu;
import o.wa2;
import o.wu7;
import o.x52;
import o.xa2;
import o.xa3;
import o.y2;
import o.ya2;
import o.yh4;
import o.z88;
import o.zb3;

public class ExploreActivity extends NoSwipeBackBaseActivity implements je3, xa3, com.snaptube.premium.dialog.coordinator.a.b, zb3, ie3, hb3, br2, f20, qc0.b {
    public static final String F = "ExploreActivity";
    public static boolean G;
    public ya2 A;
    public YtbUserAccountViewModel B;
    public Pair E;
    public wu7 e;
    public or4 h;
    public Toolbar i;

    @Inject
    Lazy<gb> k;

    @Inject
    Lazy<ti3> l;

    @Inject
    ke3 m;

    @Inject
    hh3 n;

    @Inject
    Lazy<ej3> f404o;
    public int p;
    public wu7 r;
    public wu7 u;
    public bt0 v;
    public boolean w;
    public boolean x;
    public wu7 y;
    public boolean f = true;
    public lm3 g = new cy(F, 60);
    public View j = null;
    public final x52 q = new x52(this);
    public final Handler s = new Handler();
    public boolean t = false;
    public boolean z = false;
    public Handler C = new k(this, Looper.myLooper(), null);
    public SharedPreferences.OnSharedPreferenceChangeListener D = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            LyricManager.S();
        }
    }

    public class b implements SharedPreferences.OnSharedPreferenceChangeListener {
        public b() {
        }

        @Override
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            if (TextUtils.equals(GlobalConfig.KEY_SHOULD_SHOW_NEW_CONTENT_GUIDE, str)) {
                PopCoordinator.i0(ExploreActivity.this).onEvent("EVENT_RECEIVE_CONTENT_GUIDE_CONFIG");
            }
        }
    }

    public class c implements l3 {
        public c() {
        }

        public void a(RxBus.d dVar) {
            ExploreActivity.this.Z1();
        }

        @Override
        public void call(Object obj) {
            a((RxBus.d) obj);
        }
    }

    public class d implements l3 {
        public d() {
        }

        public void a(Boolean bool) {
            if (!bool.booleanValue()) {
                CipherUtil.a(PhoenixApplication.z());
            }
            ExploreActivity.this.finish();
        }

        @Override
        public void call(Object obj) {
            a((Boolean) obj);
        }
    }

    public class e implements k3 {
        public e() {
        }

        @Override
        public void call() {
        }
    }

    public class f implements k3 {
        public f() {
        }

        @Override
        public void call() {
            String countryCode = YouTubeSettingCache.getCountryCode();
            if (!TextUtils.isEmpty(countryCode)) {
                ContentLocationFragment.f3(countryCode);
            }
            AvailabilityChecker.with(PhoenixApplication.z()).forceCheck();
            ExploreActivity.V0(ExploreActivity.this, 1000L);
        }
    }

    public class g implements l3 {
        public g() {
        }

        public void a(Throwable th) {
            ExploreActivity.V0(ExploreActivity.this, 1000L);
        }

        @Override
        public void call(Object obj) {
            a((Throwable) obj);
        }
    }

    public class h implements l3 {
        public h() {
        }

        public void a(RxBus.d dVar) {
            NotificationToolBarHelper.a.c0(ExploreActivity.this.getApplicationContext(), false);
        }

        @Override
        public void call(Object obj) {
            a((RxBus.d) obj);
        }
    }

    public class i implements l3 {
        public i() {
        }

        public void a(Throwable th) {
            ProductionEnv.logException(ExploreActivity.Z0(), th);
        }

        @Override
        public void call(Object obj) {
            a((Throwable) obj);
        }
    }

    public interface j {
        void y(ExploreActivity exploreActivity);
    }

    public static class k extends q65 {
        public k(ExploreActivity exploreActivity, Looper looper) {
            super(exploreActivity, looper);
        }

        public k(ExploreActivity exploreActivity, Looper looper, xa2 xa2Var) {
            this(exploreActivity, looper);
        }

        @Override
        public void a(Object obj, Message message) {
            b((ExploreActivity) obj, message);
        }

        public void b(ExploreActivity exploreActivity, Message message) {
            int i = message.what;
            if (i == 2) {
                lg2.d().g("ExploreActivity");
            } else if (i == 5) {
                ExploreActivity.Y0(exploreActivity);
            } else {
                if (i != 6) {
                    return;
                }
                ThreadPool.a(new wa2());
            }
        }
    }

    public static void D0() {
        P1();
    }

    public static void E0(ExploreActivity exploreActivity) {
        exploreActivity.T1();
    }

    public static void F0(Throwable th) {
        S1(th);
    }

    public static void H0(ExploreActivity exploreActivity, RxBus.d dVar) {
        exploreActivity.R1(dVar);
    }

    public static void I0(ExploreActivity exploreActivity, String str) {
        exploreActivity.O1(str);
    }

    public static void J0(ExploreActivity exploreActivity, Bundle bundle, View view, int i2, ViewGroup viewGroup) {
        exploreActivity.G1(bundle, view, i2, viewGroup);
    }

    public static void J1() {
        ActivateAppManager.w().p(ActivatePos.OPEN_DIRECT);
    }

    public static void K1() {
        LaunchLogger launchLogger = PhoenixApplication.E;
        launchLogger.I("main_content_drawn");
        launchLogger.j("main_content_drawn");
        launchLogger.A("main_content_drawn");
    }

    public static void M1() {
        yh4.b(true);
    }

    public static void N0() {
        J1();
    }

    public static void P0() {
        K1();
    }

    public static void P1() {
        yh4.b(true);
    }

    public static void Q0(ExploreActivity exploreActivity, Map map) {
        exploreActivity.F1(map);
    }

    public static void R0() {
        M1();
    }

    public static void S0(ExploreActivity exploreActivity, RxBus.d dVar) {
        exploreActivity.L1(dVar);
    }

    public static void S1(Throwable th) {
        ProductionEnv.logException("ExploreActivityEventException", th);
    }

    public static void V0(ExploreActivity exploreActivity, long j2) {
        exploreActivity.b2(j2);
    }

    public static void Y0(ExploreActivity exploreActivity) {
        exploreActivity.m2();
    }

    public static String Z0() {
        return F;
    }

    private void c1() {
        PopCoordinator.i0(this).d().a(3).b(new uf1(this)).b(new CopyLinkPopElement(this, this.f404o)).b(new UpgradePopElement(this)).complete().g(this);
    }

    private void t2() {
        z0(RxBus.d().c(1097, 1096, 1120, 1049, 1266).g(RxBus.f).u0(new sa2(this), new ta2()));
    }

    private void z1() {
        this.y = RxBus.d().c(1250).g(RxBus.f).u0(new va2(this), new u());
    }

    @Override
    public View A() {
        return findViewById(R.id.bottom_btn_container);
    }

    public final void A1(Bundle bundle) {
        this.t = true;
        getWindow().clearFlags(1024);
        getWindow().setBackgroundDrawableResource(R.color.background_block_normal_color);
        y2(bundle);
        c1();
        z1();
    }

    public final void A2() {
        wu7 wu7Var = this.u;
        if (wu7Var == null || wu7Var.isUnsubscribed()) {
            return;
        }
        this.u.unsubscribe();
        this.u = null;
    }

    public final boolean C1() {
        HomePageFragment homePageFragment = (HomePageFragment) getSupportFragmentManager().findFragmentById(R.id.multi_tab_fragment);
        if (homePageFragment != null) {
            return homePageFragment.J3();
        }
        return false;
    }

    public final boolean D1() {
        Fragment fragmentFindFragmentById = getSupportFragmentManager().findFragmentById(R.id.multi_tab_fragment);
        String str = F;
        ProductionEnv.debugLog(str, "isInHomeTab fragment: " + fragmentFindFragmentById);
        if (!(fragmentFindFragmentById instanceof HomePageFragment)) {
            return false;
        }
        int iP2 = ((HomePageFragment) fragmentFindFragmentById).P2();
        ProductionEnv.debugLog(str, "isInHomeTab pageFragment: " + iP2);
        return iP2 == 0;
    }

    public final boolean E1() {
        Intent intent = getIntent();
        if (isTaskRoot() || intent == null || (intent.getFlags() & 32768) != 0 || !intent.hasCategory("android.intent.category.LAUNCHER") || !"android.intent.action.MAIN".equals(intent.getAction())) {
            return false;
        }
        finish();
        return true;
    }

    public final void F1(Map map) {
        HomePageFragment.S3(this, map);
    }

    public final void G1(Bundle bundle, View view, int i2, ViewGroup viewGroup) {
        if (this.t || isFinishing() || this.x) {
            return;
        }
        this.A = ya2.a(view);
        setContentView(view);
        A1(bundle);
        w1();
    }

    @Override
    public int H1() {
        return R.id.fl_container;
    }

    public final void L1(RxBus.d dVar) {
        X1((List) dVar.d);
    }

    @Override
    public void O(boolean z, Intent intent) {
        super.O(z, intent);
        ((j) fc1.a(this)).y(this);
        y2.a(this, z, intent);
        if (this.B == null) {
            this.B = (YtbUserAccountViewModel) new n(this).a(YtbUserAccountViewModel.class);
        }
        this.B.W();
    }

    public final void O1(String str) {
        List list;
        com.snaptube.premium.ads.a.d dVarZ = PhoenixApplication.C().y().Z(AdsPos.NATIVE_MYFILE_ALL_PLAY_LIST.pos());
        int iIntValue = (dVarZ == null || (list = dVarZ.c) == null || list.size() <= 0) ? 2 : dVarZ.a + ((Integer) dVarZ.c.get(0)).intValue();
        List listD0 = TaskInfoDBUtils.D0(new af1(iIntValue));
        if (listD0 == null || listD0.size() < iIntValue) {
            return;
        }
        ((gb) this.k.get()).c(jb.e(str).f("ad_request_scene", "launch"));
    }

    public final void R1(RxBus.d dVar) {
        int i2 = dVar.a;
        if (i2 == 1049) {
            t1(dVar);
            return;
        }
        if (i2 == 1096) {
            u1();
            return;
        }
        if (i2 == 1120) {
            o1(dVar);
        } else {
            if (i2 != 1266) {
                return;
            }
            u1();
            a58.a.postDelayed(new ma2(), 500L);
        }
    }

    public final void T1() {
        bq0.K0("home");
        NotificationToolBarHelper.a.c0(getApplicationContext(), false);
    }

    public final boolean U1(Bundle bundle) {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (supportFragmentManager.findFragmentById(R.id.multi_tab_fragment) != null) {
            return false;
        }
        HomePageFragment homePageFragment = new HomePageFragment();
        Bundle arguments = homePageFragment.getArguments();
        if (arguments == null) {
            arguments = new Bundle();
        }
        if (bundle != null) {
            arguments.putAll(bundle);
        }
        homePageFragment.setArguments(arguments);
        supportFragmentManager.beginTransaction().replace(R.id.multi_tab_fragment, homePageFragment, "fragment_home").commitNowAllowingStateLoss();
        return true;
    }

    public final void W1(Intent intent, BottomTabConfig bottomTabConfig) {
        HomePageFragment homePageFragment = (HomePageFragment) getSupportFragmentManager().findFragmentById(R.id.multi_tab_fragment);
        if (homePageFragment != null) {
            homePageFragment.A3(bottomTabConfig, intent);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("arg_init_tab", bottomTabConfig.getTitle());
        bundle.putAll(HomePageFragment.h4(intent));
        Bundle extras = intent.getExtras();
        if (extras != null) {
            bundle.putAll(extras);
        }
        U1(bundle);
    }

    public final void X1(List list) {
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            if ("android.permission.WRITE_EXTERNAL_STORAGE".equals(str) || "android.permission.MANAGE_EXTERNAL_STORAGE".equals(str)) {
                if (sq5.c() || (uh.d() && sq5.b())) {
                    PhoenixApplication.E().B(MediaFileScanner.From.FILES_ACTIVITY_START);
                    return;
                }
                return;
            }
        }
    }

    public void Z1() {
        for (AdsPos adsPos : ua.a.b()) {
            if (ua.a.a(adsPos.pos())) {
                ((gb) this.k.get()).c(jb.e(adsPos.pos()));
            }
        }
    }

    public final void a2() {
        if (this.z) {
            return;
        }
        this.z = true;
        if (od.c(AdsPos.START_DOWNLOAD_INTERSTITIAL.pos())) {
            StartDownloadAdViewModel.A("launch");
        }
        Lazy<gb> lazy = this.k;
        if (lazy == null || lazy.get() == null) {
            return;
        }
        AdsPos adsPos = AdsPos.NATIVE_YOUTUBE_DETAILS_TOP_BANNER;
        if (od.c(adsPos.pos())) {
            ((gb) this.k.get()).c(jb.e(adsPos.pos()).f("ad_request_scene", "launch"));
        }
        String strSubPos = AdsPos.NATIVE_YOUTUBE_DETAILS_BANNER.subPos(MBridgeConstans.ENDCARD_URL_TYPE_PL);
        if (od.c(strSubPos)) {
            ((gb) this.k.get()).c(jb.e(strSubPos).f("ad_request_scene", "launch"));
        }
        String strSubPos2 = AdsPos.NATIVE_MYFILE_ALL_PLAY_LIST.subPos(MBridgeConstans.ENDCARD_URL_TYPE_PL);
        if (od.c(strSubPos2)) {
            ThreadPool.a(new ra2(this, strSubPos2));
        }
    }

    public boolean b1() {
        View view = this.j;
        return view == null || view.getVisibility() != 0;
    }

    public final void b2(long j2) {
        this.C.removeMessages(6);
        this.C.sendEmptyMessageDelayed(6, j2);
    }

    public final void c2(Intent intent) {
        if (l0(this, null, intent)) {
            return;
        }
        NavigationManager.l1(this, intent);
    }

    public final void d1() {
        if (this.f) {
            v2();
            this.f = false;
        }
    }

    public final void d2() {
        this.u = RxBus.d().c(1143, 1145).g(RxBus.f).u0(new h(), new i());
    }

    public final void e1() {
    }

    @Override
    public View f1(DestinationType destinationType) {
        for (b6 b6Var : getSupportFragmentManager().getFragments()) {
            if (b6Var instanceof br2) {
                return ((br2) b6Var).f1(destinationType);
            }
        }
        return null;
    }

    @Override
    public void finish() {
        super.finish();
        RxBus.d().f(1047);
    }

    @Override
    public boolean fitsSystemWindowForRoot() {
        return false;
    }

    public final void g1() {
        Pair pair = this.E;
        if (pair == null) {
            return;
        }
        s1(this, (Card) pair.first, (Intent) pair.second);
        this.E = null;
    }

    @Override
    public TextView getActionView() {
        return (TextView) findViewById(R.id.tv_action);
    }

    @Override
    @Nullable
    public ActionBar getSupportActionBar() {
        if (this.i == null) {
            return null;
        }
        return super.getSupportActionBar();
    }

    @Override
    public Object getSystemService(String str) {
        if (!TextUtils.equals(str, "InflatePool")) {
            return super.getSystemService(str);
        }
        x1();
        return this.h;
    }

    public final void h1(Card card, Intent intent) {
        this.E = new Pair(card, intent);
    }

    public final void h2() {
        Fragment fragmentFindFragmentById = getSupportFragmentManager().findFragmentById(R.id.multi_tab_fragment);
        if (fragmentFindFragmentById instanceof HomePageFragment) {
            Fragment fragmentO2 = ((HomePageFragment) fragmentFindFragmentById).O2();
            if (fragmentO2 instanceof TabHostFragment) {
                b6 b6VarO2 = ((TabHostFragment) fragmentO2).O2();
                if (b6VarO2 instanceof ry6) {
                    ((ry6) b6VarO2).V0();
                }
            }
        }
    }

    @Override
    public void i(boolean z) {
        Fragment fragmentFindFragmentById = getSupportFragmentManager().findFragmentById(R.id.multi_tab_fragment);
        if (fragmentFindFragmentById instanceof HomePageFragment) {
            ((HomePageFragment) fragmentFindFragmentById).n3(z);
        }
    }

    public final boolean i1(Bundle bundle) {
        if (Build.VERSION.SDK_INT < 35) {
            PhoenixApplication.C().J().b(new la2(this));
        }
        ((j) fc1.a(this)).y(this);
        G = true;
        getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).registerOnSharedPreferenceChangeListener(this.D);
        if (bundle == null) {
            new vu(this).a(R.layout.explore_activity, null, new na2(this, bundle));
        } else {
            ya2 ya2VarC = ya2.c(getLayoutInflater());
            this.A = ya2VarC;
            setContentView(ya2VarC.b());
            A1(bundle);
            w1();
        }
        d2();
        d1();
        this.s.post(new oa2());
        androidx.view.j.l().getLifecycle().a(new CleanForegroundWatcher());
        this.s.postDelayed(new a(), TimeUnit.SECONDS.toMillis(20L));
        getWindow().getDecorView().post(new pa2());
        z2();
        return false;
    }

    public final void i2() {
        if (this.n.c()) {
            h2();
        }
    }

    public final boolean j1() {
        this.w = true;
        s2();
        pq5.b(this);
        if (SplashAdManager.d0().C0()) {
            PhoenixApplication.E.I("feed_first_card_exposure_after_splash_ad");
        }
        if (bq0.D() && bq0.C() && bq0.F() && C1()) {
            u2();
            bq0.y0(false);
            bq0.w0(false);
        }
        bq0.u0(true);
        return false;
    }

    public final void k2() {
        com.snaptube.premium.selfupgrade.incremental_upgrade.b.y();
    }

    @Override
    public boolean l0(Context context, Card card, Intent intent) {
        if (getLifecycle().b() == Lifecycle.State.RESUMED) {
            return s1(context, card, intent);
        }
        h1(card, intent);
        return true;
    }

    public final void l1(Context context, Intent intent) {
        if (intent != null) {
            this.p = intent.getIntExtra("crack_code", 0);
        }
        C0();
        m1(context, this.p == 1);
    }

    public final void l2(long j2) {
        wu7 wu7Var = this.r;
        if ((wu7Var == null || wu7Var.isUnsubscribed()) && TextUtils.isEmpty(Config.C())) {
            this.C.sendEmptyMessageDelayed(5, TimeUnit.SECONDS.toMillis(j2));
        }
    }

    @Override
    public void m(IPopElement iPopElement) {
        String str = F;
        ProductionEnv.debugLog(str, "onDismiss popElement: " + iPopElement);
        boolean zE = PopCoordinator.i0(this).e();
        ProductionEnv.debugLog(str, "onDismiss isFullViewPop: " + zE);
        if (zE) {
            return;
        }
        i2();
    }

    public final void m1(Context context, boolean z) {
        if (context != null) {
            try {
                b88.e(context, z ? R.string.debug_not_allowed : R.string.update_for_crack);
            } catch (Exception e2) {
                ProductionEnv.throwExceptForDebugging(e2);
                return;
            }
        }
        rx.c.Q(Boolean.valueOf(z)).q(2L, TimeUnit.SECONDS).t0(new d());
    }

    public final void m2() {
        if (TextUtils.isEmpty(Config.C())) {
            this.r = YouTubeSettingCache.requestYoutubeSetting(PhoenixApplication.C().b().r(), new e(), new f(), new g());
        }
    }

    public final Bundle n1(Intent intent) {
        String strValueOf = null;
        if (intent == null) {
            return null;
        }
        Uri data = intent.getData();
        if (data != null && data.getLastPathSegment() != null) {
            strValueOf = String.valueOf(data.getLastPathSegment());
        }
        Bundle bundle = intent.getExtras() == null ? new Bundle() : new Bundle(intent.getExtras());
        bundle.putString("arg_init_tab", HomePageFragment.B3(BottomTabConfig.BOTTOM_TAB_TYPE_DOWNLOAD).getTitle());
        bundle.putString("url", intent.getStringExtra("url"));
        bundle.putString("launch_from", "notification_push");
        bundle.putString("tab_name", strValueOf);
        return bundle;
    }

    public final void o1(RxBus.d dVar) {
        en4.e((String) dVar.d, false, null);
    }

    public final void o2(boolean z, String str, String str2, Intent intent, boolean z2) {
        p2(z, str, str2, intent, z2, false);
    }

    @Override
    public void onBackPressed() {
        ProductionEnv.debugLog(F, "onBackPressed isShowingSplashAd");
        if (com.snaptube.premium.activity.b.y(this)) {
            return;
        }
        if (getSupportFragmentManager().getBackStackEntryCount() >= 1) {
            if (getSupportFragmentManager().isStateSaved()) {
                return;
            }
            getSupportFragmentManager().popBackStack();
        } else {
            b6 b6VarFindFragmentById = getSupportFragmentManager().findFragmentById(R.id.multi_tab_fragment);
            if ((b6VarFindFragmentById instanceof bh5) && ((bh5) b6VarFindFragmentById).onBackPressed()) {
                return;
            }
            super.onBackPressed();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        setTheme(R.style.P4_Theme_Splash_Explore);
        LaunchLogger launchLogger = PhoenixApplication.E;
        launchLogger.I("activity_onCreate");
        super.onCreate(bundle);
        this.q.e();
        if (E1()) {
            return;
        }
        i1(bundle);
        launchLogger.j("activity_onCreate");
    }

    @Override
    public void onDestroy() {
        this.x = true;
        this.q.d();
        RxBus.d().e();
        G = false;
        getSharedPreferences(GlobalConfig.PREF_CONTENT_CONFIG, 0).unregisterOnSharedPreferenceChangeListener(this.D);
        wu7 wu7Var = this.r;
        if (wu7Var != null) {
            wu7Var.unsubscribe();
        }
        A2();
        wu7 wu7Var2 = this.y;
        if (wu7Var2 != null && !wu7Var2.isUnsubscribed()) {
            this.y.unsubscribe();
        }
        super.onDestroy();
    }

    @Override
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (isFinishing()) {
            return;
        }
        p1(intent);
    }

    @Override
    public void onPause() {
        super.onPause();
        this.w = false;
        wu7 wu7Var = this.e;
        if (wu7Var != null) {
            wu7Var.unsubscribe();
            this.e = null;
        }
    }

    @Override
    public void onPostResume() {
        super.onPostResume();
        g1();
    }

    @Override
    public void onResume() {
        LaunchLogger launchLogger = PhoenixApplication.E;
        launchLogger.I("activity_onResume");
        super.onResume();
        if (j1()) {
            return;
        }
        launchLogger.j("activity_onResume");
        launchLogger.d();
        launchLogger.z();
    }

    @Override
    public void onStart() {
        LaunchLogger launchLogger = PhoenixApplication.E;
        launchLogger.I("activity_onStart");
        l82.a();
        super.onStart();
        launchLogger.j("activity_onStart");
    }

    @Override
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        ProductionEnv.d(F, "onWindowFocusChanged: " + z);
        if (z) {
            LaunchLogger launchLogger = PhoenixApplication.E;
            launchLogger.I("main_content_visible");
            launchLogger.j("main_content_visible");
            launchLogger.A("main_content_visible");
            this.s.post(new qa2());
            a2();
            PhoenixApplication.C().t();
        }
    }

    @Override
    public void p(IPopElement iPopElement) {
        boolean zE = PopCoordinator.i0(this).e();
        ProductionEnv.debugLog(F, "onPop popElement: " + iPopElement + " isFullViewPop: " + zE + " popType: " + iPopElement.c());
        if (zE) {
            this.n.a();
        }
    }

    public boolean p1(Intent intent) {
        return q1(intent, false);
    }

    public final void p2(boolean z, String str, String str2, Intent intent, boolean z2, boolean z3) {
        int i2;
        int i3;
        Intent launchIntentForPackage = getApplicationContext().getPackageManager().getLaunchIntentForPackage(getApplicationContext().getPackageName());
        if (launchIntentForPackage == null) {
            ProductionEnv.throwExceptForDebugging(new IllegalArgumentException("intent is null when restart MainActivity"));
            return;
        }
        launchIntentForPackage.putExtra("phoenix.intent.extra.EXTRA_IS_LOGIN_RESTART", z);
        if (!TextUtils.isEmpty(str)) {
            launchIntentForPackage.putExtra("arg_init_tab", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            launchIntentForPackage.putExtra("url_of_default_tab", str2);
        }
        if (intent != null) {
            launchIntentForPackage.putExtra("action_after_restart", intent);
        }
        launchIntentForPackage.addFlags(268533760);
        if (z3) {
            i2 = R.anim.anim_fade_in;
            i3 = R.anim.anim_fade_out;
        } else {
            i2 = 0;
            i3 = 0;
        }
        overridePendingTransition(i2, i3);
        startActivity(launchIntentForPackage);
        overridePendingTransition(i2, i3);
    }

    @Override
    public int q() {
        return 0;
    }

    public boolean q1(Intent intent, boolean z) {
        if (intent == null || !this.t) {
            return false;
        }
        if (intent.hasExtra("app_start_pos_new")) {
            AppStartRecorder.h(intent);
        }
        intent.setExtrasClassLoader(getClass().getClassLoader());
        String stringExtra = intent.getStringExtra("launch_from");
        if (TextUtils.equals(stringExtra, "shortcut") || TextUtils.equals(stringExtra, NavigationManager.z1)) {
            new ReportPropertyBuilder().setEventName("behavior").setAction("app_start").setProperty("from", stringExtra).reportEvent();
        }
        if (B0()) {
            l1(this, intent);
            return false;
        }
        String action = intent.getAction();
        if ("snaptube.intent.action.MOVE_TASK_TO_BACK".equals(action)) {
            RxBus.d().f(1047);
            try {
                moveTaskToBack(true);
            } catch (Exception e2) {
                ProductionEnv.logException("MoveTaskToBackException", e2);
            }
            PopCoordinator.i0(this).a(false);
            return true;
        }
        if ("phoenix.intent.action.EXIT_FOR_CRACK".equals(action)) {
            l1(this, intent);
            return true;
        }
        if ("phoenix.intent.action.ACTION_SELF_UPDATE_AVAILABLE".equals(action)) {
            U1(null);
            CheckSelfUpgradeManager.S("notification", true);
            CheckSelfUpgradeManager.q(this, "click_notification_upgrade");
            return true;
        }
        if ("phoenix.intent.action.EXPLORE_NAVIGATE".equals(action)) {
            if (U1(n1(intent))) {
                return true;
            }
            return l0(this, null, intent);
        }
        if ("snaptube.intent.action.ACTION_RESTART_ACTIVITY".equals(action)) {
            o2(false, intent.getStringExtra("arg_init_tab"), null, null, false);
            return true;
        }
        if ("snaptube.intent.action.ACTION_EXIT_PROCESS".equals(action)) {
            System.exit(0);
            return true;
        }
        if ("snaptube.intent.action.SHOW_UPGRADE_DIALOG".equals(action)) {
            x2(intent.toUri(1));
            return true;
        }
        if ("phoenix.intent.action.SEARCH_TAB_NAVIGATE".equals(action)) {
            W1(intent, HomePageFragment.B3(BottomTabConfig.BOTTOM_TAB_TYPE_DOWNLOAD));
            return true;
        }
        if ("phoenix.intent.action.MY_THINGS_NAVIGATE".equals(action)) {
            W1(intent, HomePageFragment.B3(BottomTabConfig.BOTTOM_TAB_TYPE_FILE));
            return true;
        }
        if ("phoenix.intent.action.ME_NAVIGATE".equals(action)) {
            W1(intent, HomePageFragment.B3(BottomTabConfig.BOTTOM_TAB_TYPE_ME));
            return true;
        }
        if ("android.intent.action.SEND".equals(action)) {
            String strB = vs1.b(intent);
            if (strB == null || z) {
                return false;
            }
            NavigationManager.Q0(this, strB, strB, intent.getBooleanExtra("is_auto_autoDownload", if9.r(this)), "intent", null, true);
            return true;
        }
        if ("phoenix.intent.action.HOME_TOOLBAR".equals(action)) {
            W1(intent, HomePageFragment.B3(BottomTabConfig.BOTTOM_TAB_TYPE_DOWNLOAD));
            z88.a("click_toolsbar_st");
        }
        if ("phoenix.intent.action.MY_FILES_TOOLBAR".equals(action)) {
            W1(intent, HomePageFragment.B3(BottomTabConfig.BOTTOM_TAB_TYPE_FILE));
            z88.a("click_toolsbar_myfiles");
            return true;
        }
        if ("phoenix.intent.action.MY_FILES_SHORT_CUT_TOOLBAR".equals(action)) {
            W1(intent, HomePageFragment.B3(BottomTabConfig.BOTTOM_TAB_TYPE_FILE));
            z88.a("click_shortcut_myfiles");
        }
        if ("phoenix.intent.action.SEARCH_TOOLBAR".equals(action)) {
            if (TextUtils.equals(intent.getStringExtra("from"), "from_short_cut")) {
                z88.a("click_shortcut_search");
            } else {
                z88.a("click_toolsbar_search");
            }
            hn7.a(intent);
            NavigationManager.c0(this, SearchConst$SearchType.VIDEO);
            return true;
        }
        if ("phoenix.intent.action.CLEAN_TOOLBAR".equals(action)) {
            String stringExtra2 = intent.getStringExtra("clean_from");
            if (TextUtils.isEmpty(stringExtra2)) {
                stringExtra2 = "shortcut_click";
            }
            if (sq5.g()) {
                NavigationManager.Q(getApplicationContext(), stringExtra2, CleanBaseActivity.d);
            } else {
                z88.d("click_toolsbar_cleaner", "toolbar_clean_request_permission");
                if (this.B == null) {
                    this.B = (YtbUserAccountViewModel) new n(this).a(YtbUserAccountViewModel.class);
                }
                this.B.Y(true);
                W1(intent, HomePageFragment.B3(BottomTabConfig.BOTTOM_TAB_TYPE_ME));
            }
            return true;
        }
        if ("phoenix.intent.action.BOOST_TOOLBAR".equals(action)) {
            NavigationManager.Q(getApplicationContext(), "boost_from_toolbar", CleanBaseActivity.f);
            return true;
        }
        if ("phoenix.intent.action.MORE_TOOLBAR".equals(action)) {
            z88.a("click_toolsbar_more");
            W1(intent, HomePageFragment.B3(BottomTabConfig.BOTTOM_TAB_TYPE_ME));
            return true;
        }
        if ("phoenix.intent.action.BLANK_TOOLBAR".equals(action)) {
            z88.a("click_toolsbar_blank");
            W1(intent, HomePageFragment.B3(BottomTabConfig.BOTTOM_TAB_TYPE_ME));
            return true;
        }
        if ("phoenix.intent.action.VAULT_SHORT_CUT".equals(action)) {
            NavigationManager.u0(this, "homescreen");
            return true;
        }
        U1(intent.getExtras());
        Parcelable parcelableExtra = intent.getParcelableExtra("action_after_restart");
        if (parcelableExtra instanceof Intent) {
            c2((Intent) parcelableExtra);
        }
        return true;
    }

    public final boolean s1(Context context, Card card, Intent intent) {
        if (intent.getBooleanExtra("extra.key.explore_mark", false)) {
            ProductionEnv.errorLog(F, "the intent lost handler");
            return true;
        }
        intent.putExtra("extra.key.explore_mark", true);
        b6 b6VarFindFragmentById = getSupportFragmentManager().findFragmentById(R.id.multi_tab_fragment);
        if ((b6VarFindFragmentById instanceof je3) && ((je3) b6VarFindFragmentById).l0(context, card, intent)) {
            return true;
        }
        if (TextUtils.equals(intent.getAction(), "phoenix.intent.action.EXPLORE_NAVIGATE")) {
            return false;
        }
        return this.m.l0(context, card, intent);
    }

    public final void s2() {
        this.e = RxBus.d().c(1025, 1026, 1062).g(RxBus.f).t0(new c());
    }

    @Override
    public void setSupportActionBar(Toolbar toolbar) {
        super.setSupportActionBar(toolbar);
        this.i = toolbar;
    }

    @Override
    public boolean t(a70 a70Var) {
        Intent intent = getIntent();
        ProductionEnv.debugLog(F, "canPop popElement: " + a70Var + " intent: " + intent + " this: " + this);
        return intent != null && "android.intent.action.MAIN".equals(intent.getAction()) && D1();
    }

    public final void t1(RxBus.d dVar) {
        if (az7.U(this)) {
            try {
                invalidateOptionsMenu();
            } catch (Exception e2) {
                ProductionEnv.throwExceptForDebugging(e2);
            }
        }
        u04.b(this);
        l2(3L);
        FirebaseDynamicLinkChecker.f(this);
    }

    public final void u1() {
        e1();
    }

    public final void u2() {
        IPlayerGuide iPlayerGuideB0 = q23.b0();
        PlayerGuideAdPos playerGuideAdPos = PlayerGuideAdPos.ClEANER_UPGRADE_HOME_DIALOG;
        if (iPlayerGuideB0.v(playerGuideAdPos) && PopCoordinator.i0(this).f() == 0) {
            bt0 bt0Var = this.v;
            if (bt0Var == null || !bt0Var.isShowing()) {
                bt0 bt0Var2 = new bt0(this);
                this.v = bt0Var2;
                bt0Var2.show();
                q23.b0().a(playerGuideAdPos);
            }
        }
    }

    @Override
    public boolean useThemeColor() {
        return false;
    }

    public final void v2() {
        this.s.postDelayed(new ua2(this), DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    }

    public final void w1() {
        Config.a();
        LaunchLogger launchLogger = PhoenixApplication.E;
        launchLogger.w();
        launchLogger.L();
        k2();
        if (Config.N6()) {
            this.f404o.get();
        }
        d76.b().j();
    }

    public final void x1() {
        if (this.h == null) {
            LinkedList linkedList = new LinkedList();
            if (gl7.a().d()) {
                linkedList.add(this.g);
            }
            Object objC = PhoenixApplication.C().J().c(lm3.class, null);
            if (objC != null) {
                linkedList.add((lm3) objC);
            }
            this.h = new or4(linkedList);
        }
    }

    public final void x2(String str) {
        new UpgradeDialog().E2(getSupportFragmentManager());
        CheckSelfUpgradeManager.U(str);
    }

    public final void y2(Bundle bundle) {
        ProductionEnv.debugLog(F, "current region: " + g86.c(this));
        t2();
        q1(getIntent(), bundle != null);
        U1(null);
        SnapTubeLoggerManager snapTubeLoggerManager = SnapTubeLoggerManager.Instance;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        snapTubeLoggerManager.checkLogcat(timeUnit.toMillis(5L));
        this.C.sendEmptyMessageDelayed(2, timeUnit.toMillis(3L));
        l2(0L);
        if (TextUtils.isEmpty(Config.C())) {
            return;
        }
        b2(1000L);
    }

    public final void z2() {
        if (!uh.f() || SplashAdManager.d0().z0() || sq5.k("android.permission.POST_NOTIFICATIONS")) {
            return;
        }
        PermissionHelper.a.k(this, new com.snaptube.permission.a.C0392a().h("push_permission").e(0).g(false).j("manual_trigger").a(), null);
    }
}
