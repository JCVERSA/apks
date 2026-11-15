package com.transsion.push.notification;

import android.app.Application;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.util.g0;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.transsion.lib.push.R$drawable;
import com.transsion.lib.push.R$id;
import com.transsion.lib.push.R$layout;
import com.transsion.lib.push.R$mipmap;
import com.transsion.lib.push.R$string;
import com.transsion.push.bean.MsgStyle;
import com.transsion.push.bean.MsgType;
import com.transsion.push.bean.ToolbarNoticeConfig;
import com.transsion.push.bean.ToolbarNoticeItem;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

public final class ToolbarNotificationUtils {

    public static final ToolbarNotificationUtils f48776a = new ToolbarNotificationUtils();

    private static final int f48777b = 790343710;

    private static final Map f48778c = new LinkedHashMap();

    private static final NotificationManager f48779d;

    private static ToolbarNoticeConfig f48780e;

    private static boolean f48781f;

    public class a {

        public static final int[] f48782a;

        static {
            int[] iArr = new int[NoticeIntentType.values().length];
            try {
                iArr[NoticeIntentType.SEARCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NoticeIntentType.TOP_10.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NoticeIntentType.SETTING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[NoticeIntentType.CONTENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f48782a = iArr;
        }
    }

    static {
        Object systemService = Utils.a().getSystemService("notification");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        NotificationManager notificationManager = (NotificationManager) systemService;
        f48779d = notificationManager;
        if (Build.VERSION.SDK_INT >= 26) {
            g0.a();
            notificationManager.createNotificationChannel(m.f.a("mbx_tool_notice", Utils.a().getString(R$string.tool_notice_name), 2));
        }
    }

    private ToolbarNotificationUtils() {
    }

    private final void A() {
        qi.h.f69682a.z("toolbar_notice", new LinkedHashMap());
    }

    private final void B(RemoteViews remoteViews, Pair pair) {
        if (((ToolbarNoticeItem) pair.getFirst()).getIsDefault()) {
            wf.a.C0922a.f(wf.a.f74274a, "ToolbarNo", "setButtonText 默认本地文案", false, 4, null);
            remoteViews.setTextViewText(R$id.notice_tv_left, Utils.a().getString(R$string.tool_notice_top_10));
            remoteViews.setTextViewText(R$id.notice_tv_right, Utils.a().getString(R$string.tool_notice_search));
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "ToolbarNo", "setButtonText 配置文案", false, 4, null);
        String text = ((ToolbarNoticeItem) pair.getFirst()).getText();
        if (text != null) {
            remoteViews.setTextViewText(R$id.notice_tv_left, text);
        }
        String text2 = ((ToolbarNoticeItem) pair.getSecond()).getText();
        if (text2 != null) {
            remoteViews.setTextViewText(R$id.notice_tv_right, text2);
        }
    }

    private final void C(RemoteViews remoteViews, Pair pair) {
        int i10 = R$id.notice_ll_left;
        String deeplink = ((ToolbarNoticeItem) pair.getFirst()).getDeeplink();
        if (deeplink == null) {
            deeplink = k(NoticeIntentType.TOP_10);
        }
        remoteViews.setOnClickPendingIntent(i10, m(deeplink, TtmlNode.LEFT));
        int i11 = R$id.notice_ll_right;
        String deeplink2 = ((ToolbarNoticeItem) pair.getSecond()).getDeeplink();
        if (deeplink2 == null) {
            deeplink2 = k(NoticeIntentType.SEARCH);
        }
        remoteViews.setOnClickPendingIntent(i11, m(deeplink2, TtmlNode.RIGHT));
        remoteViews.setOnClickPendingIntent(R$id.notice_v_setting, m(k(NoticeIntentType.SETTING), "setting"));
    }

    private final void D(RemoteViews remoteViews, Pair pair) {
        if (pair == null) {
            wf.a.C0922a.f(wf.a.f74274a, "ToolbarNo", "setIconCover 默认本地图", false, 4, null);
            remoteViews.setImageViewResource(R$id.notice_iv_left, R$mipmap.ic_notification_top_10);
            remoteViews.setImageViewResource(R$id.notice_iv_right, R$mipmap.ic_notification_search);
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "ToolbarNo", "setIconCover 配置图", false, 4, null);
        Bitmap bitmap = (Bitmap) pair.getFirst();
        if (bitmap != null) {
            remoteViews.setImageViewBitmap(R$id.notice_iv_left, bitmap);
        }
        Bitmap bitmap2 = (Bitmap) pair.getSecond();
        if (bitmap2 != null) {
            remoteViews.setImageViewBitmap(R$id.notice_iv_right, bitmap2);
        }
    }

    private final void E() {
        final Pair pairO = o();
        if (!r()) {
            wf.a.C0922a.f(wf.a.f74274a, "ToolbarNo", "showNotice, 配置数据，加载图片", false, 4, null);
            u(pairO, new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return ToolbarNotificationUtils.F(pairO, (Bitmap) obj, (Bitmap) obj2);
                }
            });
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "ToolbarNo", "showNotice, 本地默认数据", false, 4, null);
        try {
            Result.Companion companion = Result.INSTANCE;
            f48779d.notify(f48777b, q(pairO, null).c());
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        A();
    }

    public static final Unit F(Pair pair, Bitmap bitmap, Bitmap bitmap2) {
        wf.a.C0922a.f(wf.a.f74274a, "ToolbarNo", "showNotice, 加载图片成功， " + (bitmap != null) + ",  " + (bitmap2 != null), false, 4, null);
        ToolbarNotificationUtils toolbarNotificationUtils = f48776a;
        try {
            Result.Companion companion = Result.INSTANCE;
            f48779d.notify(f48777b, toolbarNotificationUtils.q(pair, new Pair(bitmap, bitmap2)).c());
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        f48776a.A();
        return Unit.f64096a;
    }

    private final void h(RemoteViews remoteViews, boolean z10) {
        int color = Utils.a().getResources().getColor(z10 ? R$color.white : R$color.gray_light_70);
        remoteViews.setTextColor(R$id.notice_tv_left, color);
        remoteViews.setTextColor(R$id.notice_tv_right, color);
        int i10 = z10 ? R$drawable.shape_toolbar_btn_bg_dark : R$drawable.shape_toolbar_btn_bg_light;
        remoteViews.setInt(R$id.notice_ll_left, "setBackgroundResource", i10);
        remoteViews.setInt(R$id.notice_ll_right, "setBackgroundResource", i10);
        remoteViews.setInt(R$id.notice_iv_left, "setColorFilter", color);
        remoteViews.setInt(R$id.notice_iv_right, "setColorFilter", color);
    }

    private final boolean j(long j10, int i10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j10);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.add(5, i10);
        long timeInMillis = calendar.getTimeInMillis();
        wf.a.f74274a.c("ToolbarNo", "isNeedShowNotice, currentTimeMillis:" + jCurrentTimeMillis + ", daysAgo:" + timeInMillis, true);
        return jCurrentTimeMillis > timeInMillis;
    }

    private final int l() {
        if (Build.VERSION.SDK_INT >= 31) {
            return 67108864;
        }
        return ASTNode.NOJIT;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x005f  */
    private final PendingIntent m(String str, String str2) {
        Intent intentA;
        to.a aVar = (to.a) TheRouter.d(to.a.class, new Object[0]);
        if (aVar != null) {
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            intentA = aVar.a(applicationA);
            if (intentA != null) {
                int i10 = f48777b;
                intentA.putExtra("extra_notification_id", String.valueOf(i10));
                intentA.putExtra("extra_source", MsgStyle.SOURCE_PUSH);
                intentA.putExtra("MESSAGE_TYPE", MsgType.TOP10_PUSH.getType());
                intentA.putExtra("extra_message_id", String.valueOf(i10));
                intentA.putExtra("extra_toolbar_notice_name", str2);
                intentA.addFlags(603979776);
                intentA.setData(Uri.parse(str));
                if (Build.VERSION.SDK_INT >= 24) {
                    intentA.addFlags(ASTNode.DEOP);
                }
            } else {
                intentA = null;
            }
        } else {
            intentA = null;
        }
        PendingIntent activity = PendingIntent.getActivity(Utils.a(), 0, intentA, l());
        Intrinsics.g(activity, "getActivity(...)");
        return activity;
    }

    private final int n() {
        return Build.VERSION.SDK_INT < 31 ? R$layout.layout_ongoing_notification : R$layout.layout_ongoing_notification_expend_s;
    }

    private final Pair o() {
        if (r()) {
            ToolbarNoticeItem toolbarNoticeItem = new ToolbarNoticeItem(null, null, k(NoticeIntentType.TOP_10), 3, null);
            toolbarNoticeItem.setDefault(true);
            ToolbarNoticeItem toolbarNoticeItem2 = new ToolbarNoticeItem(null, null, k(NoticeIntentType.SEARCH), 3, null);
            toolbarNoticeItem2.setDefault(true);
            return new Pair(toolbarNoticeItem, toolbarNoticeItem2);
        }
        ToolbarNoticeConfig toolbarNoticeConfig = f48780e;
        Intrinsics.e(toolbarNoticeConfig);
        List<ToolbarNoticeItem> list = toolbarNoticeConfig.getList();
        Intrinsics.e(list);
        ToolbarNoticeItem toolbarNoticeItem3 = list.get(0);
        ToolbarNoticeConfig toolbarNoticeConfig2 = f48780e;
        Intrinsics.e(toolbarNoticeConfig2);
        List<ToolbarNoticeItem> list2 = toolbarNoticeConfig2.getList();
        Intrinsics.e(list2);
        return new Pair(toolbarNoticeItem3, list2.get(1));
    }

    private final int p() {
        return Build.VERSION.SDK_INT < 31 ? R$layout.layout_ongoing_notification : R$layout.layout_ongoing_notification_s;
    }

    private final NotificationCompat.m q(Pair pair, Pair pair2) {
        boolean z10 = (Utils.a().getResources().getConfiguration().uiMode & 48) == 32;
        RemoteViews remoteViews = new RemoteViews(Utils.a().getPackageName(), p());
        ToolbarNotificationUtils toolbarNotificationUtils = f48776a;
        toolbarNotificationUtils.C(remoteViews, pair);
        toolbarNotificationUtils.D(remoteViews, pair2);
        toolbarNotificationUtils.B(remoteViews, pair);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 31) {
            toolbarNotificationUtils.h(remoteViews, z10);
        }
        RemoteViews remoteViews2 = new RemoteViews(Utils.a().getPackageName(), n());
        toolbarNotificationUtils.C(remoteViews2, pair);
        toolbarNotificationUtils.D(remoteViews2, pair2);
        toolbarNotificationUtils.B(remoteViews2, pair);
        if (i10 >= 31) {
            toolbarNotificationUtils.h(remoteViews2, z10);
        }
        NotificationCompat.m mVarS = new NotificationCompat.m(Utils.a(), "mbx_tool_notice").J(R$drawable.push_small_logo).t(remoteViews).p(m(k(NoticeIntentType.CONTENT), "content")).E(true).l(false).F(true).s(remoteViews2);
        Intrinsics.g(mVarS, "setCustomBigContentView(...)");
        return mVarS;
    }

    private final boolean r() {
        List<ToolbarNoticeItem> list;
        ToolbarNoticeConfig toolbarNoticeConfig = f48780e;
        if (toolbarNoticeConfig != null) {
            if (((toolbarNoticeConfig == null || (list = toolbarNoticeConfig.getList()) == null) ? 0 : list.size()) >= 2) {
                return false;
            }
        }
        return true;
    }

    public final boolean s(int i10) {
        Long lX;
        if (!com.transsion.baselib.report.k.f42210a.q()) {
            wf.a.C0922a.f(wf.a.f74274a, "ToolbarNo", "isNeedShowNotice,当前在前台，无需处理", false, 4, null);
            return false;
        }
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        if (!bVar.b().getBoolean("k_is_show_ongoing_tool_notice", true)) {
            wf.a.C0922a.f(wf.a.f74274a, "ToolbarNo", "isNeedShowNotice,设置页已主动关闭", false, 4, null);
            return false;
        }
        String string = bVar.b().getString("k_last_open_time", "");
        long jLongValue = (string == null || (lX = StringsKt.x(string)) == null) ? 0L : lX.longValue();
        if (jLongValue > 0) {
            if (j(jLongValue, i10)) {
                wf.a.f74274a.c("ToolbarNo", "isNeedShowNotice, true currentDayKey:" + System.currentTimeMillis() + ", appOpenTime:" + jLongValue + ", " + i10 + " ", true);
                return true;
            }
            wf.a.f74274a.c("ToolbarNo", "isNeedShowNotice, false currentDayKey:" + System.currentTimeMillis() + ", appOpenTime:" + jLongValue + ", " + i10 + " ", true);
        }
        return false;
    }

    public final Object t(String str, Continuation continuation) {
        return TimeoutKt.c(5000L, new ToolbarNotificationUtils$loadImageAsBitmap$2(str, a0.a(20.0f), null), continuation);
    }

    private final void u(Pair pair, Function2 function2) {
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new ToolbarNotificationUtils$loadImages$1(function2, pair, null), 3, null);
    }

