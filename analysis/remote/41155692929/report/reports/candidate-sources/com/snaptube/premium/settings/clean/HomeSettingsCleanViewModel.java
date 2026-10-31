package com.snaptube.premium.settings.clean;

import android.content.Context;
import com.dayuwuxian.clean.bean.AppInfo;
import com.dayuwuxian.clean.bean.PhotoSizeInfo;
import com.dayuwuxian.clean.photo.dao.PhotoInfoRepository;
import com.dayuwuxian.clean.photo.dao.SCCleanDatabase;
import com.dayuwuxian.clean.repository.AppInfoRepository;
import com.dayuwuxian.clean.repository.JunkInfoRepository;
import com.dayuwuxian.clean.util.AppUtil;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.clean.CleanJunkStatusManager;
import com.snaptube.premium.whatsapp.WhatsAppStatusHelper;
import com.wandoujia.base.config.GlobalConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Pair;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Ref$LongRef;
import o.a97;
import o.bq0;
import o.bx2;
import o.cm7;
import o.cu7;
import o.d15;
import o.dp1;
import o.e15;
import o.f15;
import o.fm7;
import o.gl0;
import o.h59;
import o.jc1;
import o.js;
import o.kd8;
import o.mg8;
import o.mx8;
import o.om;
import o.or3;
import o.ox8;
import o.pg1;
import o.pq2;
import o.pr3;
import o.qq2;
import o.qq7;
import o.sq5;
import o.tq2;
import o.ux0;
import o.wc0;
import o.wd0;
import o.xu0;
import snap.clean.boost.fast.security.master.data.CleanDatabase;
import snap.clean.boost.fast.security.master.data.GarbageType;
import snap.clean.boost.fast.security.master.data.JunkSizeInfo;

public final class HomeSettingsCleanViewModel extends mx8 {
    public static final a r = new a(null);
    public final pq2 a;
    public final e15 b;
    public final pq2 c;
    public final pq2 d;
    public final pq2 e;
    public final e15 f;
    public final d15 g;
    public final d15 h;
    public final d15 i;
    public final d15 j;
    public final d15 k;
    public final d15 l;
    public final d15 m;
    public final Map n;

    public final d15 f457o;
    public AtomicLong p;
    public AtomicLong q;

    public static final class a {
        public a() {
        }

        public a(pg1 pg1Var) {
            this();
        }

        public final void a() {
            int size;
            if (sq5.g()) {
                Iterator it2 = WhatsAppStatusHelper.a.i().iterator();
                int i = 0;
                while (it2.hasNext()) {
                    File file = new File((String) it2.next());
                    if (file.exists() && file.isDirectory()) {
                        String[] list = file.list();
                        if (list != null) {
                            or3.c(list);
                            ArrayList arrayList = new ArrayList();
                            for (String str : list) {
                                or3.c(str);
                                if (!cu7.x(str, ".nomedia", false, 2, null)) {
                                    arrayList.add(str);
                                }
                            }
                            size = arrayList.size();
                        } else {
                            size = 0;
                        }
                        i += size;
                    }
                }
                h59.j(i);
            }
        }
    }

    public static final class b implements qq2 {
        public b() {
        }

        public final Object a(List list, Continuation continuation) {
            Object objJ0 = HomeSettingsCleanViewModel.j0(HomeSettingsCleanViewModel.this, list, continuation);
            return objJ0 == pr3.f() ? objJ0 : mg8.a;
        }

        @Override
        public Object emit(Object obj, Continuation continuation) {
            return a((List) obj, continuation);
        }
    }

    public static final class c implements qq2 {
        public final Ref$LongRef b;

        public c(Ref$LongRef ref$LongRef) {
            this.b = ref$LongRef;
        }

        public final Object a(long j, Continuation continuation) {
            Object objL0 = HomeSettingsCleanViewModel.l0(HomeSettingsCleanViewModel.this, this.b.element, continuation);
            return objL0 == pr3.f() ? objL0 : mg8.a;
        }

        @Override
        public Object emit(Object obj, Continuation continuation) {
            return a(((Number) obj).longValue(), continuation);
        }
    }

    public static final class d implements qq2 {
        public d() {
        }

        public final Object a(List list, Continuation continuation) {
            Object objJ0 = HomeSettingsCleanViewModel.j0(HomeSettingsCleanViewModel.this, list, continuation);
            return objJ0 == pr3.f() ? objJ0 : mg8.a;
        }

