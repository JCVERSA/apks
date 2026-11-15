package hm;

import android.os.Handler;
import android.os.Looper;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.tencent.mmkv.MMKV;
import com.therouter.TheRouter;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.member.constants.TaskType;
import com.transsion.member.w;
import com.transsion.memberapi.MemberTaskGroup;
import com.transsion.memberapi.MemberTaskInfo;
import com.transsion.memberapi.MemberTaskItem;
import com.transsnet.downloader.manager.p;
import com.transsnet.loginapi.bean.UserInfo;
import ij.a0;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ui.m0;

public final class k {

    public static final k f61387a;

    private static final qx.a f61388b;

    private static final List f61389c;

    private static long f61390d;

    private static long f61391e;

    private static long f61392f;

    private static long f61393g;

    private static final List f61394h;

    private static final kk.a f61395i;

    private static boolean f61396j;

    private static MemberTaskItem f61397k;

    private static long f61398l;

    private static final b f61399m;

    private static final c f61400n;

    private static final Handler f61401o;

    private static final Runnable f61402p;

    public static final int f61403q;

    public static final class a implements com.transsion.baselib.report.k.a {

        final MemberTaskItem f61404a;

        a(MemberTaskItem memberTaskItem) {
            this.f61404a = memberTaskItem;
        }

        @Override
        public void onBackgroundStatusChange(boolean z10) {
            if (z10) {
                return;
            }
            hm.c cVar = new hm.c();
            Integer rewardAmount = this.f61404a.getRewardAmount();
            cVar.g(rewardAmount != null ? rewardAmount.intValue() : 0);
            com.transsion.baselib.report.k.f42210a.t(this);
        }
    }

    public static final class b implements m0 {
        b() {
        }

        @Override
        public void a(DownloadBean bean, DownloadException downloadException) {
            Intrinsics.h(bean, "bean");
        }

        @Override
        public void b(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
        }

        @Override
        public void c(DownloadBean bean, long j10, long j11) {
            Intrinsics.h(bean, "bean");
        }

        @Override
        public void d(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
        }

        @Override
        public void e(DownloadBean bean, String str) {
            Intrinsics.h(bean, "bean");
            wf.a.C0922a.f(wf.a.f74274a, "TaskManager", "download success " + bean, false, 4, null);
            k kVar = k.f61387a;
            kVar.m();
            kVar.c0(bean.getSubjectType());
        }

        @Override
        public void f(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
        }

        @Override
        public void g(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
        }
    }

    public static final class c implements qx.b {
        c() {
        }

        @Override
        public void onLogin(UserInfo user) {
            Intrinsics.h(user, "user");
            k kVar = k.f61387a;
            kVar.x();
            kVar.K();
            kVar.y();
        }

        @Override
        public void onLogout() {
            k kVar = k.f61387a;
            kVar.x();
            kVar.K();
            kVar.y();
        }

        @Override
        public void onUpdateUserInfo(UserInfo userInfo) {
            qx.b.a.c(this, userInfo);
        }
    }

    static {
        k kVar = new k();
        f61387a = kVar;
        f61388b = (qx.a) TheRouter.d(qx.a.class, new Object[0]);
        f61389c = new ArrayList();
        f61394h = new ArrayList();
        f61395i = (kk.a) TheRouter.d(kk.a.class, new Object[0]);
        kVar.K();
        f61399m = new b();
        f61400n = new c();
        f61401o = new Handler(Looper.getMainLooper());
        f61402p = new Runnable() {
            @Override
            public final void run() {
                k.A();
            }
        };
        f61403q = 8;
    }

    private k() {
    }

    public static final void A() {
        f61387a.z();
    }

    private final boolean B(String str, boolean z10) {
        UserInfo userInfoI;
        MMKV mmkvB = w.f45184a.b();
        qx.a aVar = f61388b;
        return mmkvB.getBoolean(str + "_" + ((aVar == null || (userInfoI = aVar.i()) == null) ? null : userInfoI.getUserId()), z10);
    }