    public final void w(ToolbarNoticeConfig toolbarNoticeConfig) {
        List<ToolbarNoticeItem> list;
        if (toolbarNoticeConfig == null || (list = toolbarNoticeConfig.getList()) == null || list.isEmpty() || toolbarNoticeConfig.getList().size() < 2) {
            return;
        }
        int iA = a0.a(20.0f);
        Iterator<T> it = toolbarNoticeConfig.getList().iterator();
        while (it.hasNext()) {
            String cover = ((ToolbarNoticeItem) it.next()).getCover();
            if (cover != null) {
                Map map = f48778c;
                if (!map.containsKey(cover)) {
                    wf.a.C0922a.f(wf.a.f74274a, "ToolbarNo", "preloadImage, url :" + cover, false, 4, null);
                    map.put(cover, "");
                    ni.f.a aVar = ni.f.f67269a;
                    aVar.i(ni.f.a.e(aVar, cover, iA, false, true, 4, null), cover, iA, new Function1() {
                        @Override
                        public final Object invoke(Object obj) {
                            return ToolbarNotificationUtils.x(((Boolean) obj).booleanValue());
                        }
                    });
                }
            }
        }
    }

    public static final Unit x(boolean z10) {
        wf.a.C0922a.v(wf.a.f74274a, "ToolbarNo", "preloadImage, result:" + z10, false, 4, null);
        return Unit.f64096a;
    }