        @Override
        public Object emit(Object obj, Continuation continuation) {
            return a((List) obj, continuation);
        }
    }

    public static final class e implements qq2 {
        public e() {
        }

        public final Object a(long j, Continuation continuation) {
            Object objL0;
            return (cm7.a.c() && (objL0 = HomeSettingsCleanViewModel.l0(HomeSettingsCleanViewModel.this, j, continuation)) == pr3.f()) ? objL0 : mg8.a;
        }

        @Override
        public Object emit(Object obj, Continuation continuation) {
            return a(((Number) obj).longValue(), continuation);
        }
    }

    public static final class f implements qq2 {
        public f() {
        }

        public final Object a(List list, Continuation continuation) {
            Object objEmit = HomeSettingsCleanViewModel.this.u0().emit(list, continuation);
            return objEmit == pr3.f() ? objEmit : mg8.a;
        }

        @Override
        public Object emit(Object obj, Continuation continuation) {
            return a((List) obj, continuation);
        }
    }

    public static final class g implements Comparator {
        @Override
        public final int compare(Object obj, Object obj2) {
            return ux0.a(Integer.valueOf(((a97) obj).d()), Integer.valueOf(((a97) obj2).d()));
        }
    }

    public HomeSettingsCleanViewModel() {
        SCCleanDatabase.Companion aVar = SCCleanDatabase.INSTANCE;
        Context appContext = GlobalConfig.getAppContext();
        or3.e(appContext, "getAppContext(...)");
        this.a = new PhotoInfoRepository(aVar.b(appContext).k()).p();
        this.b = f15.b(false, 1, null);
        this.c = fm7.a.e();
        CleanDatabase.Companion companion = CleanDatabase.INSTANCE;
        Context appContext2 = GlobalConfig.getAppContext();
        or3.e(appContext2, "getAppContext(...)");
        this.d = new JunkInfoRepository(companion.b(appContext2).junkInfoDao()).f();
        this.e = AppInfoRepository.a.g();
        this.f = f15.b(false, 1, null);
        this.g = qq7.a(null);
        this.h = qq7.a(null);
        this.i = qq7.a(null);
        this.j = qq7.a(null);
        this.k = qq7.a(null);
        this.l = qq7.a(null);
        this.m = qq7.a(null);
        this.n = new LinkedHashMap();
        this.f457o = qq7.a(xu0.h());
        this.p = new AtomicLong(-1L);
        this.q = new AtomicLong(-1L);
        n0();
        E0();
        F0();
        G0();
        D0();
        M0();
        L0();
    }

    public static final Pair B(HomeSettingsCleanViewModel homeSettingsCleanViewModel, int i) {
        return homeSettingsCleanViewModel.s0(i);
    }

    private final void F0() {
        wd0.d(ox8.a(this), dp1.a(), null, new HomeSettingsCleanViewModel$subscribePhotoInfo$$inlined$backgroundLaunch$1(null, this), 2, null);
    }

    public static final d15 M(HomeSettingsCleanViewModel homeSettingsCleanViewModel) {
        return homeSettingsCleanViewModel.i;
    }

    public static final String R(HomeSettingsCleanViewModel homeSettingsCleanViewModel, String str) {
        return homeSettingsCleanViewModel.t0(str);
    }

    public static final String T(HomeSettingsCleanViewModel homeSettingsCleanViewModel, String str) {
        return homeSettingsCleanViewModel.v0(str);
    }

    public static final int U(HomeSettingsCleanViewModel homeSettingsCleanViewModel, bx2 bx2Var) {
        return homeSettingsCleanViewModel.w0(bx2Var);
    }

    public static final String V(HomeSettingsCleanViewModel homeSettingsCleanViewModel, String str) {
        return homeSettingsCleanViewModel.x0(str);
    }

    public static final Map W(HomeSettingsCleanViewModel homeSettingsCleanViewModel) {
        return homeSettingsCleanViewModel.n;
    }

    public static final pq2 Y(HomeSettingsCleanViewModel homeSettingsCleanViewModel) {
        return homeSettingsCleanViewModel.d;
    }

    public static final d15 a0(HomeSettingsCleanViewModel homeSettingsCleanViewModel) {
        return homeSettingsCleanViewModel.h;
    }