    private final int E(String str, int i10) {
        UserInfo userInfoI;
        MMKV mmkvB = w.f45184a.b();
        qx.a aVar = f61388b;
        return mmkvB.getInt(str + "_" + ((aVar == null || (userInfoI = aVar.i()) == null) ? null : userInfoI.getUserId()), i10);
    }

    private final long F(String str, long j10) {
        UserInfo userInfoI;
        MMKV mmkvB = w.f45184a.b();
        qx.a aVar = f61388b;
        return mmkvB.getLong(str + "_" + ((aVar == null || (userInfoI = aVar.i()) == null) ? null : userInfoI.getUserId()), j10);
    }

    private final long J() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        calendar.set(11, 4);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public final void K() {
        a0.f62095b.a().d(new Runnable() {
            @Override
            public final void run() {
                k.L();
            }
        });
    }

    public static final void L() {
        k kVar = f61387a;
        long J = kVar.J();
        if (kVar.F("kv_watch_remember_time", 0L) > J) {
            f61391e = J;
            long jF = kVar.F("kv_watch_today_time", 0L);
            f61390d = jF;
            f61393g = jF;
            wf.a.C0922a.f(wf.a.f74274a, "TaskManager", "init watch time " + f61390d, false, 4, null);
        }
    }

    private final void M() {
        kk.a aVar = f61395i;
        if (aVar != null) {
            aVar.b(f61396j);
        }
    }

    private final void P(String str, boolean z10) {
        UserInfo userInfoI;
        MMKV mmkvB = w.f45184a.b();
        qx.a aVar = f61388b;
        mmkvB.putBoolean(str + "_" + ((aVar == null || (userInfoI = aVar.i()) == null) ? null : userInfoI.getUserId()), z10);
    }

    private final void Q(String str, int i10) {
        UserInfo userInfoI;
        MMKV mmkvB = w.f45184a.b();
        qx.a aVar = f61388b;
        mmkvB.putInt(str + "_" + ((aVar == null || (userInfoI = aVar.i()) == null) ? null : userInfoI.getUserId()), i10);
    }

    private final void R(String str, long j10) {
        UserInfo userInfoI;
        MMKV mmkvB = w.f45184a.b();
        qx.a aVar = f61388b;
        mmkvB.putLong(str + "_" + ((aVar == null || (userInfoI = aVar.i()) == null) ? null : userInfoI.getUserId()), j10);
    }

    private final void U() {
        a0.f62095b.a().d(new Runnable() {
            @Override
            public final void run() {
                k.V();
            }
        });
    }

    public static final void V() {
        k kVar = f61387a;
        long J = kVar.J();
        long jF = kVar.F("kv_watch_remember_time", 0L);
        if (1 <= jF && jF < J) {
            wf.a.C0922a.f(wf.a.f74274a, "TaskManager", "clear last day time " + f61390d, false, 4, null);
            f61390d = 30000L;
        }
        kVar.s();
        f61391e = J;
        f61393g = f61390d;
        kVar.R("kv_watch_remember_time", System.currentTimeMillis());
        kVar.R("kv_watch_today_time", f61390d);
        wf.a.C0922a.f(wf.a.f74274a, "TaskManager", "save watch time " + f61390d, false, 4, null);
    }