    private final void z(String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("name", str);
        qi.h.f69682a.o("toolbar_notice", linkedHashMap);
    }

    public final void G() {
        Object objM453constructorimpl;
        cf.c cVar = cf.c.f16930a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        if (!cVar.b(applicationA)) {
            wf.a.C0922a.f(wf.a.f74274a, "ToolbarNo", "showToolbarNotification 没有通知权限", false, 4, null);
            return;
        }
        if (!f48781f) {
            wf.a.C0922a.f(wf.a.f74274a, "ToolbarNo", "showToolbarNotification，当前不需要展示通知", false, 4, null);
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            f48779d.cancel(f48777b);
            f48776a.E();
            wf.a.C0922a.f(wf.a.f74274a, "ToolbarNo", "showToolbarNotification", false, 4, null);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.l(wf.a.f74274a, "ToolbarNo", "showToolbarNotification error:" + thM456exceptionOrNullimpl, false, 4, null);
        }
    }

    public final void i() {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new ToolbarNotificationUtils$checkNotice$1(null), 3, null);
    }

    public final String k(NoticeIntentType type) {
        Intrinsics.h(type, "type");
        int i10 = a.f48782a[type.ordinal()];
        if (i10 == 1) {
            return "oneroom://com.community.oneroom?type=/search/activity/search_manager&channel=os_search&type=3";
        }
        if (i10 == 2) {
            return "oneroom://com.community.oneroom?type=/rank/all";
        }
        if (i10 == 3) {
            return "oneroom://com.community.oneroom?type=/profile/setting_notice";
        }
        if (i10 == 4) {
            return "oneroom://com.community.oneroom?type=/main/tab";
        }
        throw new NoWhenBranchMatchedException();
    }

    public final void v(Intent intent) {
        String stringExtra;
        String stringExtra2;
        if (intent == null || (stringExtra = intent.getStringExtra("extra_notification_id")) == null || !Intrinsics.c(stringExtra, String.valueOf(f48777b)) || (stringExtra2 = intent.getStringExtra("extra_toolbar_notice_name")) == null) {
            return;
        }
        z(stringExtra2);
    }

    public final void y() {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            f48779d.cancel(f48777b);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.f(wf.a.f74274a, "ToolbarNo", "removeOngoingToolNotification error:" + thM456exceptionOrNullimpl, false, 4, null);
        }
    }
}