    public static final e15 c0(HomeSettingsCleanViewModel homeSettingsCleanViewModel) {
        return homeSettingsCleanViewModel.b;
    }

    public static final pq2 d0(HomeSettingsCleanViewModel homeSettingsCleanViewModel) {
        return homeSettingsCleanViewModel.a;
    }

    public static final pq2 e0(HomeSettingsCleanViewModel homeSettingsCleanViewModel) {
        return homeSettingsCleanViewModel.c;
    }

    public static final boolean f0(HomeSettingsCleanViewModel homeSettingsCleanViewModel, String str, int i) {
        return homeSettingsCleanViewModel.y0(str, i);
    }

    public static final void g0(HomeSettingsCleanViewModel homeSettingsCleanViewModel, String str, int i) {
        homeSettingsCleanViewModel.A0(str, i);
    }

    public static final void h0(HomeSettingsCleanViewModel homeSettingsCleanViewModel, List list) {
        homeSettingsCleanViewModel.C0(list);
    }

    public static final Object i0(HomeSettingsCleanViewModel homeSettingsCleanViewModel, List list, Continuation continuation) {
        return homeSettingsCleanViewModel.K0(list, continuation);
    }

    public static final Object j0(HomeSettingsCleanViewModel homeSettingsCleanViewModel, List list, Continuation continuation) {
        return homeSettingsCleanViewModel.O0(list, continuation);
    }

    public static final Object k0(HomeSettingsCleanViewModel homeSettingsCleanViewModel, List list, Continuation continuation) {
        return homeSettingsCleanViewModel.Q0(list, continuation);
    }

    public static final Object l0(HomeSettingsCleanViewModel homeSettingsCleanViewModel, long j, Continuation continuation) {
        return homeSettingsCleanViewModel.S0(j, continuation);
    }

    public static final e15 s(HomeSettingsCleanViewModel homeSettingsCleanViewModel) {
        return homeSettingsCleanViewModel.f;
    }

    public static final pq2 t(HomeSettingsCleanViewModel homeSettingsCleanViewModel) {
        return homeSettingsCleanViewModel.e;
    }

    public final void A0(String str, int i) {
        wd0.d(ox8.a(this), dp1.c(), null, new HomeSettingsCleanViewModel$reportExposureEventIfNotReportedOrChanged$$inlined$mainThreadLaunch$1(null, this, i, str), 2, null);
    }

    public final void B0() {
        h59.g(false);
    }