    private final void Z() {
        p.a aVar = p.f57282a;
        com.transsnet.downloader.manager.g gVarA = aVar.a(Utils.a());
        b bVar = f61399m;
        gVarA.k(bVar);
        aVar.a(Utils.a()).g(bVar);
        qx.a aVar2 = f61388b;
        if (aVar2 != null) {
            aVar2.j(f61400n);
        }
        if (aVar2 != null) {
            aVar2.e(f61400n);
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x000f  */
    private final void b0(MemberTaskItem memberTaskItem) {
        boolean z10;
        Integer status = memberTaskItem.getStatus();
        if (status != null) {
            z10 = status.intValue() == 1;
        }
        f61396j = z10;
    }

    public final void c0(int i10) {
        kk.a aVar;
        if (f61396j && (aVar = f61395i) != null) {
            aVar.f(i10);
        }
    }

    public final void m() {
        a0.f62095b.a().d(new Runnable() {
            @Override
            public final void run() {
                k.n();
            }
        });
    }

    public static final void n() {
        k kVar = f61387a;
        long J = kVar.J();
        long jF = kVar.F("kv_watch_download_save_time", 0L);
        int i10 = 0;
        int iE = kVar.E("kv_watch_download_count", 0);
        if (1 > jF || jF >= J) {
            i10 = iE;
        } else {
            wf.a.C0922a.f(wf.a.f74274a, "TaskManager", "clear download count", false, 4, null);
        }
        kVar.q(i10);
        kVar.R("kv_watch_download_save_time", System.currentTimeMillis());
        kVar.Q("kv_watch_download_count", i10 + 1);
        wf.a.C0922a.f(wf.a.f74274a, "TaskManager", "save download count " + f61390d, false, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x009a  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a3  */
    private final void o() {
        MemberTaskItem memberTaskItem;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = f61398l;
        long j11 = jCurrentTimeMillis - j10;
        long j12 = 0;
        if (j10 <= 0 || j11 <= 0) {
            return;
        }
        long J = J();
        long jF = F("kv_game_browse_remember_time", 0L);
        long jF2 = j11 + F("kv_game_browse_today_time", 0L);
        boolean zB = B("kv_game_browse_complete", false);
        if (J > jF) {
            P("kv_game_browse_complete", false);
            zB = false;
        } else {
            j12 = jF2;
        }
        R("kv_game_browse_remember_time", System.currentTimeMillis());
        if (zB || ((memberTaskItem = f61397k) != null && memberTaskItem.isClaimCompleted())) {
            wf.a.C0922a.v(wf.a.f74274a, "TaskManager", "游戏，统计浏览时长任务已经完成", false, 4, null);
            f61401o.removeCallbacksAndMessages(null);
            return;
        }
        MemberTaskItem memberTaskItem2 = f61397k;
        if (memberTaskItem2 != null) {
            long j13 = j12 / ((long) 1000);
            Intrinsics.e(memberTaskItem2);
            Integer durationCondition = memberTaskItem2.getDurationCondition();
            if (j13 >= (durationCondition != null ? durationCondition.intValue() : 300000)) {
                P("kv_game_browse_complete", true);
                wf.a.C0922a.r(wf.a.f74274a, "TaskManager", new String[]{"游戏，统计浏览时长，任务完成"}, false, 4, null);
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    @Override
                    public final void run() {
                        k.p();
                    }
                });
                f61401o.removeCallbacksAndMessages(null);
            } else {
                wf.a.C0922a c0922a = wf.a.f74274a;
                long j14 = j12 / ((long) 1000);
                MemberTaskItem memberTaskItem3 = f61397k;
                wf.a.C0922a.r(c0922a, "TaskManager", new String[]{"游戏，统计浏览时长，任务未完成，curDuration:" + j14 + ", target:" + (memberTaskItem3 != null ? memberTaskItem3.getDurationCondition() : null)}, false, 4, null);
                P("kv_game_browse_complete", false);
            }
        } else {
            wf.a.C0922a c0922a2 = wf.a.f74274a;
            long j15 = j12 / ((long) 1000);
            MemberTaskItem memberTaskItem4 = f61397k;
            if (memberTaskItem4 != null) {
            }
            wf.a.C0922a.r(c0922a2, "TaskManager", new String[]{"游戏，统计浏览时长，任务未完成，curDuration:" + j15 + ", target:" + (memberTaskItem4 != null ? memberTaskItem4.getDurationCondition() : null)}, false, 4, null);
            P("kv_game_browse_complete", false);
        }
        R("kv_game_browse_today_time", j12);
    }

    public static final void p() {
        Integer rewardAmount;
        hm.c cVar = new hm.c();
        MemberTaskItem memberTaskItem = f61397k;
        cVar.g((memberTaskItem == null || (rewardAmount = memberTaskItem.getRewardAmount()) == null) ? 0 : rewardAmount.intValue());
    }

    private final void q(int i10) {
        for (final MemberTaskItem memberTaskItem : f61394h) {
            Integer timesCondition = memberTaskItem.getTimesCondition();
            if (i10 == (timesCondition != null ? timesCondition.intValue() : 0) - 1) {
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    @Override
                    public final void run() {
                        k.r(memberTaskItem);
                    }
                });
            }
        }
    }

    public static final void r(MemberTaskItem memberTaskItem) {
        com.transsion.baselib.report.k kVar = com.transsion.baselib.report.k.f42210a;
        if (kVar.q()) {
            kVar.g(new a(memberTaskItem));
            return;
        }
        hm.c cVar = new hm.c();
        Integer rewardAmount = memberTaskItem.getRewardAmount();
        cVar.g(rewardAmount != null ? rewardAmount.intValue() : 0);
    }

    private final void s() {
        if (f61392f == 0) {
            return;
        }
        for (final MemberTaskItem memberTaskItem : f61389c) {
            Integer durationCondition = memberTaskItem.getDurationCondition();
            long j10 = 1000;
            long jIntValue = durationCondition != null ? durationCondition.intValue() : 0;
            if (f61393g / j10 < jIntValue && f61390d / j10 >= jIntValue) {
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    @Override
                    public final void run() {
                        k.t(memberTaskItem);
                    }
                });
            }
        }
    }

    public static final void t(MemberTaskItem memberTaskItem) {
        hm.c cVar = new hm.c();
        Integer rewardAmount = memberTaskItem.getRewardAmount();
        cVar.g(rewardAmount != null ? rewardAmount.intValue() : 0);
    }

    public final void x() {
        f61390d = 0L;
        f61391e = 0L;
        f61392f = 0L;
        f61393g = 0L;
    }

    public final void y() {
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.f();
        }
    }

    private final void z() {
        o();
        f61398l = System.currentTimeMillis();
        f61401o.postDelayed(f61402p, MBInterstitialActivity.WEB_LOAD_TIME);
    }

    public final int C() {
        int i10 = 0;
        int iE = E("kv_game_download_app_claim", 0);
        if (iE <= 0) {
            return iE;
        }
        long J = J();
        long jF = F("kv_game_download_app_remember_time", 0L);
        if (1 > jF || jF >= J) {
            i10 = iE;
        } else {
            wf.a.C0922a.v(wf.a.f74274a, "TaskManager", "游戏app下载，跨天了，重置状态", false, 4, null);
        }
        R("kv_game_download_app_remember_time", System.currentTimeMillis());
        return i10;
    }

    public final long D() {
        long jCurrentTimeMillis = System.currentTimeMillis() - f61398l;
        long jF = F("kv_game_browse_today_time", 0L);
        if (f61398l <= 0 || jCurrentTimeMillis <= 0) {
            jCurrentTimeMillis = 0;
        }
        return (jCurrentTimeMillis + jF) / 60000;
    }

    public final int G() {
        long jF = F("kv_watch_download_save_time", 0L);
        int iE = E("kv_watch_download_count", 0);
        if (J() <= jF) {
            return iE;
        }
        u();
        return 0;
    }

    public final int H() {
        long jF = F("kv_play_save_game_time", 0L);
        long jF2 = F("kv_play_game_time", 0L);
        if (J() <= jF) {
            return (int) (jF2 / ((long) 1000));
        }
        w();
        return 0;
    }

    public final int I() {
        if (f61391e != J()) {
            return 0;
        }
        return (int) (f61390d / 60000);
    }

    public final void N(long j10) {
        f61390d += j10 - f61392f;
        f61392f = 0L;
        U();
    }

    public final void O(long j10) {
        long j11 = f61392f;
        if (j10 > j11) {
            f61390d += j10 - j11;
        }
        f61392f = j10;
        if (f61390d - f61393g > 60000) {
            U();
        }
    }

    public final void S(MemberTaskInfo memberTaskInfo) {
        List<MemberTaskGroup> arrayList;
        f61389c.clear();
        f61394h.clear();
        if (memberTaskInfo == null || (arrayList = memberTaskInfo.getList()) == null) {
            arrayList = new ArrayList<>();
        }
        Iterator<MemberTaskGroup> it = arrayList.iterator();
        while (it.hasNext()) {
            for (MemberTaskItem memberTaskItem : it.next().getTaskItems()) {
                Integer taskSubType = memberTaskItem.getTaskSubType();
                int value = TaskType.WATCH.getValue();
                if (taskSubType != null && taskSubType.intValue() == value) {
                    f61389c.add(memberTaskItem);
                } else {
                    int value2 = TaskType.DOWNLOAD_MOVIE.getValue();
                    if (taskSubType != null && taskSubType.intValue() == value2) {
                        f61394h.add(memberTaskItem);
                    } else {
                        int value3 = TaskType.GAME_RES_BROWSE.getValue();
                        if (taskSubType != null && taskSubType.intValue() == value3) {
                            f61397k = memberTaskItem;
                        }
                    }
                }
            }
        }
        Z();
    }

    public final void T(List list) {
        f61389c.clear();
        f61394h.clear();
        if (list == null) {
            list = new ArrayList();
        }
        for (MemberTaskItem memberTaskItem : list) {
            Integer taskSubType = memberTaskItem.getTaskSubType();
            int value = TaskType.WATCH.getValue();
            if (taskSubType != null && taskSubType.intValue() == value) {
                f61389c.add(memberTaskItem);
            } else {
                int value2 = TaskType.DOWNLOAD_MOVIE.getValue();
                if (taskSubType != null && taskSubType.intValue() == value2) {
                    f61394h.add(memberTaskItem);
                } else {
                    int value3 = TaskType.PALM_PAY.getValue();
                    if (taskSubType != null && taskSubType.intValue() == value3) {
                        b0(memberTaskItem);
                    } else {
                        int value4 = TaskType.GAME_RES_BROWSE.getValue();
                        if (taskSubType != null && taskSubType.intValue() == value4) {
                            f61397k = memberTaskItem;
                        } else {
                            wf.a.C0922a.f(wf.a.f74274a, "TaskManager", "taskItem: " + memberTaskItem + " that is not support now, please check it.", false, 4, null);
                        }
                    }
                }
            }
        }
        M();
        Z();
    }

    public final void W() {
        wf.a.C0922a.f(wf.a.f74274a, "TaskManager", "游戏下载任务完成", false, 4, null);
        R("kv_game_download_app_remember_time", System.currentTimeMillis());
        Q("kv_game_download_app_claim", 1);
    }

    public final void X(long j10) {
        if (j10 > H()) {
            R("kv_play_save_game_time", System.currentTimeMillis());
            R("kv_play_game_time", j10);
        }
    }

    public final void Y() {
        if (f61397k == null) {
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "TaskManager", "游戏，startGameResDurationTracking", false, 4, null);
        f61398l = System.currentTimeMillis();
        f61401o.post(f61402p);
    }

    public final void a0() {
        if (f61397k == null) {
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "TaskManager", "游戏，stopGameResDurationTracking", false, 4, null);
        o();
        f61401o.removeCallbacksAndMessages(null);
    }

    public final void u() {
        R("kv_watch_download_save_time", System.currentTimeMillis());
        Q("kv_watch_download_count", 0);
    }

    public final void v() {
        R("kv_game_download_app_remember_time", System.currentTimeMillis());
        Q("kv_game_download_app_claim", 0);
    }

    public final void w() {
        R("kv_play_save_game_time", System.currentTimeMillis());
        R("kv_play_game_time", 0L);
    }
}