    public final void C0(List list) {
        ArrayList<a97> arrayList = new ArrayList();
        for (Object obj : list) {
            if (((a97) obj).e() == 4) {
                arrayList.add(obj);
            }
        }
        for (a97 a97Var : arrayList) {
            a97Var.g(3);
            a97Var.h(a97Var.c());
        }
        Iterator it2 = list.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            a97 a97Var2 = (a97) it2.next();
            if (!z && a97Var2.e() == 3) {
                a97Var2.g(4);
                if (a97Var2.a().length() > 0) {
                    a97Var2.h(a97Var2.a());
                }
                z = true;
            }
        }
    }

    public final void D0() {
        wd0.d(ox8.a(this), dp1.a(), null, new HomeSettingsCleanViewModel$subscribeAppCountInfo$$inlined$backgroundLaunch$1(null, this), 2, null);
    }

    public final void E0() {
        wd0.d(ox8.a(this), dp1.a(), null, new HomeSettingsCleanViewModel$subscribeJunkInfo$$inlined$backgroundLaunch$1(null, this), 2, null);
    }

    public final void G0() {
        wd0.d(ox8.a(this), dp1.a(), null, new HomeSettingsCleanViewModel$subscribeSpecialInfo$$inlined$backgroundLaunch$1(null, this), 2, null);
    }

    public final void H0() {
        if (bq0.a.g() < 0) {
            bq0.a.n(System.currentTimeMillis());
        } else if (bq0.a.l()) {
            m0();
            o0();
            p0();
            r0();
            q0();
            M0();
            L0();
            bq0.a.n(-1L);
        }
        I0();
    }

    public final void I0() {
        if (!bq0.L()) {
            M0();
        }
        if (bq0.J()) {
            return;
        }
        L0();
    }

    public final void J0() {
        CleanJunkStatusManager cleanJunkStatusManager = CleanJunkStatusManager.a;
        PhoenixApplication phoenixApplicationC = PhoenixApplication.C();
        or3.e(phoenixApplicationC, "getInstance(...)");
        cleanJunkStatusManager.z(phoenixApplicationC, true, "settings_home");
    }

    public final Object K0(List list, Continuation continuation) {
        if (!AppUtil.R() || list.isEmpty()) {
            Object objEmit = this.j.emit(new a97(6, "clean_app_uninstaller", "", w0(HomeSettingsCleanViewModel$updateAppCount$2.INSTANCE), null, null, 48, null), continuation);
            return objEmit == pr3.f() ? objEmit : mg8.a;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (System.currentTimeMillis() - ((AppInfo) obj).getLastUsedTime() > TimeUnit.DAYS.toMillis(bq0.a.j())) {
                arrayList.add(obj);
            }
        }
        d15 d15Var = this.j;
        Iterator it2 = list.iterator();
        long size = 0;
        while (it2.hasNext()) {
            size += ((AppInfo) it2.next()).getSize();
        }
        String strR = om.r(size, 2);
        or3.e(strR, "getFormatSizeWithUnitScaleAboveMB(...)");
        Object objEmit2 = d15Var.emit(new a97(6, "clean_app_uninstaller", strR, w0(new HomeSettingsCleanViewModel$updateAppCount$4(arrayList)), null, null, 48, null), continuation);
        return objEmit2 == pr3.f() ? objEmit2 : mg8.a;
    }

    public final void L0() {
        wd0.d(ox8.a(this), dp1.a(), null, new HomeSettingsCleanViewModel$updateBatteryInfo$$inlined$backgroundLaunch$1(null, this), 2, null);
    }

    public final void M0() {
        wd0.d(ox8.a(this), dp1.a(), null, new HomeSettingsCleanViewModel$updateBoostInfo$$inlined$backgroundLaunch$1(null, this), 2, null);
    }

    public final Object N0(Continuation continuation) {
        Object objA = tq2.Q(new HomeSettingsCleanViewModel$updateInfo$$inlined$combine$1(new pq2[]{this.g, this.h, this.i, this.j, this.k, this.l, this.m}, this), 150L).a(new f(), continuation);
        return objA == pr3.f() ? objA : mg8.a;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ca A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:47:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object O0(List list, Continuation continuation) throws Throwable {
        HomeSettingsCleanViewModel$updateJunkInfo$1 homeSettingsCleanViewModel$updateJunkInfo$1;
        long junkSize;
        HomeSettingsCleanViewModel homeSettingsCleanViewModel;
        long j;
        if (continuation instanceof HomeSettingsCleanViewModel$updateJunkInfo$1) {
            homeSettingsCleanViewModel$updateJunkInfo$1 = (HomeSettingsCleanViewModel$updateJunkInfo$1) continuation;
            int i = homeSettingsCleanViewModel$updateJunkInfo$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                homeSettingsCleanViewModel$updateJunkInfo$1.label = i - Integer.MIN_VALUE;
            } else {
                homeSettingsCleanViewModel$updateJunkInfo$1 = new HomeSettingsCleanViewModel$updateJunkInfo$1(this, continuation);
            }
        } else {
            homeSettingsCleanViewModel$updateJunkInfo$1 = new HomeSettingsCleanViewModel$updateJunkInfo$1(this, continuation);
        }
        Object obj = homeSettingsCleanViewModel$updateJunkInfo$1.result;
        Object objF = pr3.f();
        int i2 = homeSettingsCleanViewModel$updateJunkInfo$1.label;
        if (i2 != 0) {
            if (i2 == 1) {
                j = homeSettingsCleanViewModel$updateJunkInfo$1.J$0;
                homeSettingsCleanViewModel = (HomeSettingsCleanViewModel) homeSettingsCleanViewModel$updateJunkInfo$1.L$0;
                kotlin.c.b(obj);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
            }
            return mg8.a;
        }
        kotlin.c.b(obj);
        if (CleanJunkStatusManager.a.r()) {
            return mg8.a;
        }
        Iterator it2 = list.iterator();
        junkSize = 0;
        long junkSize2 = 0;
        while (it2.hasNext()) {
            JunkSizeInfo junkSizeInfo = (JunkSizeInfo) it2.next();
            if (jc1.u(junkSizeInfo.getPath(), junkSizeInfo.getJunkType())) {
                if (jc1.x(junkSizeInfo.getJunkType())) {
                    junkSize2 += junkSizeInfo.getJunkSize();
                }
                if (jc1.w(junkSizeInfo.getJunkType())) {
                    junkSize += junkSizeInfo.getJunkSize();
                }
            }
        }
        if (junkSize2 != this.p.get()) {
            this.p.set(junkSize2);
            homeSettingsCleanViewModel$updateJunkInfo$1.L$0 = this;
            homeSettingsCleanViewModel$updateJunkInfo$1.J$0 = junkSize;
            homeSettingsCleanViewModel$updateJunkInfo$1.label = 1;
            if (R0(junkSize2, homeSettingsCleanViewModel$updateJunkInfo$1) == objF) {
                return objF;
            }
            homeSettingsCleanViewModel = this;
            j = junkSize;
        } else {
            homeSettingsCleanViewModel = this;
        }
        if (junkSize != homeSettingsCleanViewModel.q.get()) {
            return mg8.a;
        }
        homeSettingsCleanViewModel.q.set(junkSize);
        homeSettingsCleanViewModel$updateJunkInfo$1.L$0 = null;
        homeSettingsCleanViewModel$updateJunkInfo$1.label = 2;
        if (homeSettingsCleanViewModel.P0(junkSize, homeSettingsCleanViewModel$updateJunkInfo$1) == objF) {
            return objF;
        }
        return mg8.a;
        junkSize = j;
        if (junkSize != homeSettingsCleanViewModel.q.get()) {
            return mg8.a;
        }
        homeSettingsCleanViewModel.q.set(junkSize);
        homeSettingsCleanViewModel$updateJunkInfo$1.L$0 = null;
        homeSettingsCleanViewModel$updateJunkInfo$1.label = 2;
        if (homeSettingsCleanViewModel.P0(junkSize, homeSettingsCleanViewModel$updateJunkInfo$1) == objF) {
            return objF;
        }
        return mg8.a;
    }

    public final Object P0(long j, Continuation continuation) {
        d15 d15Var = this.k;
        String strR = om.r(j, 2);
        or3.e(strR, "getFormatSizeWithUnitScaleAboveMB(...)");
        Object objEmit = d15Var.emit(new a97(4, "clean_large_files", strR, w0(new HomeSettingsCleanViewModel$updateLargeFileSizeInfo$2(j)), null, null, 48, null), continuation);
        return objEmit == pr3.f() ? objEmit : mg8.a;
    }

    public final Object Q0(List list, Continuation continuation) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            PhotoSizeInfo photoSizeInfo = (PhotoSizeInfo) obj;
            if (photoSizeInfo.getPhotoType() != GarbageType.TYPE_PHOTO && photoSizeInfo.canShowInHome()) {
                arrayList.add(obj);
            }
        }
        Object objEmit = this.l.emit(new a97(7, "photo_clean", js.a(R.plurals.photos, arrayList.size(), wc0.c(arrayList.size())), w0(new HomeSettingsCleanViewModel$updatePhotoInfo$2(arrayList)), null, null, 48, null), continuation);
        return objEmit == pr3.f() ? objEmit : mg8.a;
    }

    public final Object R0(long j, Continuation continuation) {
        wd0.d(ox8.a(this), dp1.c(), null, new HomeSettingsCleanViewModel$updateScanJunkInfo$$inlined$mainThreadLaunch$1(null, j), 2, null);
        d15 d15Var = this.g;
        String strR = om.r(j, 2);
        or3.e(strR, "getFormatSizeWithUnitScaleAboveMB(...)");
        Object objEmit = d15Var.emit(new a97(1, "clean_junk", strR, w0(new HomeSettingsCleanViewModel$updateScanJunkInfo$3(j)), null, null, 48, null), continuation);
        return objEmit == pr3.f() ? objEmit : mg8.a;
    }

    public final Object S0(long j, Continuation continuation) {
        d15 d15Var = this.m;
        String strR = om.r(j, 2);
        or3.e(strR, "getFormatSizeWithUnitScaleAboveMB(...)");
        Object objEmit = d15Var.emit(new a97(5, "clean_whatsapp", strR, w0(new HomeSettingsCleanViewModel$updateWASizeInfo$2(j)), null, null, 48, null), continuation);
        return objEmit == pr3.f() ? objEmit : mg8.a;
    }

    public final void m0() {
        wd0.d(ox8.a(this), dp1.a(), null, new HomeSettingsCleanViewModel$clearHighLight$$inlined$backgroundLaunch$1(null, this), 2, null);
    }

    public final void n0() {
        wd0.d(ox8.a(this), dp1.a(), null, new HomeSettingsCleanViewModel$combineInfo$$inlined$backgroundLaunch$1(null, this), 2, null);
    }

    public final void o0() {
        wd0.d(ox8.a(this), dp1.a(), null, new HomeSettingsCleanViewModel$forceUpdateAppInfo$$inlined$backgroundLaunch$1(null, this), 2, null);
    }

    public final void p0() {
        wd0.d(ox8.a(this), dp1.a(), null, new HomeSettingsCleanViewModel$forceUpdateJunkInfo$$inlined$backgroundLaunch$1(null, this), 2, null);
    }

    public final void q0() {
        wd0.d(ox8.a(this), dp1.a(), null, new HomeSettingsCleanViewModel$forceUpdatePhotoInfo$$inlined$backgroundLaunch$1(null, this), 2, null);
    }

    public final void r0() {
        if (cm7.a.c()) {
            wd0.d(ox8.a(this), dp1.a(), null, new HomeSettingsCleanViewModel$forceUpdateWASizeInfo$$inlined$backgroundLaunch$1(null, this), 2, null);
        }
    }

    public final Pair s0(int i) {
        boolean z;
        String str;
        boolean z2 = true;
        if (i == 3) {
            str = "weak";
            z = true;
        } else {
            z = false;
            str = "empty";
        }
        if (i == 4) {
            str = "strong";
        } else {
            z2 = z;
        }
        return kd8.a(Boolean.valueOf(z2), str);
    }

    public final String t0(String str) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        or3.e(lowerCase, "toLowerCase(...)");
        if (lowerCase.length() <= 0) {
            return lowerCase;
        }
        StringBuilder sb = new StringBuilder();
        char cCharAt = lowerCase.charAt(0);
        sb.append((Object) (Character.isLowerCase(cCharAt) ? gl0.e(cCharAt) : String.valueOf(cCharAt)));
        String strSubstring = lowerCase.substring(1);
        or3.e(strSubstring, "substring(...)");
        sb.append(strSubstring);
        return sb.toString();
    }

    public final d15 u0() {
        return this.f457o;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:31:0x0058 A[RETURN, SYNTHETIC] */
    public final String v0(String str) {
        switch (str) {
            case "clean_app_uninstaller":
                return "click_setting_manager";
            case "clean_junk":
                return "click_setting_cleaner";
            case "clean_whatsapp":
                return "click_setting_whatsapp_cleaner";
            case "clean_boost":
                return "click_setting_boost";
            case "clean_battery_saver":
                return "click_setting_battery_saver";
            case "photo_clean":
                return "click_settings_photos_clean";
            case "clean_large_files":
                return "click_setting_large_files_clean";
            default:
                return "";
        }
    }

    public final int w0(bx2 bx2Var) {
        return !((Boolean) bx2Var.invoke()).booleanValue() ? 1 : 3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:31:0x0058 A[RETURN, SYNTHETIC] */
    public final String x0(String str) {
        switch (str) {
            case "clean_app_uninstaller":
                return "app_manager_guide_badage_exposure";
            case "clean_junk":
                return "clean_guide_badage_exposure";
            case "clean_whatsapp":
                return "whatsapp_cleaner_guide_badage_exposure";
            case "clean_boost":
                return "boost_guide_badage_exposure";
            case "clean_battery_saver":
                return "battery_saver_guide_badage_exposure";
            case "photo_clean":
                return "photo_clean_guide_badage_exposure";
            case "clean_large_files":
                return "large_files_clean_guide_badage_exposure";
            default:
                return "";
        }
    }

    public final boolean y0(String str, int i) {
        Integer num = (Integer) this.n.get(str);
        return num == null || num.intValue() != i;
    }

    public final void z0(String str) {
        or3.f(str, "key");
        wd0.d(ox8.a(this), dp1.a(), null, new HomeSettingsCleanViewModel$onCleanTrackEvent$$inlined$backgroundLaunch$1(null, this, str), 2, null);
    }
}
